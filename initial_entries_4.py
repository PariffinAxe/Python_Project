# updates all games/teams played already to accomodate previous goals/games
from models.fixture import Fixture
import repositories.fixture_repo as fixture_repo
from models.game import Game
import repositories.game_repo as game_repo
from models.goal import Goal
import repositories.goal_repo as goal_repo
from models.green import Green
import repositories.green_repo as green_repo
from models.league import League
import repositories.league_repo as league_repo
from models.league_type import LeagueType
import repositories.league_type_repo as league_type_repo
from models.player import Player
import repositories.player_repo as player_repo
from models.playlist import Playlist
import repositories.playlist_repo as playlist_repo
from models.possible_game import PossibleGame
import repositories.possible_game_repo as possible_game_repo
from models.red import Red
import repositories.red_repo as red_repo
from models.team import Team
import repositories.team_repo as team_repo
from models.yellow import Yellow
import repositories.yellow_repo as yellow_repo


goals = goal_repo.select_all()
for goal in goals:
    game = game_repo.select(goal.game.id)
    team = team_repo.select(goal.player.team.id)
    if team.id == game.team_1.id:
        game.team_1_score += 1
    elif team.id == game.team_2.id:
        game.team_2_score += 1
    game_repo.goal_scored(game)

games = game_repo.select_all()
for game in games:
    team1 = team_repo.select(game.team_1.id)
    team2 = team_repo.select(game.team_2.id)
    
    if game.team_1_score > game.team_2_score:
        team1.wins += 1
        team2.losses += 1
    elif game.team_1_score < game.team_2_score:
        team1.losses += 1
        team2.wins += 1
    else:
        team1.draws += 1
        team2.draws += 1
    
    team1.games_played += 1
    team1.goals_for += game.team_1_score
    team1.goals_against += game.team_2_score
    team1.goal_difference = team1.goals_for - team1.goals_against
    team1.points = 3*team1.wins + team1.draws
    
    team2.games_played += 1
    team2.goals_for += game.team_2_score
    team2.goals_against += game.team_1_score
    team2.goal_difference = team2.goals_for - team2.goals_against
    team2.points = 3*team2.wins + team2.draws
    
    team_repo.play_game(team1, team2)