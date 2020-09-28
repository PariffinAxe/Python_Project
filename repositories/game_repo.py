from db.run_sql import run_sql
from models.game import Game
from models.team import Team
from models.goal import Goal
from models.player import Player
import repositories.team_repo as team_repo
import repositories.league_repo as league_repo
import repositories.player_repo as player_repo


# save an instance
def save(game):
    sql = "INSERT INTO games(team_1_id, team_2_id, league_id, round_no, game_no, team_1_score, team_2_score, started, finished) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s) RETURNING id"
    values = [game.team_1.id, game.team_2.id, game.league.id, game.round_no, game.game_no, game.team_1_score, game.team_2_score, game.started, game.finished]
    results = run_sql(sql, values)
    game.id = results[0]['id']
    return game


# select all instances within table
def select_all():
    games = []

    sql = "SELECT * FROM games"
    results = run_sql(sql)

    for result in results:
        team_1 = team_repo.select(result['team_1_id'])
        team_2 = team_repo.select(result['team_2_id'])
        league = league_repo.select(result['league_id'])
        game = Game(team_1, team_2, league, result['round_no'], result['game_no'], result['team_1_score'], result['team_2_score'], result['started'], result['finished'], result['id'])
        games.append(game)
    return games


# select singular instance from table by id
def select(id):
    game = None
    sql = "SELECT * FROM games WHERE id = %s"
    values = [id]
    result = run_sql(sql, values)[0]

    if result is not None:
        team_1 = team_repo.select(result['team_1_id'])
        team_2 = team_repo.select(result['team_2_id'])
        league = league_repo.select(result['league_id'])
        game = Game(team_1, team_2, league, result['round_no'], result['game_no'], result['team_1_score'], result['team_2_score'], result['started'], result['finished'], result['id'])
    return game


# delete entire table(does not reset serial id's
def delete_all():
    sql = "DELETE FROM games"
    run_sql(sql)


# delete singular instance from table by id(does not reset serial id's
def delete(id):
    sql = "DELETE FROM games WHERE id = %s"
    values = [id]
    run_sql(sql, values)


# generate fixture list for specific league
def generate_fixture_list(league):
    fixtures = []
    sql = "SELECT possible_games.team_1, possible_games.team_2, playlists.round_no FROM possible_games INNER JOIN fixtures ON fixtures.possible_game_id = possible_games.id INNER JOIN playlists ON fixtures.playlist_id = playlists.id INNER JOIN league_types ON league_types.id = playlists.league_type_id INNER JOIN leagues ON league_types.id = leagues.league_type_id WHERE leagues.id = %s"
    values = [league.id]
    results = run_sql(sql, values)

    game_no = 1
    for result in results:
        game = Game(result['team_1'], result['team_2'], league, result['round_no'], game_no)
        fixtures.append(game)
        game_no += 1


    teams = []
    sql = "SELECT teams.* FROM teams INNER JOIN leagues ON leagues.id = teams.league_id WHERE leagues.id = %s"
    values = [league.id]
    results = run_sql(sql, values)
    for result in results:
        team = Team(league, result['name'], result['games_played'], result['wins'], result['draws'], result['losses'], result['goals_for'], result['goals_against'], result['goal_difference'], result['points'], result['id'])
        teams.append(team)

    games = []
    for fixture in fixtures:
        team_1 = fixture.team_1
        team_2 = fixture.team_2
        game = Game(teams[team_1-1], teams[team_2-1], league, fixture.round_no, fixture.game_no)
        games.append(game)

    return games


#update when scoring a goal
def goal_scored(game):
    sql = "UPDATE games SET (team_1_score, team_2_score) = (%s, %s) WHERE id = %s"
    values = [game.team_1_score, game.team_2_score, game.id]
    run_sql(sql, values)


# Start a game
def start_game(game):
    sql = "UPDATE games SET started = TRUE WHERE id = %s"
    values = [game.id]
    run_sql(sql, values)


# Finish a game
def end_game(game):
    sql = "UPDATE games SET finished = TRUE WHERE id = %s"
    values = [game.id]
    run_sql(sql, values)



# select all instances within table that are finished
def finished_games():
    games = []

    sql = "SELECT * FROM games WHERE finished = TRUE"
    results = run_sql(sql)

    for result in results:
        team_1 = team_repo.select(result['team_1_id'])
        team_2 = team_repo.select(result['team_2_id'])
        league = league_repo.select(result['league_id'])
        game = Game(team_1, team_2, league, result['round_no'], result['game_no'], result['team_1_score'], result['team_2_score'], result['started'], result['finished'], result['id'])
        games.append(game)
    return games


# get goals for team 1
def team_1_goals(game):
    goals = []

    sql = "SELECT * FROM goals WHERE game_id = %s"
    values = [game.id]
    results = run_sql(sql, values)

    for result in results:
        player = player_repo.select(result['player_id'])
        if player.team.id == game.team_1.id:
            goal = Goal(player, game, result['id'])
            goals.append(goal)
    return goals


# get goals for team 2
def team_2_goals(game):
    goals = []

    sql = "SELECT * FROM goals WHERE game_id = %s"
    values = [game.id]
    results = run_sql(sql, values)

    for result in results:
        player = player_repo.select(result['player_id'])
        if player.team.id == game.team_2.id:
            goal = Goal(player, game, result['id'])
            goals.append(goal)
    return goals


# get players in a game
def players(game):
    players = []

    sql = "SELECT players.* FROM players INNER JOIN teams ON teams.id = players.team_id INNER JOIN games ON games.team_1_id = teams.id OR games.team_2_id = teams.id WHERE games.id= %s ORDER BY teams.id ASC, players.name ASC"
    values = [game.id]
    results = run_sql(sql, values)

    for result in results:
        team = team_repo.select(result['team_id'])
        player = Player(team, result['name'], result['age'], result['number'], result['position'], result['goals_scored'], result['id'])
        players.append(player)
    
    return players