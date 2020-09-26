from db.run_sql import run_sql
from models.player import Player
import repositories.team_repo as team_repo


# save an instance
def save(player):
    sql = "INSERT INTO players(team_id, name, age, position, number) VALUES (%s, %s, %s, %s, %s) RETURNING id"
    values = [player.team.id, player.name, player.age, player.position, player.number]
    results = run_sql(sql, values)

    player.id = results[0]['id']
    return player


# select all instances within table
def select_all():
    players = []

    sql = "SELECT * FROM players"
    results = run_sql(sql)

    for result in results:
        team = team_repo.select(result['team_id'])
        player = Player(team, result['name'], result['age'], result['number'], result['position'], result['id'])
        players.append(player)
    return players


# select singular instance from table by id
def select(id):
    player = None
    sql = "SELECT * FROM players WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result is not None:
        team = team_repo.select(result['team_id'])
        player = Player(team, result['name'], result['age'], result['number'], result['position'], result['id'])
    return player


# delete entire table(does not reset serial id's
def delete_all():
    sql = "DELETE FROM players"
    run_sql(sql)


# delete singular instance from table by id(does not reset serial id's
def delete(id):
    sql = "DELETE FROM players WHERE id = %s"
    values = [id]
    run_sql(sql, values)