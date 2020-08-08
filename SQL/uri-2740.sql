/* URI - 2740: https://www.urionlinejudge.com.br/judge/pt/problems/view/2740 */

CREATE TABLE league(
position SERIAL PRIMARY KEY NOT NULL,
team VARCHAR(25) NOT NULL
);

INSERT INTO league(team)
VALUES
('The Quack Bats'),
('The Responsible Hornets'),
('The Bawdy Dolphins'),
('The Abstracted Sharks'),
('The Nervous Zebras'),
('The Oafish Owls'),
('The Unequaled Bison'),
('The Keen Kangaroos'),
('The Left Nightingales'),
('The Terrific Elks'),
('The Lumpy Frogs'),
('The Swift Buffalo'),
('The Big Chargers'),
('The Rough Robins'),
('The Silver Crocs');

(SELECT CONCAT('Podium: ', team) AS name FROM league
LIMIT 3)
UNION ALL
(SELECT CONCAT('Demoted: ', team) AS name FROM league
OFFSET (SELECT COUNT(position) FROM league) - 2);