class Game:
    def __init__(self, team_1, team_2, league, round_no, game_no, started=False, finished=False, id=None):
        self.team_1 = team_1
        self.team_2 = team_2
        self.league = league
        self.round_no = round_no
        self.game_no = game_no
        self.started = started
        self.finished = finished
        self.id = id