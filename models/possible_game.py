class PossibleGame:
    def __init__(self, team_1, team_2):
        self.team_1 = team_1
        self.team_2 = team_2
        self.id = int(str(team_1)+str(team_2)) if team_2 > 9 else int(str(team_1)+"0"+str(team_2))
