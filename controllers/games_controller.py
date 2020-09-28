from flask import Blueprint, Flask, redirect, render_template, request
from models.game import Game
import repositories.game_repo as game_repo
import repositories.league_repo as league_repo
import repositories.player_repo as player_repo
import repositories.team_repo as team_repo

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
    # teams = league_repo.teams(league)
    players = league_repo.players(league)
    games = league_repo.unfinished_gemas(league)
    return render_template("games/update-league.html", title = "Update Games", league = league, players = players, games = games, editing = True)


# Start a game
@games_blueprint.route("/edit/leagues/<league_id>/start-game/<game_id>")
def start_game(league_id, game_id):
    game = game_repo.select(game_id)
    game_repo.start_game(game)
    return redirect(f"/edit/games/league/{league_id}")

# end a game
@games_blueprint.route("/edit/leagues/<league_id>/finish-game/<game_id>")
def end_game(league_id, game_id):
    game = game_repo.select(game_id)
    game_repo.end_game(game)
    team1 = team_repo.select(game.team_1.id)
    team2 = team_repo.select(game.team_2.id)

    if game.team_1_score > game.team_2_score:
        team1.wins += 1
        team2.losses += 1
    elif game.team_1_score < game.team_2_score:
        team1.losses += 1
        team2.wins += 1
    else:
        team1.draws += 1
        team2.draws += 1
    
    team1.games_played += 1
    team1.goals_for += game.team_1_score
    team1.goals_against += game.team_2_score
    team1.goal_difference = team1.goals_for - team1.goals_against
    team1.points = 3*team1.wins + team1.draws
    
    team2.games_played += 1
    team2.goals_for += game.team_2_score
    team2.goals_against += game.team_1_score
    team2.goal_difference = team2.goals_for - team2.goals_against
    team2.points = 3*team2.wins + team2.draws
    
    team_repo.play_game(team1, team2)
    
    return redirect(f"/edit/games/league/{league_id}")


# Add a goal
@games_blueprint.route("/edit/leagues/<league_id>/new-goal/<game_id>", methods=['POST'])
def new_goal(league_id, game_id):
    game = game_repo.select(game_id)
    player_id = request.form['player_id']
    player = player_repo.select(player_id)
    if player.team.id == game.team_1.id:
        game.team_1_score += 1
    else:
        game.team_2_score += 1
    player.goals_scored += 1
    game_repo.goal_scored(game)
    player_repo.goal_scored(player)
    if game.started:
        return redirect(f"/edit/games/league/{league_id}")
    else:
        return redirect(f"/edit/leagues/{league_id}/start-game/{game_id}")

