/* URI - 2988: https://www.urionlinejudge.com.br/judge/pt/problems/view/2988 */

CREATE TABLE teams(
id SERIAL PRIMARY KEY NOT NULL,
name VARCHAR(50) NOT NULL
);

INSERT INTO teams(name)
VALUES
('CEARA'),
('FORTALEZA'),
('GUARANY DE SOBRAL'),
('FLORESTA');

CREATE TABLE matches(
id SERIAL PRIMARY KEY NOT NULL,
team_1 INT REFERENCES teams(id) NOT NULL,
team_2 INT REFERENCES teams(id) NOT NULL,
team_1_goals INT NOT NULL,
team_2_goals INT NOT NULL
);

INSERT INTO matches(team_1, team_2, team_1_goals, team_2_goals)
VALUES 
(4, 1, 0, 4),
(3, 2, 0, 1),
(1, 3, 3, 0),
(3, 4, 0, 1),
(1, 2, 0, 0),
(2, 4, 2, 1);

SELECT 
name, 

(SELECT COUNT(*) FROM matches
JOIN teams t1 ON t1.id = matches.team_1
JOIN teams t2 ON t2.id = matches.team_2
WHERE team_1 = teams.id OR team_2 = teams.id) AS matches, 

(SELECT COUNT(*) FROM matches
JOIN teams t1 ON t1.id = matches.team_1
JOIN teams t2 ON t2.id = matches.team_2
WHERE (team_1 = teams.id AND team_1_goals > team_2_goals)
OR (team_2 = teams.id AND team_2_goals > team_1_goals)) AS victories,

(SELECT COUNT(*) FROM matches
JOIN teams t1 ON t1.id = matches.team_1
JOIN teams t2 ON t2.id = matches.team_2
WHERE (team_1 = teams.id AND team_1_goals < team_2_goals)
OR (team_2 = teams.id AND team_2_goals < team_1_goals)) AS defeats,

(SELECT COUNT(*) FROM matches
JOIN teams t1 ON t1.id = matches.team_1
JOIN teams t2 ON t2.id = matches.team_2
WHERE (team_1 = teams.id AND team_1_goals = team_2_goals)
OR (team_2 = teams.id AND team_2_goals = team_1_goals)) AS draws,

((SELECT COUNT(*) FROM matches
JOIN teams t1 ON t1.id = matches.team_1
JOIN teams t2 ON t2.id = matches.team_2
WHERE (team_1 = teams.id AND team_1_goals > team_2_goals)
OR (team_2 = teams.id AND team_2_goals > team_1_goals)) * 3)
+ 
(SELECT COUNT(*) FROM matches
JOIN teams t1 ON t1.id = matches.team_1
JOIN teams t2 ON t2.id = matches.team_2
WHERE (team_1 = teams.id AND team_1_goals = team_2_goals)
OR (team_2 = teams.id AND team_2_goals = team_1_goals)) AS score

FROM teams
ORDER BY victories DESC, name;