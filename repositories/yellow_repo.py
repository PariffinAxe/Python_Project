from db.run_sql import run_sql
from models.yellow import Yellow
import repositories.player_repo as player_repo
import repositories.game_repo as game_repo


# save an instance
def save(yellow):
    sql = "INSERT INTO yellows(player_id, game_id) VALUES (%s, %s) RETURNING id"
    values = [yellow.player.id, yellow.game.id]
    results = run_sql(sql, values)

    yellow.id = results[0]['id']
    return yellow


# select all instances within table
def select_all():
    yellows = []

    sql = "SELECT * FROM yellows"
    results = run_sql(sql)

    for result in results:
        player = player_repo.select(result['player_id'])
        game = game_repo.select(result['game_id'])
        yellow = Yellow(player, game, result['id'])
        yellows.append(yellow)
    return yellows


# select singular instance from table by id
def select(id):
    yellow = None
    sql = "SELECT * FROM yellows WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result is not None:
        player = player_repo.select(result['player_id'])
        game = game_repo.select(result['game_id'])
        yellow = Yellow(player, game, result['id'])
    return yellow


# delete entire table(does not reset serial id's
def delete_all():
    sql = "DELETE FROM yellows"
    run_sql(sql)


# delete singular instance from table by id(does not reset serial id's
def delete(id):
    sql = "DELETE FROM yellows WHERE id = %s"
    values = [id]
    run_sql(sql, values)