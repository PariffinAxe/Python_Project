class LeagueType:
    def __init__(self, no_of_teams, comp_style, total_games, no_of_rounds, teams_at_1=0, teams_at_2=0, teams_at_3=0, teams_at_4=0, teams_at_5=0):
        self.no_of_teams = no_of_teams
        self.comp_style = comp_style
        if comp_style == "Single Round Robin":
            self.code = "SRR"
        elif comp_style == "Double Round Robin":
            self.code = "DRR"
        elif comp_style == "Split Single Round Robin":
            self.code = "SSRR"
        self.total_games = total_games
        self.no_of_rounds = no_of_rounds
        self.teams_at_1 = teams_at_1
        self.teams_at_2 = teams_at_2
        self.teams_at_3 = teams_at_3
        self.teams_at_4 = teams_at_4
        self.teams_at_5 = teams_at_5
        if teams_at_5 != 0:
            if teams_at_5 == teams_at_4 == teams_at_3 == teams_at_2 == teams_at_1:
                self.id = str(no_of_teams)+"-"+self.code+"-"+str(no_of_rounds)
            else:
                self.id = str(no_of_teams)+"-"+self.code+"-"+str(no_of_rounds)+"-"+str(teams_at_1)+"-"+str(teams_at_2)+"-"+str(teams_at_3)+"-"+str(teams_at_4)+"-"+str(teams_at_5)
        elif teams_at_4 != 0:
            if teams_at_4 == teams_at_3 == teams_at_2 == teams_at_1:
                self.id = str(no_of_teams)+"-"+self.code+"-"+str(no_of_rounds)
            else:
                self.id = str(no_of_teams)+"-"+self.code+"-"+str(no_of_rounds)+"-"+str(teams_at_1)+"-"+str(teams_at_2)+"-"+str(teams_at_3)+"-"+str(teams_at_4)
        elif teams_at_3 != 0:
            if teams_at_3 == teams_at_2 == teams_at_1:
                self.id = str(no_of_teams)+"-"+self.code+"-"+str(no_of_rounds)
            else:
                self.id = str(no_of_teams)+"-"+self.code+"-"+str(no_of_rounds)+"-"+str(teams_at_1)+"-"+str(teams_at_2)+"-"+str(teams_at_3)
        elif teams_at_2 != 0:
            if teams_at_2 == teams_at_1:
                self.id = str(no_of_teams)+"-"+self.code+"-"+str(no_of_rounds)
            else:
                self.id = str(no_of_teams)+"-"+self.code+"-"+str(no_of_rounds)+"-"+str(teams_at_1)+"-"+str(teams_at_2)
        else:
            self.id = str(no_of_teams)+"-"+self.code+"-"+str(no_of_rounds)
        
