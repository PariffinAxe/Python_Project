class Team:
    def __init__(self, league, name, games_played=0, wins=0, draws=0, losses=0, goals_for=0, goals_against=0, goal_difference=0, points=0, id=None):
        self.league = league
        self.name = name
        self.games_played = games_played
        self.wins = wins
        self.draws = draws
        self.losses = losses
        self.goals_for = goals_for
        self.goals_against = goals_against
        self.goal_difference = goal_difference
        self.points = points
        self.id = id