from flask import Blueprint, Flask, redirect, render_template, request
from models.player import Player
import repositories.player_repo as player_repo
import repositories.team_repo as team_repo

players_blueprint = Blueprint("players", __name__)

#Index
@players_blueprint.route("/players")
def players():
    players = player_repo.select_all()
    return render_template("players/index.html", title = "All players", players = players)


#Add players
@players_blueprint.route("/edit/players")
def add_players():
    teams = team_repo.select_all()
    return render_template("players/add.html", title = "Add Player", teams = teams, editing = True)

#Add instance of player
@players_blueprint.route("/edit/players", methods=["POST"])
def add_player():
    team_id = request.form['team_id']
    team = team_repo.select(team_id)
    name = request.form['name']
    age = request.form['age']
    number = request.form['number']
    position = request.form['position']
    player = Player(team, name, age, number, position)
    player_repo.save(player)
    return redirect("/edit/players")

#Add players
@players_blueprint.route("/edit/players/change")
def show_players():
    players = player_repo.select_all()
    return render_template("players/edit.html", title = "Edit Player", players = players, editing = True)

#Add instance of player
@players_blueprint.route("/edit/players/change", methods=["POST"])
def change_player():
    player_id = request.form["player_id"]
    player = player_repo.select(player_id)
    player.name = request.form['name']
    player.age = request.form['age']
    player.number = request.form['number']
    player.position = request.form['position']
    player_repo.update(player)
    return redirect("/edit/players/change")