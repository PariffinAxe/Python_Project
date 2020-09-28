from flask import Blueprint, Flask, redirect, render_template, request
from models.game import Game
import repositories.game_repo as game_repo
import repositories.league_repo as league_repo

games_blueprint = Blueprint("games", __name__)

#Show Specific Games
@games_blueprint.route("/games/<id>")
def show_game(id):
    game = game_repo.select(id)
    team_1_goals = game_repo.team_1_goals(game)
    team_2_goals = game_repo.team_2_goals(game)
    return render_template("games/show.html", title = "SCORECARD", game = game, team_1_goals = team_1_goals, team_2_goals = team_2_goals)


# list leagues you can update
@games_blueprint.route("/edit/games/pick-league")
def show_leagues_to_edit():
    leagues = league_repo.select_all()
    return render_template("games/league-list.html", title = "Update Games", leagues = leagues, editing = True)


# show league games with option to update
@games_blueprint.route("/edit/games/league/<id>")
def edit_league(id):
    league = league_repo.select(id)
    teams = league_repo.teams(league)
    games = league_repo.unfinished_gemas(league)
    return render_template("games/update-league.html", title = "Update Games", league = league, teams = teams, games = games, editing = True)


# Start a game
@games_blueprint.route("/edit/leagues/<league_id>/start-game/<game_id>", methods=["POST"])
def start_game(league_id, game_id):
    game = game_repo.select(game_id)
    game_repo.start_game(game)
    return render_template("index.html")
    # return redirect("/edit/games/league/<league_id>")

