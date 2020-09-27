from flask import Blueprint, Flask, redirect, render_template, request
from models.league import League
import repositories.league_repo as league_repo

leagues_blueprint = Blueprint("leagues", __name__)

#Index
@leagues_blueprint.route("/leagues")
def leagues():
    leagues = league_repo.select_all()
    return render_template("leagues/index.html", title = "All Leagues", leagues = leagues)

#Show Specific League
@leagues_blueprint.route("/leagues/<id>")
def show_league(id):
    league = league_repo.select(id)
    teams = league_repo.teams(league)
    return render_template("leagues/show.html", title = league.sport+" - "+league.name, league = league, teams = teams)

@leagues_blueprint.route("/leagues/<id>/fixtures")
def league_fixtures(id):
    league = league_repo.select(id)
    teams = league_repo.teams(league)
    games = league_repo.games(league)
    return render_template("leagues/fixtures.html", title = league.sport+" - "+league.name, league = league, teams = teams, games=games)

@leagues_blueprint.route("/leagues/<id>/current_round")
def league_live_fixture(id):
    league = league_repo.select(id)
    teams = league_repo.teams(league)
    games = league_repo.games(league)
    return render_template("leagues/current_round.html", title = league.sport+" - "+league.name, league = league, teams = teams, games = games)