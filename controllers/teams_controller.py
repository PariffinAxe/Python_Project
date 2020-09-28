from flask import Blueprint, Flask, redirect, render_template, request
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


# show teams that can be removed from database/league
@teams_blueprint.route("/edit/teams")
def show_teams_to_remove():
    teams = team_repo.select_all()
    return render_template("teams/edit.html", title = "Remove a Team", teams = teams, editing = True)


# Remove a team from the database/league
@teams_blueprint.route("/edit/teams", methods=["POST"])
def remove_team_confirmation():
    id = request.form['team_id']
    team_repo.delete(id)
    return redirect("/edit/teams")