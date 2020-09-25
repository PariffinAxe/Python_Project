SELECT games.* FROM games 
INNER JOIN games_playlists ON games.id = games_playlists.game_id 
INNER JOIN playlists ON playlists.id = games_playlists.playlist_id
INNER JOIN league_types ON playlists.league_type_id = league_types.id
WHERE league_types.no_of_teams = 8
AND league_types.no_of_dates = 5
ORDER BY games_playlists.id ASC;