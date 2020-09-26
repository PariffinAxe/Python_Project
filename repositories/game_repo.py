from db.run_sql import run_sql
from models.game import Game
from models.team import Team
import repositories.team_repo as team_repo
import repositories.league_repo as league_repo


# save an instance
def save(game):
    sql = "INSERT INTO games(team_1_id, team_2_id, league_id, round_no) VALUES (%s, %s, %s, %s) RETURNING id"
    values = [game.team_1.id, game.team_2.id, game.league.id, game.round_no]
    results = run_sql(sql, values)
    game.id = results[0]['id']
    return game


# select all instances within table
def select_all():
    games = []

    sql = "SELECT * FROM games"
    results = run_sql(sql)

    for result in results:
        team_1 = team_repo.select(result['team_1_id'])
        team_2 = team_repo.select(result['team_2_id'])
        league = league_repo.select(results['league_id'])
        game = Game(team_1, team_2, league, result['round_no'], result['id'])
        games.append(game)
    return games


# select singular instance from table by id
def select(id):
    game = None
    sql = "SELECT * FROM games WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result is not None:
        team_1 = team_repo.select(result['team_1_id'])
        team_2 = team_repo.select(result['team_2_id'])
        league = league_repo.select(result['league_id'])
        game = Game(team_1, team_2, league, result['round_no'], result['id'])
    return game


# delete entire table(does not reset serial id's
def delete_all():
    sql = "DELETE FROM games"
    run_sql(sql)


# delete singular instance from table by id(does not reset serial id's
def delete(id):
    sql = "DELETE FROM games WHERE id = %s"
    values = [id]
    run_sql(sql, values) 


# generate fixture list for specific league
def generate_fixture_list(league):
    fixtures = []
    sql = "SELECT possible_games.team_1, possible_games.team_2, playlists.round_no FROM possible_games INNER JOIN fixtures ON fixtures.possible_game_id = possible_games.id INNER JOIN playlists ON fixtures.playlist_id = playlists.id INNER JOIN league_types ON league_types.id = playlists.league_type_id INNER JOIN leagues ON league_types.id = leagues.league_type_id WHERE leagues.name = %s"
    values = [league.name]
    results = run_sql(sql, values)

    for result in results:
        game = Game(result['team_1'], result['team_2'], league, result['round_no'])
        fixtures.append(game)


    teams = []
    sql = "SELECT teams.* FROM teams INNER JOIN leagues ON leagues.id = teams.league_id WHERE leagues.name = %s"
    values = [league.name]
    results = run_sql(sql, values)
    for result in results:
        team = Team(league, result['name'], result['id'])
        teams.append(team)

    games = []
    for fixture in fixtures:
        team_1 = fixture.team_1
        team_2 = fixture.team_2
        game = Game(teams[team_1-1], teams[team_2-1], league, fixture.round_no)
        games.append(game)

    return games

    