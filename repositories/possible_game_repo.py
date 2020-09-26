from db.run_sql import run_sql
from models.possible_game import PossibleGame


# save an instance
def save(possible_game):
    sql = "INSERT INTO possible_games(team_1, team_2, id) VALUES (%s, %s, %s)"
    values = [possible_game.team_1, possible_game.team_2, possible_game.id]
    run_sql(sql, values)


# select all instances within table
def select_all():
    possible_games = []

    sql = "SELECT * FROM possible_games"
    results = run_sql(sql)

    for result in results:
        possible_game = PossibleGame(result['team_1'], result['team_2'])
        possible_games.append(possible_game)
    return possible_games


# select singular instance from table by id
def select(id):
    possible_game = None
    sql = "SELECT * FROM possible_games WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result is not None:
        possible_game = PossibleGame(result['team_1'], result['team_2'])
    return possible_game


# delete entire table(does not reset serial id's
def delete_all():
    sql = "DELETE FROM possible_games"
    run_sql(sql)


# delete singular instance from table by id(does not reset serial id's
def delete(id):
    sql = "DELETE FROM possible_games WHERE id = %s"
    values = [id]
    run_sql(sql, values)