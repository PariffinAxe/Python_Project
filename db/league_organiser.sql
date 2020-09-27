DROP TABLE IF EXISTS reds;
DROP TABLE IF EXISTS yellows;
DROP TABLE IF EXISTS greens;
DROP TABLE IF EXISTS goals;
DROP TABLE IF EXISTS games;
DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS teams;
DROP TABLE IF EXISTS leagues;
DROP TABLE IF EXISTS fixtures;
DROP TABLE IF EXISTS possible_games;
DROP TABLE IF EXISTS playlists;
DROP TABLE IF EXISTS league_types;

CREATE TABLE league_types (
    id VARCHAR(255) PRIMARY KEY,
    no_of_teams INT,
    comp_style VARCHAR(255),
    total_games INT,
    no_of_rounds INT,
    teams_at_one INT,
    teams_at_two INT,
    teams_at_three INT,
    teams_at_four INT,
    teams_at_five INT
);

CREATE TABLE playlists (
    id VARCHAR(255) PRIMARY KEY,
    round_no INT,
    no_teams INT,
    league_type_id VARCHAR(255) REFERENCES league_types(id)
);

CREATE TABLE possible_games (
    id INT PRIMARY KEY,
    team_1 INT,
    team_2 INT
);

CREATE TABLE fixtures (
    id SERIAL PRIMARY KEY,
    playlist_id VARCHAR(255) REFERENCES playlists(id),
    possible_game_id INT REFERENCES possible_games(id)
);

CREATE TABLE leagues (
    id SERIAL PRIMARY KEY,
    sport VARCHAR(255),
    name VARCHAR(255),
    league_type_id VARCHAR(255) REFERENCES league_types(id)
);

CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    games_played INT,
    wins INT,
    draws INT,
    losses INT,
    goals_for INT,
    goals_against INT,
    goal_difference INT,
    points INT,
    league_id INT REFERENCES leagues(id)
);

CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    position VARCHAR(255),
    number INT,
    team_id INT REFERENCES teams(id)
);

CREATE TABLE games (
    id SERIAL PRIMARY KEY,
    team_1_id INT REFERENCES teams(id),
    team_2_id INT REFERENCES teams(id),
    league_id INT REFERENCES leagues(id),
    round_no INT,
    game_no INT,
    started BOOLEAN,
    finished BOOLEAN
);

CREATE TABLE goals (
    id SERIAL PRIMARY KEY,
    player_id INT REFERENCES players(id),
    game_id INT REFERENCES games(id)
);

CREATE TABLE greens (
    id SERIAL PRIMARY KEY,
    player_id INT REFERENCES players(id),
    game_id INT REFERENCES games(id)
);

CREATE TABLE yellows (
    id SERIAL PRIMARY KEY,
    player_id INT REFERENCES players(id),
    game_id INT REFERENCES games(id)
);

CREATE TABLE reds (
    id SERIAL PRIMARY KEY,
    player_id INT REFERENCES players(id),
    game_id INT REFERENCES games(id)
);