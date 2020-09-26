from db.run_sql import run_sql
from models.team import Team
import repositories.league_repo as league_repo


# save an instance
def save(team):
    sql = "INSERT INTO teams(league_id, name) VALUES (%s, %s) RETURNING id"
    values = [team.league.id, team.name]
    results = run_sql(sql, values)

    team.id = results[0]['id']
    return team


# select all instances within table
def select_all():
    teams = []

    sql = "SELECT * FROM teams"
    results = run_sql(sql)

    for result in results:
        league = league_repo.select(result['league_id'])
        team = Team(league, result['name'], result['id'])
        teams.append(team)
    return teams


# select singular instance from table by id
def select(id):
    team = None
    sql = "SELECT * FROM teams WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result is not None:
        league = league_repo.select(result['league_id'])
        team = Team(league, result['name'], result['id'])
    return team


# delete entire table(does not reset serial id's
def delete_all():
    sql = "DELETE FROM teams"
    run_sql(sql)


# delete singular instance from table by id(does not reset serial id's
def delete(id):
    sql = "DELETE FROM teams WHERE id = %s"
    values = [id]
    run_sql(sql, values)