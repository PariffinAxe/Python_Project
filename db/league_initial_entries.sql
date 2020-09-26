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

SELECT games.round_no, teams.name FROM games
INNER JOIN teams ON games.team_1_id = teams.id
INNER JOIN leagues ON leagues.id = teams.league_id;