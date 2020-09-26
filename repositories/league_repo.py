from db.run_sql import run_sql
from models.league import League
import repositories.league_type_repo as league_type_repo


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


