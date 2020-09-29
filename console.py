import pdb

#This page acts solely as a way to test ability to get and retreive date from databases
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


league = league_repo.select(4)
games = game_repo.generate_fixture_list(league)
for game in games:
    game_repo.save(game)





    



pdb.set_trace()