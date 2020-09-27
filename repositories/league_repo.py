from db.run_sql import run_sql
from models.league import League
from models.team import Team
from models.game import Game
import repositories.league_type_repo as league_type_repo
import repositories.team_repo as team_repo



# save an instance
def save(league):
    sql = "INSERT INTO leagues(league_type_id, name, sport) VALUES (%s, %s, %s) RETURNING id"
    values = [league.league_type.id, league.name, league.sport]
    results = run_sql(sql, values)

    league.id = results[0]['id']
    return league


# select all instances within table
def select_all():
    leagues = []

    sql = "SELECT * FROM leagues"
    results = run_sql(sql)

    for result in results:
        league_type = league_type_repo.select(result['league_type_id'])
        league = League(league_type, result['name'], result['sport'], result['id'])
        leagues.append(league)
    return leagues


# select singular instance from table by id
def select(id):
    league = None
    sql = "SELECT * FROM leagues WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result is not None:
        league_type = league_type_repo.select(result['league_type_id'])
        league = League(league_type, result['name'], result['sport'], result['id'])
    return league


# delete entire table(does not reset serial id's
def delete_all():
    sql = "DELETE FROM leagues"
    run_sql(sql)


# delete singular instance from table by id(does not reset serial id's
def delete(id):
    sql = "DELETE FROM leagues WHERE id = %s"
    values = [id]
    run_sql(sql, values)

# get all teams within league
def teams(league):
    teams = []

    sql = "SELECT * FROM teams WHERE league_id = %s ORDER BY teams.points DESC, teams.goal_difference DESC, teams.goals_for DESC, teams.name ASC"
    values = [league.id]
    results = run_sql(sql, values)

    for result in results:
        team = Team(league, result['name'], result['games_played'], result['wins'], result['draws'], result['losses'], result['goals_for'], result['goals_against'], result['goal_difference'], result['points'], result['id'])
        teams.append(team)
    return teams

# get all remaining/live fixtures within a league
def games(league):
    games = []

    sql = "SELECT * FROM games WHERE league_id = %s AND games.started = FALSE ORDER BY games.game_no ASC"
    values = [league.id]
    results = run_sql(sql, values)

    for result in results:
        team_1 = team_repo.select(result['team_1_id'])
        team_2 = team_repo.select(result['team_2_id'])
        game = Game(team_1, team_2, league, result['round_no'], result['game_no'], result['started'], result['finished'], result['id'])
        games.append(game)

    return games

# def get_current_round(league):
#     sql = "SELECT * FROM games WHERE league_id = %s AND games.started = FALSE ORDER BY games.game_no ASC"


