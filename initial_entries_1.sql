--Initial Inserts: sample possible league sizes, needs heavily expanded. Can do so from admin controls on web app.
INSERT INTO league_types (id, no_of_teams, comp_style, total_games, no_of_rounds, teams_at_one, teams_at_two, teams_at_three, teams_at_four) 
VALUES ('8-DRR-4', 8, 'Double Round Robin', 56, 4, 6, 6, 6, 6);
INSERT INTO league_types (id, no_of_teams, comp_style, total_games, no_of_rounds, teams_at_one, teams_at_two, teams_at_three)
VALUES ('6-SRR-3', 6, 'Single Round Robin', 15, 3, 4, 4, 4);
INSERT INTO league_types (id, no_of_teams, comp_style, total_games, no_of_rounds, teams_at_one, teams_at_two)
VALUES ('10-SSRR-2', 10, 'Split Single Round Robin', 20, 2, 5, 5);
INSERT INTO league_types (id, no_of_teams, comp_style, total_games, no_of_rounds, teams_at_one, teams_at_two, teams_at_three, teams_at_four, teams_at_five)
VALUES ('8-DRR-5-4-6-6-8-8', 8, 'Double Round Robin', 56, 5, 4, 6, 6, 8, 8);
INSERT INTO league_types (id, no_of_teams, comp_style, total_games, no_of_rounds)
VALUES ('4-DRR-6', 4, 'Double Round Robin', 12, 6);
INSERT INTO league_types (id, no_of_teams, comp_style, total_games, no_of_rounds)
VALUES ('4-SRR-1', 4, 'Single Round Robin', 6, 1);


-- Initial insert: all singular playlists for sample league sizes. 
INSERT INTO playlists (id, round_no, no_teams, league_type_id) VALUES ('8-DRR-4-1', 1, 6, '8-DRR-4'); -- 14
INSERT INTO playlists (id, round_no, no_teams, league_type_id) VALUES ('8-DRR-4-2', 2, 6, '8-DRR-4'); -- 14
INSERT INTO playlists (id, round_no, no_teams, league_type_id) VALUES ('8-DRR-4-3', 3, 6, '8-DRR-4'); -- 14
INSERT INTO playlists (id, round_no, no_teams, league_type_id) VALUES ('8-DRR-4-4', 4, 6, '8-DRR-4'); -- 14
INSERT INTO playlists (id, round_no, no_teams, league_type_id) VALUES ('6-SRR-3-1', 1, 4, '6-SRR-3'); -- 5
INSERT INTO playlists (id, round_no, no_teams, league_type_id) VALUES ('6-SRR-3-2', 2, 4, '6-SRR-3'); -- 5
INSERT INTO playlists (id, round_no, no_teams, league_type_id) VALUES ('6-SRR-3-3', 3, 4, '6-SRR-3'); -- 5
INSERT INTO playlists (id, round_no, no_teams, league_type_id) VALUES ('10-SSRR-2-1', 1, 5, '10-SSRR-2'); -- 10
INSERT INTO playlists (id, round_no, no_teams, league_type_id) VALUES ('10-SSRR-2-2', 2, 5, '10-SSRR-2'); -- 10
INSERT INTO playlists (id, round_no, no_teams, league_type_id) VALUES ('8-DRR-5-4-6-6-8-8-1', 1, 4, '8-DRR-5-4-6-6-8-8'); -- 8
INSERT INTO playlists (id, round_no, no_teams, league_type_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 2, 6, '8-DRR-5-4-6-6-8-8'); -- 10
INSERT INTO playlists (id, round_no, no_teams, league_type_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 3, 6, '8-DRR-5-4-6-6-8-8'); -- 10
INSERT INTO playlists (id, round_no, no_teams, league_type_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 4, 8, '8-DRR-5-4-6-6-8-8'); -- 14
INSERT INTO playlists (id, round_no, no_teams, league_type_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 5, 8, '8-DRR-5-4-6-6-8-8'); -- 14
INSERT INTO playlists (id, round_no, no_teams, league_type_id) VALUES ('4-DRR-6-1', 1, 4, '4-DRR-6'); -- 2
INSERT INTO playlists (id, round_no, no_teams, league_type_id) VALUES ('4-DRR-6-2', 2, 4, '4-DRR-6'); -- 2
INSERT INTO playlists (id, round_no, no_teams, league_type_id) VALUES ('4-DRR-6-3', 3, 4, '4-DRR-6'); -- 2
INSERT INTO playlists (id, round_no, no_teams, league_type_id) VALUES ('4-DRR-6-4', 4, 4, '4-DRR-6'); -- 2
INSERT INTO playlists (id, round_no, no_teams, league_type_id) VALUES ('4-DRR-6-5', 5, 4, '4-DRR-6'); -- 2
INSERT INTO playlists (id, round_no, no_teams, league_type_id) VALUES ('4-DRR-6-6', 6, 4, '4-DRR-6'); -- 2
INSERT INTO playlists (id, round_no, no_teams, league_type_id) VALUES ('4-SRR-1-1', 1, 4, '4-SRR-1'); -- 6


-- Initial insert: all possible games with 10 players max.
INSERT INTO possible_games (id, team_1, team_2) VALUES (0102, 1, 2); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0103, 1, 3); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0104, 1, 4); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0105, 1, 5); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0106, 1, 6); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0107, 1, 7); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0108, 1, 8); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0109, 1, 9); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0110, 1, 10);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0201, 2, 1); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0203, 2, 3); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0204, 2, 4); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0205, 2, 5); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0206, 2, 6); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0207, 2, 7); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0208, 2, 8); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0209, 2, 9); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0210, 2, 10);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0301, 3, 1); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0302, 3, 2); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0304, 3, 4); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0305, 3, 5); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0306, 3, 6); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0307, 3, 7); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0308, 3, 8); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0309, 3, 9); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0310, 3, 10);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0401, 4, 1); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0402, 4, 2); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0403, 4, 3); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0405, 4, 5); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0406, 4, 6); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0407, 4, 7); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0408, 4, 8); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0409, 4, 9); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0410, 4, 10);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0501, 5, 1); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0502, 5, 2); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0503, 5, 3); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0504, 5, 4); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0506, 5, 6); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0507, 5, 7); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0508, 5, 8); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0509, 5, 9); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0510, 5, 10);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0601, 6, 1); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0602, 6, 2); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0603, 6, 3); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0604, 6, 4);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0605, 6, 5); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0607, 6, 7); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0608, 6, 8); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0609, 6, 9); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0610, 6, 10);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0701, 7, 1); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0702, 7, 2); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0703, 7, 3);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0704, 7, 4); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0705, 7, 5); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0706, 7, 6);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0708, 7, 8); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0709, 7, 9); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0710, 7, 10);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0801, 8, 1); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0802, 8, 2);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0803, 8, 3); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0804, 8, 4);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0805, 8, 5); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0806, 8, 6);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0807, 8, 7); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0809, 8, 9); 
INSERT INTO possible_games (id, team_1, team_2) VALUES (0810, 8, 10);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0901, 9, 1);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0902, 9, 2);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0903, 9, 3);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0904, 9, 4);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0905, 9, 5);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0906, 9, 6);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0907, 9, 7);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0908, 9, 8);
INSERT INTO possible_games (id, team_1, team_2) VALUES (0910, 9, 10);
INSERT INTO possible_games (id, team_1, team_2) VALUES (1001, 10, 1);
INSERT INTO possible_games (id, team_1, team_2) VALUES (1002, 10, 2);
INSERT INTO possible_games (id, team_1, team_2) VALUES (1003, 10, 3);
INSERT INTO possible_games (id, team_1, team_2) VALUES (1004, 10, 4);
INSERT INTO possible_games (id, team_1, team_2) VALUES (1005, 10, 5);
INSERT INTO possible_games (id, team_1, team_2) VALUES (1006, 10, 6);
INSERT INTO possible_games (id, team_1, team_2) VALUES (1007, 10, 7);
INSERT INTO possible_games (id, team_1, team_2) VALUES (1008, 10, 8);
INSERT INTO possible_games (id, team_1, team_2) VALUES (1009, 10, 9);
-- Initial inserts: cross matched games for 8 player DRR across 4 dates attending 3.
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-1', 0102);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-1', 0305);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-1', 0406);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-1', 0103);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-1', 0204);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-1', 0506);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-1', 0203);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-1', 0106);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-1', 0405);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-1', 0306);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-1', 0205);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-1', 0104);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-1', 0206);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-1', 0105);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-2', 0304);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-2', 0107);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-2', 0208);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-2', 0103);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-2', 0408);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-2', 0207);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-2', 0108);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-2', 0307);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-2', 0204);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-2', 0308);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-2', 0102);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-2', 0407);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-2', 0203);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-2', 0104);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-3', 0506);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-3', 0207);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-3', 0108);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-3', 0507);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-3', 0106);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-3', 0208);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-3', 0607);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-3', 0508);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-3', 0107);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-3', 0206);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-3', 0708);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-3', 0105);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-3', 0608);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-3', 0205);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-4', 0708);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-4', 0305);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-4', 0406);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-4', 0507);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-4', 0408);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-4', 0306);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-4', 0407);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-4', 0608);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-4', 0405);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-4', 0307);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-4', 0508);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-4', 0304);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-4', 0607);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-4-4', 0308);

-- Initial inserts: cross matched games for 6 player SRR across 3 dates attending 2.
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('6-SRR-3-1', 0103);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('6-SRR-3-1', 0204);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('6-SRR-3-1', 0102);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('6-SRR-3-1', 0104);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('6-SRR-3-1', 0203);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('6-SRR-3-2', 0105);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('6-SRR-3-2', 0206);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('6-SRR-3-2', 0506);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('6-SRR-3-2', 0205);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('6-SRR-3-2', 0106);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('6-SRR-3-3', 0305);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('6-SRR-3-3', 0406);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('6-SRR-3-3', 0304);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('6-SRR-3-3', 0306);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('6-SRR-3-3', 0405);

-- Initial inserts: cross matched games for 10 player SSRR across 2 dates attending 1.
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('10-SSRR-2-1', 0102);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('10-SSRR-2-1', 0304);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('10-SSRR-2-1', 0105);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('10-SSRR-2-1', 0203);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('10-SSRR-2-1', 0405);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('10-SSRR-2-1', 0103);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('10-SSRR-2-1', 0204);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('10-SSRR-2-1', 0305);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('10-SSRR-2-1', 0104);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('10-SSRR-2-1', 0205);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('10-SSRR-2-2', 0607);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('10-SSRR-2-2', 0809);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('10-SSRR-2-2', 0610);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('10-SSRR-2-2', 0708);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('10-SSRR-2-2', 0910);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('10-SSRR-2-2', 0608);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('10-SSRR-2-2', 0709);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('10-SSRR-2-2', 0810);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('10-SSRR-2-2', 0609);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('10-SSRR-2-2', 0710);

-- Initial inserts: cross matched games for 8 player DRR across 5 dates attending 4 4-6-6-8-8.
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-1', 0103);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-1', 0204);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-1', 0102);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-1', 0304);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-1', 0203);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-1', 0104);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-1', 0204);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-1', 0103);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 0507);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 0108);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 0206);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 0105);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 0607);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 0208);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 0506);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 0107);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 0508);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-2', 0207);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 0608);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 0405);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 0307);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 0406);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 0508);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 0607);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 0305);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 0408);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 0306);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-3', 0708);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0206);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0304);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0105);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0207);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0608);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0405);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0307);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0102);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0408);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0306);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0205);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0407);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0106);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-4', 0308);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0507);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0108);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0203);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0406);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0107);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0205);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0308);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0106);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0407);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0305);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0208);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0104);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0506);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('8-DRR-5-4-6-6-8-8-5', 0708);

-- Initial insert: cross matched games for 4 player DRR across 6 dates.
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('4-DRR-6-1', 0102);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('4-DRR-6-1', 0304);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('4-DRR-6-2', 0401);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('4-DRR-6-2', 0203);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('4-DRR-6-3', 0103);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('4-DRR-6-3', 0204);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('4-DRR-6-4', 0104);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('4-DRR-6-4', 0302);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('4-DRR-6-5', 0201);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('4-DRR-6-5', 0403);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('4-DRR-6-6', 0301);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('4-DRR-6-6', 0402);

-- Initial insert: cross matched games for 4 player SRR across 1 date.
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('4-SRR-1-1', 0102);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('4-SRR-1-1', 0304);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('4-SRR-1-1', 0401);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('4-SRR-1-1', 0203);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('4-SRR-1-1', 0103);
INSERT INTO fixtures (playlist_id, possible_game_id) VALUES ('4-SRR-1-1', 0204);

