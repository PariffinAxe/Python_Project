from flask import Blueprint, Flask, redirect, render_template, request
from models.game import Game
import repositories.game_repo as game_repo

games_blueprint = Blueprint("games", __name__)

#Show Specific Games
@games_blueprint.route("/games/<id>")
def show_game(id):
    game = game_repo.select(id)
    team_1_goals = game_repo.team_1_goals(game)
    team_2_goals = game_repo.team_2_goals(game)
    return render_template("games/show.html", title = "SCORECARD", game = game, team_1_goals = team_1_goals, team_2_goals = team_2_goals)