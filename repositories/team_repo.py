from db.run_sql import run_sql
from models.team import Team
import repositories.league_repo as league_repo


# save an instance
def save(team):
    sql = "INSERT INTO teams(league_id, name, games_played, wins, draws, losses, goals_for, goals_against, goal_difference, points) VALUES (%s, %s, %s, %s, %s, %s, %s) RETURNING id"
    values = [team.league.id, team.name, team.games_played, team.wins, team.draws, team.losses, team.goals_for, team.goals_against, team.goal_difference, team.points]
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
        team = Team(league, result['name'], result['games_played'], result['wins'], result['draws'], result['losses'], result['goals_for'], result['goals_against'], result['goal_difference'], result['points'], result['id'])
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
        team = Team(league, result['name'], result['games_played'], result['wins'], result['draws'], result['losses'], result['goals_for'], result['goals_against'], result['goal_difference'], result['points'], result['id'])
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


# play a game an update team points/goals
def play_game(team1, team2):
    sql = "UPDATE teams SET (games_played, wins, draws, losses, goals_for, goals_against, goal_difference, points) = (%s, %s, %s, %s, %s, %s, %s, %s) WHERE id = %s"
    values = [team1.games_played, team1.wins, team1.draws, team1.losses, team1.goals_for, team1.goals_against, team1.goal_difference, team1.points, team1.id]
    run_sql(sql, values)

    sql = "UPDATE teams SET (games_played, wins, draws, losses, goals_for, goals_against, goal_difference, points) = (%s, %s, %s, %s, %s, %s, %s, %s) WHERE id = %s"
    values = [team2.games_played, team2.wins, team2.draws, team2.losses, team2.goals_for, team2.goals_against, team2.goal_difference, team2.points, team2.id]
    run_sql(sql, values)