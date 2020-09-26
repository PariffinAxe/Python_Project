class Playlist:
    def __init__(self, league_type, round_no):
        self.league_type = league_type
        self.no_of_teams = league_type.no_of_teams
        self.round_no = round_no
        self.id = league_type.id+"-"+str(round_no)