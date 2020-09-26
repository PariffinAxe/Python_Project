from db.run_sql import run_sql
from models.goal import Goal
import repositories.player_repo as player_repo
import repositories.game_repo as game_repo


# save an instance
def save(goal):
    sql = "INSERT INTO goals(player_id, game_id) VALUES (%s, %s) RETURNING id"
    values = [goal.player.id, goal.game.id]
    results = run_sql(sql, values)

    goal.id = results[0]['id']
    return goal


# select all instances within table
def select_all():
    goals = []

    sql = "SELECT * FROM goals"
    results = run_sql(sql)

    for result in results:
        player = player_repo.select(result['player_id'])
        game = game_repo.select(result['game_id'])
        goal = Goal(player, game, result['id'])
        goals.append(goal)
    return goals


# select singular instance from table by id
def select(id):
    goal = None
    sql = "SELECT * FROM goals WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result is not None:
        player = player_repo.select(result['player_id'])
        game = game_repo.select(result['game_id'])
        goal = Goal(player, game, result['id'])
    return goal


# delete entire table(does not reset serial id's
def delete_all():
    sql = "DELETE FROM goals"
    run_sql(sql)


# delete singular instance from table by id(does not reset serial id's
def delete(id):
    sql = "DELETE FROM goals WHERE id = %s"
    values = [id]
    run_sql(sql, values)