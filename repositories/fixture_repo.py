from db.run_sql import run_sql
from models.fixture import Fixture
import repositories.playlist_repo as playlist_repo
import repositories.possible_game_repo as possible_game_repo


# save an instance
def save(fixture):
    sql = "INSERT INTO fixtures(playlist_id, possible_game_id) VALUES (%s, %s) RETURNING id"
    values = [fixture.playlist.id, fixture.possible_game.id]
    results = run_sql(sql, values)

    fixture.id = results[0]['id']
    return fixture


# select all instances within table
def select_all():
    fixtures = []

    sql = "SELECT * FROM fixtures"
    results = run_sql(sql)

    for result in results:
        playlist = playlist_repo.select(result['playlist_id'])
        possible_game = possible_game_repo.select(result['possible_game_id'])
        fixture = Fixture(playlist, possible_game, result['id'])
        fixtures.append(fixture)
    return fixtures


# select singular instance from table by id
def select(id):
    fixture = None
    sql = "SELECT * FROM fixtures WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result is not None:
        playlist = playlist_repo.select(result['playlist_id'])
        possible_game = possible_game_repo.select(result['possible_game_id'])
        fixture = Fixture(playlist, possible_game, result['id'])
    return fixture


# delete entire table(does not reset serial id's
def delete_all():
    sql = "DELETE FROM fixtures"
    run_sql(sql)


# delete singular instance from table by id(does not reset serial id's
def delete(id):
    sql = "DELETE FROM fixtures WHERE id = %s"
    values = [id]
    run_sql(sql, values) 




