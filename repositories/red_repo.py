from db.run_sql import run_sql
from models.red import Red
import repositories.player_repo as player_repo
import repositories.game_repo as game_repo


# save an instance
def save(red):
    sql = "INSERT INTO reds(player_id, game_id) VALUES (%s, %s) RETURNING id"
    values = [red.player.id, red.game.id]
    results = run_sql(sql, values)

    red.id = results[0]['id']
    return red


# select all instances within table
def select_all():
    reds = []

    sql = "SELECT * FROM reds"
    results = run_sql(sql)

    for result in results:
        player = player_repo.select(result['player_id'])
        game = game_repo.select(result['game_id'])
        red = Red(player, game, result['id'])
        reds.append(red)
    return reds


# select singular instance from table by id
def select(id):
    red = None
    sql = "SELECT * FROM reds WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result is not None:
        player = player_repo.select(result['player_id'])
        game = game_repo.select(result['game_id'])
        red = Red(player, game, result['id'])
    return red


# delete entire table(does not reset serial id's
def delete_all():
    sql = "DELETE FROM reds"
    run_sql(sql)


# delete singular instance from table by id(does not reset serial id's
def delete(id):
    sql = "DELETE FROM reds WHERE id = %s"
    values = [id]
    run_sql(sql, values)