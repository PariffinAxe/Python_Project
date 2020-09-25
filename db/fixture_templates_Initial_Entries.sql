--Initial Inserts: sample possible league sizes, needs heavily expanded. Can do so from admin controls on web app.
INSERT INTO league_types (id, no_of_teams, comp_style, total_games, no_of_dates, teams_at_one, teams_at_two, teams_at_three, teams_at_four) 
VALUES ('8-DRR-4', 8, 'DRR', 56, 4, 6, 6, 6, 6);
INSERT INTO league_types (id, no_of_teams, comp_style, total_games, no_of_dates, teams_at_one, teams_at_two, teams_at_three)
VALUES ('6-SRR-3', 6, 'SRR', 15, 3, 4, 4, 4);
INSERT INTO league_types (id, no_of_teams, comp_style, total_games, no_of_dates, teams_at_one, teams_at_two)
VALUES ('10-SSRR-2', 10, 'SSRR', 20, 2, 5, 5);
INSERT INTO league_types (id, no_of_teams, comp_style, total_games, no_of_dates, teams_at_one, teams_at_two, teams_at_three, teams_at_four, teams_at_five)
VALUES ('8-DRR-5-4-6-6-8-8', 8, 'DRR', 56, 5, 4, 6, 6, 8, 8);

-- Initial insert: all singular playlists for sample league sizes. 
INSERT INTO playlists (id, no_teams, league_type_id) VALUES ('8-DRR-4-1',6, '8-DRR-4'); -- 14
INSERT INTO playlists (id, no_teams, league_type_id) VALUES ('8-DRR-4-2',6, '8-DRR-4'); -- 14
INSERT INTO playlists (id, no_teams, league_type_id) VALUES ('8-DRR-4-3',6, '8-DRR-4'); -- 14
INSERT INTO playlists (id, no_teams, league_type_id) VALUES ('8-DRR-4-4',6, '8-DRR-4'); -- 14
INSERT INTO playlists (id, no_teams, league_type_id) VALUES ('6-SRR-3-1',4, '6-SRR-3'); -- 5
INSERT INTO playlists (id, no_teams, league_type_id) VALUES ('6-SRR-3-2',4, '6-SRR-3'); -- 5
INSERT INTO playlists (id, no_teams, league_type_id) VALUES ('6-SRR-3-3',4, '6-SRR-3'); -- 5
INSERT INTO playlists (id, no_teams, league_type_id) VALUES ('10-SSRR-2-1',5, '10-SSRR-2'); -- 10
INSERT INTO playlists (id, no_teams, league_type_id) VALUES ('10-SSRR-2-2',5, '10-SSRR-2'); -- 10
INSERT INTO playlists (id, no_teams, league_type_id) VALUES ('8-DRR-5-4-6-6-8-8-1', 4, '8-DRR-5-4-6-6-8-8'); -- 8
INSERT INTO playlists (id, no_teams, league_type_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 6, '8-DRR-5-4-6-6-8-8'); -- 10
INSERT INTO playlists (id, no_teams, league_type_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 6, '8-DRR-5-4-6-6-8-8'); -- 10
INSERT INTO playlists (id, no_teams, league_type_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 8, '8-DRR-5-4-6-6-8-8'); -- 14
INSERT INTO playlists (id, no_teams, league_type_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 8, '8-DRR-5-4-6-6-8-8'); -- 14


-- Initial insert: all possible games with 10 players max.
INSERT INTO games (id, team_1, team_2) VALUES (0102, 'team_1', 'team_2'); 
INSERT INTO games (id, team_1, team_2) VALUES (0103, 'team_1', 'team_3'); 
INSERT INTO games (id, team_1, team_2) VALUES (0104, 'team_1', 'team_4'); 
INSERT INTO games (id, team_1, team_2) VALUES (0105, 'team_1', 'team_5'); 
INSERT INTO games (id, team_1, team_2) VALUES (0106, 'team_1', 'team_6'); 
INSERT INTO games (id, team_1, team_2) VALUES (0107, 'team_1', 'team_7'); 
INSERT INTO games (id, team_1, team_2) VALUES (0108, 'team_1', 'team_8'); 
INSERT INTO games (id, team_1, team_2) VALUES (0109, 'team_1', 'team_9'); 
INSERT INTO games (id, team_1, team_2) VALUES (0110, 'team_1', 'team_10');
INSERT INTO games (id, team_1, team_2) VALUES (0203, 'team_2', 'team_3'); 
INSERT INTO games (id, team_1, team_2) VALUES (0204, 'team_2', 'team_4'); 
INSERT INTO games (id, team_1, team_2) VALUES (0205, 'team_2', 'team_5'); 
INSERT INTO games (id, team_1, team_2) VALUES (0206, 'team_2', 'team_6'); 
INSERT INTO games (id, team_1, team_2) VALUES (0207, 'team_2', 'team_7'); 
INSERT INTO games (id, team_1, team_2) VALUES (0208, 'team_2', 'team_8'); 
INSERT INTO games (id, team_1, team_2) VALUES (0209, 'team_2', 'team_9'); 
INSERT INTO games (id, team_1, team_2) VALUES (0210, 'team_2', 'team_10');
INSERT INTO games (id, team_1, team_2) VALUES (0304, 'team_3', 'team_4'); 
INSERT INTO games (id, team_1, team_2) VALUES (0305, 'team_3', 'team_5'); 
INSERT INTO games (id, team_1, team_2) VALUES (0306, 'team_3', 'team_6'); 
INSERT INTO games (id, team_1, team_2) VALUES (0307, 'team_3', 'team_7'); 
INSERT INTO games (id, team_1, team_2) VALUES (0308, 'team_3', 'team_8'); 
INSERT INTO games (id, team_1, team_2) VALUES (0309, 'team_3', 'team_9'); 
INSERT INTO games (id, team_1, team_2) VALUES (0310, 'team_3', 'team_10');
INSERT INTO games (id, team_1, team_2) VALUES (0405, 'team_4', 'team_5'); 
INSERT INTO games (id, team_1, team_2) VALUES (0406, 'team_4', 'team_6'); 
INSERT INTO games (id, team_1, team_2) VALUES (0407, 'team_4', 'team_7'); 
INSERT INTO games (id, team_1, team_2) VALUES (0408, 'team_4', 'team_8'); 
INSERT INTO games (id, team_1, team_2) VALUES (0409, 'team_4', 'team_9'); 
INSERT INTO games (id, team_1, team_2) VALUES (0410, 'team_4', 'team_10');
INSERT INTO games (id, team_1, team_2) VALUES (0506, 'team_5', 'team_6'); 
INSERT INTO games (id, team_1, team_2) VALUES (0507, 'team_5', 'team_7'); 
INSERT INTO games (id, team_1, team_2) VALUES (0508, 'team_5', 'team_8'); 
INSERT INTO games (id, team_1, team_2) VALUES (0509, 'team_5', 'team_9'); 
INSERT INTO games (id, team_1, team_2) VALUES (0510, 'team_5', 'team_10');
INSERT INTO games (id, team_1, team_2) VALUES (0607, 'team_6', 'team_7'); 
INSERT INTO games (id, team_1, team_2) VALUES (0608, 'team_6', 'team_8'); 
INSERT INTO games (id, team_1, team_2) VALUES (0609, 'team_6', 'team_9'); 
INSERT INTO games (id, team_1, team_2) VALUES (0610, 'team_6', 'team_10');
INSERT INTO games (id, team_1, team_2) VALUES (0708, 'team_7', 'team_8'); 
INSERT INTO games (id, team_1, team_2) VALUES (0709, 'team_7', 'team_9'); 
INSERT INTO games (id, team_1, team_2) VALUES (0710, 'team_7', 'team_10');
INSERT INTO games (id, team_1, team_2) VALUES (0809, 'team_8', 'team_9'); 
INSERT INTO games (id, team_1, team_2) VALUES (0810, 'team_8', 'team_10');
INSERT INTO games (id, team_1, team_2) VALUES (0910, 'team_9', 'team_10');


-- Initial inserts: cross matched games for 8 player DRR across 4 dates attending 3.
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-1', 0102);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-1', 0305);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-1', 0406);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-1', 0103);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-1', 0204);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-1', 0506);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-1', 0203);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-1', 0106);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-1', 0405);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-1', 0306);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-1', 0205);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-1', 0104);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-1', 0206);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-1', 0105);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-2', 0304);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-2', 0107);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-2', 0208);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-2', 0103);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-2', 0408);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-2', 0207);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-2', 0108);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-2', 0307);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-2', 0204);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-2', 0308);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-2', 0102);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-2', 0407);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-2', 0203);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-2', 0104);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-3', 0506);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-3', 0207);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-3', 0108);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-3', 0507);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-3', 0106);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-3', 0208);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-3', 0607);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-3', 0508);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-3', 0107);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-3', 0206);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-3', 0708);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-3', 0105);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-3', 0608);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-3', 0205);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-4', 0708);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-4', 0305);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-4', 0406);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-4', 0507);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-4', 0408);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-4', 0306);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-4', 0407);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-4', 0608);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-4', 0405);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-4', 0307);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-4', 0508);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-4', 0304);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-4', 0607);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-4-4', 0308);

-- Initial inserts: cross matched games for 6 player SRR across 3 dates attending 2.
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('6-SRR-3-1', 0103);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('6-SRR-3-1', 0204);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('6-SRR-3-1', 0102);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('6-SRR-3-1', 0104);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('6-SRR-3-1', 0203);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('6-SRR-3-2', 0105);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('6-SRR-3-2', 0206);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('6-SRR-3-2', 0506);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('6-SRR-3-2', 0205);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('6-SRR-3-2', 0106);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('6-SRR-3-3', 0305);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('6-SRR-3-3', 0406);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('6-SRR-3-3', 0304);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('6-SRR-3-3', 0306);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('6-SRR-3-3', 0405);

-- Initial inserts: cross matched games for 10 player SSRR across 2 dates attending 1.
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('10-SSRR-2-1', 0102);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('10-SSRR-2-1', 0304);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('10-SSRR-2-1', 0105);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('10-SSRR-2-1', 0203);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('10-SSRR-2-1', 0405);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('10-SSRR-2-1', 0103);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('10-SSRR-2-1', 0204);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('10-SSRR-2-1', 0305);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('10-SSRR-2-1', 0104);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('10-SSRR-2-1', 0205);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('10-SSRR-2-2', 0607);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('10-SSRR-2-2', 0809);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('10-SSRR-2-2', 0610);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('10-SSRR-2-2', 0708);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('10-SSRR-2-2', 0910);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('10-SSRR-2-2', 0608);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('10-SSRR-2-2', 0709);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('10-SSRR-2-2', 0810);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('10-SSRR-2-2', 0609);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('10-SSRR-2-2', 0710);

-- Initial inserts: cross matched games for 8 player DRR across 5 dates attending 4 4-6-6-8-8.
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-1', 0103);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-1', 0204);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-1', 0102);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-1', 0304);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-1', 0203);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-1', 0104);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-1', 0204);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-1', 0103);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 0507);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 0108);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 0206);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 0105);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 0607);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 0208);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 0506);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 0107);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 0508);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 0207);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 0608);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 0405);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 0307);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 0406);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 0508);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 0607);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 0305);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 0408);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 0306);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 0708);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0206);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0304);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0105);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0207);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0608);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0405);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0307);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0102);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0408);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0306);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0205);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0407);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0106);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0308);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0507);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0108);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0203);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0406);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0107);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0205);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0308);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0106);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0407);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0305);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0208);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0104);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0506);
INSERT INTO games_playlists (playlist_id, game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0708);