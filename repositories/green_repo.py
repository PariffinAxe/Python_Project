from db.run_sql import run_sql
from models.green import Green
import repositories.player_repo as player_repo
import repositories.game_repo as game_repo


# save an instance
def save(green):
    sql = "INSERT INTO greens(player_id, game_id) VALUES (%s, %s) RETURNING id"
    values = [green.player.id, green.game.id]
    results = run_sql(sql, values)

    green.id = results[0]['id']
    return green


# select all instances within table
def select_all():
    greens = []

    sql = "SELECT * FROM greens"
    results = run_sql(sql)

    for result in results:
        player = player_repo.select(result['player_id'])
        game = game_repo.select(result['game_id'])
        green = Green(player, game, result['id'])
        greens.append(green)
    return greens


# select singular instance from table by id
def select(id):
    green = None
    sql = "SELECT * FROM greens WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result is not None:
        player = player_repo.select(result['player_id'])
        game = game_repo.select(result['game_id'])
        green = Green(player, game, result['id'])
    return green


# delete entire table(does not reset serial id's
def delete_all():
    sql = "DELETE FROM greens"
    run_sql(sql)


# delete singular instance from table by id(does not reset serial id's
def delete(id):
    sql = "DELETE FROM greens WHERE id = %s"
    values = [id]
    run_sql(sql, values)