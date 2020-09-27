from flask import Blueprint, Flask, redirect, render_template, redirect
import repositories.player_repo as player_repo

players_blueprint = Blueprint("players", __name__)

#Index
@players_blueprint.route("/players")
def players():
    players = player_repo.select_all()
    return render_template("players/index.html", title = "All players", players = players)
