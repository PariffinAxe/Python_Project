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
    top_scorer = league_repo.top_scorer(league)
    return render_template("leagues/show.html", title = league.sport+" - "+league.name, league = league, teams = teams, top_scorer = top_scorer)

# Show all remaining fixtures for that league
@leagues_blueprint.route("/leagues/<id>/fixtures")
def league_fixtures(id):
    league = league_repo.select(id)
    teams = league_repo.teams(league)
    games = league_repo.games(league)
    return render_template("leagues/fixtures.html", title = league.sport+" - "+league.name, league = league, teams = teams, games=games)

# Show all results for that league
@leagues_blueprint.route("/leagues/<id>/results")
def league_results(id):
    league = league_repo.select(id)
    teams = league_repo.teams(league)
    games = league_repo.results(league)
    return render_template("leagues/results.html", title = league.sport+" - "+league.name, league = league, teams = teams, games=games)

# Show fixtures/results of upcoming/current round
@leagues_blueprint.route("/leagues/<id>/current_round")
def league_live_fixture(id):
    league = league_repo.select(id)
    teams = league_repo.teams(league)
    current_round = league_repo.get_current_round(league)
    max_round = league_repo.get_max_round(league)
    if current_round is not None:
        games = league_repo.current_games(league, current_round)
    else:
        games = []
    return render_template("leagues/current_round.html", title = league.sport+" - "+league.name, league = league, teams = teams, games = games, round_no = current_round, max_round = max_round)

# Show fixtures/results of upcoming/current round
@leagues_blueprint.route("/leagues/<id>/round/<round_no>")
def league_fixtures_by_round(id, round_no):
    league = league_repo.select(id)
    teams = league_repo.teams(league)
    current_round = int(round_no)
    max_round = league_repo.get_max_round(league)
    if current_round is not None:
        games = league_repo.current_games(league, current_round)
    else:
        games = []
    return render_template("leagues/current_round.html", title = league.sport+" - "+league.name, league = league, teams = teams, games = games, round_no = current_round, max_round = max_round)

