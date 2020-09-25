DROP TABLE IF EXISTS games_playlists;
DROP TABLE IF EXISTS games;
DROP TABLE IF EXISTS playlists;
DROP TABLE IF EXISTS league_sizes;

CREATE TABLE league_types (
    id VARCHAR(255) PRIMARY KEY,
    no_of_teams INT,
    total_games INT,
    comp_style VARCHAR(255),
    no_of_dates INT,
    teams_at_one INT,
    teams_at_two INT,
    teams_at_three INT,
    teams_at_four INT,
    teams_at_five INT
);

CREATE TABLE playlists (
    id VARCHAR(255) PRIMARY KEY,
    no_teams INT,
    league_type_id VARCHAR(255) REFERENCES league_types(id)
);

CREATE TABLE games (
    id INT PRIMARY KEY,
    team_1 VARCHAR(255),
    team_2 VARCHAR(255)
);

CREATE TABLE games_playlists (
    id SERIAL PRIMARY KEY,
    playlist_id VARCHAR(255) REFERENCES playlists(id),
    game_id INT REFERENCES games(id)
);

