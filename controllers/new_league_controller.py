from flask import Blueprint, Flask, redirect, render_template, request
import repositories.league_type_repo as league_type_repo
import repositories.league_repo as league_repo
import repositories.team_repo as team_repo
import repositories.player_repo as player_repo
import repositories.game_repo as game_repo
from models.league import League
from models.team import Team
from models.player import Player

new_leagues_blueprint = Blueprint("new_leagues", __name__)

#Choose no of teams
@new_leagues_blueprint.route("/edit/create-new")
def no_teams():
    no_teams = league_type_repo.select_teams_no()
    return render_template("new_leagues/index.html", title = "Create New League", choose_no_teams = True, no_teams = no_teams, creating = True)


#Teams Chosen, choose comp style
@new_leagues_blueprint.route("/edit/create-new/no-of-teams", methods=["POST"])
def picked_no_teams():
    no_teams = request.form['no_of_teams']
    return redirect(f"/edit/create-new/{no_teams}")

# choose comp style
@new_leagues_blueprint.route("/edit/create-new/<no_teams>")
def choose_style(no_teams):
    comp_styles = league_type_repo.select_comp_styles(no_teams)
    if len(comp_styles) == 1:
        comp_style = comp_styles[0]
        return redirect(f"/edit/create-new/{no_teams}/{comp_style}")
    else:
        return render_template("new_leagues/index.html", title = "Create New League", choose_comp_style = True, no_teams = no_teams, comp_styles = comp_styles, creating = True)


# Comp Style chosen
@new_leagues_blueprint.route("/edit/create-new/<no_teams>/comp-styles", methods=["POST"])
def picked_style(no_teams):
    comp_style = request.form['comp_style']
    return redirect(f"/edit/create-new/{no_teams}/{comp_style}")

# choose no dates
@new_leagues_blueprint.route("/edit/create-new/<no_teams>/<comp_style>")
def choose_dates(no_teams, comp_style):
    no_dates = league_type_repo.select_dates(no_teams, comp_style)
    if len(no_dates) == 1:
        no_of_dates = no_dates[0]
        return redirect(f"/edit/create-new/{no_teams}/{comp_style}/{no_of_dates}")
    else:
        return render_template("new_leagues/index.html", title = "Create New League", choose_no_dates = True, no_teams = no_teams, comp_style = comp_style, no_dates = no_dates, creating = True)

# no dates chosen
@new_leagues_blueprint.route("/edit/create-new/<no_teams>/<comp_style>/no-of-dates", methods=["POST"])
def picked_dates(no_teams, comp_style):
    no_dates = request.form['no_dates']
    return redirect(f"/edit/create-new/{no_teams}/{comp_style}/{no_dates}")

# can add ability to choose teams at each date
# can add ability to choose teams at each date
# can add ability to choose teams at each date
# can add ability to choose teams at each date

# confirm choices
@new_leagues_blueprint.route("/edit/create-new/<no_teams>/<comp_style>/<no_dates>")
def confirm(no_teams, comp_style, no_dates):
    return render_template("new_leagues/index.html", title = "Create New League", confirmation = True, no_teams = no_teams, comp_style = comp_style, no_dates = no_dates, creating = True)

# create league
@new_leagues_blueprint.route("/edit/create-new/<no_teams>/<comp_style>/<no_dates>/confirm", methods=["POST"])
def create_league(no_teams, comp_style, no_dates):
    id = league_type_repo.get_id(no_teams, comp_style, no_dates)
    league_type = league_type_repo.select(id)
    name = request.form['name']
    sport = request.form['sport']
    league = League(league_type, name, sport)
    new_league = league_repo.save(league)
    return redirect(f"/edit/league/{new_league.id}/add-teams/{no_teams}/1")


# input teams
@new_leagues_blueprint.route("/edit/league/<id>/add-teams/<no_teams>/<team_no>")
def input_teams(id, no_teams, team_no):
    league = league_repo.select(id)
    return render_template("new_leagues/add_teams.html", title = "Create New League", league = league, team_no = team_no, no_teams = no_teams, creating = True)


# add teams
@new_leagues_blueprint.route("/edit/league/<id>/add-teams/<no_teams>/add/<team_no>", methods=["POST"])
def add_teams(id, no_teams, team_no):
    league = league_repo.select(id)
    name = request.form['name']
    team = Team(league, name)
    team_repo.save(team)
    if team_no == no_teams:
        return redirect(f"/edit/league/{league.id}/generate-fixtures")
    else:
        team_no = int(team_no)
        team_no += 1
        return redirect(f"/edit/league/{league.id}/add-teams/{no_teams}/{team_no}")


# generate fixture list
@new_leagues_blueprint.route("/edit/league/<id>/generate-fixtures")
def generate_fixtures(id):
    league = league_repo.select(id)
    games = game_repo.generate_fixture_list(league)
    for game in games:
        game_repo.save(game)
    return redirect(f"/edit/league/{league.id}/add-players")
    

# input players
@new_leagues_blueprint.route("/edit/league/<id>/add-players")
def input_player(id):
    league = league_repo.select(id)
    teams = league_repo.teams(league)
    return render_template("new_leagues/add_players.html", title = "Create New League", league = league, teams = teams, creating = True)


# add player to database
@new_leagues_blueprint.route("/edit/league/<id>/add-player", methods=["POST"])
def add_player(id):
    team_id = request.form['team_id']
    team = team_repo.select(team_id)
    name = request.form['name']
    age = request.form['age']
    number = request.form['number']
    position = request.form['position']
    player = Player(team, name, age, number, position)
    player_repo.save(player)
    return redirect(f"/edit/league/{id}/add-players")
    
