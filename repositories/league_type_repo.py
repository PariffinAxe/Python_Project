from db.run_sql import run_sql
from models.league_type import LeagueType


# save an instance
def save(league_type):
    sql = "INSERT INTO league_types(no_of_teams, total_games, comp_style, no_of_dates, teams_at_1, teams_at_2, teams_at_3, teams_at_4, teams_at_5, id) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)"
    values = [league_type.no_of_teams, league_type.total_games, league_type.comp_style, league_type.no_of_dates, league_type.teams_at_1, league_type.teams_at_2, league_type.teams_at_3, league_type.teams_at_4, league_type.teams_at_5, league_type.id]
    run_sql(sql, values)


# select all instances within table
def select_all():
    league_types = []

    sql = "SELECT * FROM league_types"
    results = run_sql(sql)

    for result in results:
        league_type = LeagueType(result['no_of_teams'], result['comp_style'], result['total_games'], result['no_of_rounds'])
        league_types.append(league_type)
    return league_types


# select singular instance from table by id
def select(id):
    league_type = None
    sql = "SELECT * FROM league_types WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result is not None:
        league_type = LeagueType(result['no_of_teams'], result['comp_style'], result['total_games'], result['no_of_rounds'])
    return league_type


# delete entire table(does not reset serial id's
def delete_all():
    sql = "DELETE FROM league_types"
    run_sql(sql)


# delete singular instance from table by id(does not reset serial id's
def delete(id):
    sql = "DELETE FROM league_types WHERE id = %s"
    values = [id]
    run_sql(sql, values)