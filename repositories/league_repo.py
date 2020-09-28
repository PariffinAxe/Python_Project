from db.run_sql import run_sql
from models.league import League
from models.team import Team
from models.game import Game
from models.player import Player
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

    sql = "SELECT * FROM leagues ORDER BY name ASC"
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
        game = Game(team_1, team_2, league, result['round_no'], result['game_no'], result['team_1_score'], result['team_2_score'], result['started'], result['finished'], result['id'])
        games.append(game)

    return games


# get all games that have already been played
def results(league):
    games = []

    sql = "SELECT * FROM games WHERE league_id = %s AND games.finished = TRUE ORDER BY games.game_no ASC"
    values = [league.id]
    results = run_sql(sql, values)

    for result in results:
        team_1 = team_repo.select(result['team_1_id'])
        team_2 = team_repo.select(result['team_2_id'])
        game = Game(team_1, team_2, league, result['round_no'], result['game_no'], result['team_1_score'], result['team_2_score'], result['started'], result['finished'], result['id'])
        games.append(game)

    return games


#get the round currently in play/next up
def get_current_round(league):
    round_no = None
    sql = "SELECT * FROM games WHERE league_id = %s AND games.finished = FALSE ORDER BY games.game_no ASC"
    values = [league.id]
    results = run_sql(sql, values)
    for result in results:
        round_no = result['round_no']
        break
    print(f"this is the round number - {round_no}")
    return round_no


# find the max round number in league
def get_max_round(league):
    max_round = None
    sql = "SELECT * FROM games WHERE league_id = %s ORDER BY games.round_no DESC"
    values = [league.id]
    results = run_sql(sql, values)
    for result in results:
        max_round = result['round_no']
        break
    return max_round


# get a list of all games in the currebt round
def current_games(league, round_no):
    games = []

    sql = "SELECT * FROM games WHERE league_id = %s AND round_no = %s ORDER BY games.game_no ASC" 
    values = [league.id, round_no]
    results = run_sql(sql, values)

    for result in results:
        team_1 = team_repo.select(result['team_1_id'])
        team_2 = team_repo.select(result['team_2_id'])
        game = Game(team_1, team_2, league, result['round_no'], result['game_no'], result['team_1_score'], result['team_2_score'], result['started'], result['finished'], result['id'])
        games.append(game)
    
    return games


# find top scorer
def top_scorer(league):
    sql = "SELECT players.* FROM players INNER JOIN teams ON players.team_id = teams.id WHERE teams.league_id = %s ORDER BY goals_scored DESC"
    values = [league.id]
    result = run_sql(sql, values)[0]

    team = team_repo.select(result['team_id'])
    player = Player(team, result['name'], result['age'], result['number'], result['position'], result['goals_scored'], result['id'])
    return player


# Find all unfinished games for league
def unfinished_gemas(league):
    games = []

    sql = "SELECT * FROM games WHERE league_id = %s AND finished = False ORDER BY game_no ASC"
    values = [league.id]
    results = run_sql(sql, values)

    for result in results:
        team_1 = team_repo.select(result['team_1_id'])
        team_2 = team_repo.select(result['team_2_id'])
        game = Game(team_1, team_2, league, result['round_no'], result['game_no'], result['team_1_score'], result['team_2_score'], result['started'], result['finished'], result['id'])
        games.append(game)
    
    return games
