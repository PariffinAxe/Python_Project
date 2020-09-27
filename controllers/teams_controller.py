from flask import Blueprint, Flask, redirect, render_template
from models.team import Team
import repositories.team_repo as team_repo

teams_blueprint = Blueprint("teams", __name__)

#Index
@teams_blueprint.route("/teams")
def teams():
    teams = team_repo.select_all()
    return render_template("teams/index.html", title = "All Teams", teams = teams)

#Show Team
@teams_blueprint.route("/teams/<id>")
def show_team(id):
    team = team_repo.select(id)
    players = team_repo.players(team)
    return render_template("teams/show.html", title = team.name, team = team, players = players)


#Show all teams games
@teams_blueprint.route("/teams/<id>/fixtures-results")
def show_team_games(id):
    team = team_repo.select(id)
    games = team_repo.games(team)
    return render_template("teams/fixtures-results.html", title = team.name, team = team, games = games)