-- SELECT possible_games.team_1, possible_games.team_2, playlists.round_no FROM possible_games
-- INNER JOIN fixtures ON fixtures.possible_game_id = possible_games.id
-- INNER JOIN playlists ON fixtures.playlist_id = playlists.id
-- INNER JOIN league_types ON league_types.id = playlists.league_type_id
-- INNER JOIN leagues ON league_types.id = leagues.league_type_id
-- WHERE leagues.name = 'Fives Mini League'
-- ORDER BY fixtures.id ASC;

-- SELECT teams.* FROM teams
-- INNER JOIN leagues ON leagues.id = teams.league_id
-- WHERE leagues.name = 'Fives Mini League';

-- SELECT * FROM teams
-- WHERE league_id = 3
-- ORDER BY teams.points DESC, teams.goal_difference DESC, teams.goals_for DESC, teams.name ASC;

-- SELECT * FROM games WHERE league_id = 3 AND round_no = 2 ORDER BY games.game_no ASC;

-- SELECT * FROM possible_games INNER JOIN fixtures ON fixtures.possible_game_id = possible_games.id INNER JOIN playlists ON fixtures.playlist_id = playlists.id INNER JOIN league_types ON league_types.id = playlists.league_type_id INNER JOIN leagues ON league_types.id = leagues.league_type_id WHERE leagues.id = 3;


-- SELECT players.* FROM players INNER JOIN teams ON players.team_id = teams.id WHERE teams.league_id = 3 ORDER BY goals_scored DESC;

SELECT DISTINCT no_of_teams FROM league_types ORDER BY no_of_teams ASC;








