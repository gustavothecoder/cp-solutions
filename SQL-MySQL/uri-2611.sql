/* URI - 2611: https://www.urionlinejudge.com.br/judge/pt/problems/view/2611 */

CREATE TABLE genres(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
description VARCHAR(450) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO genres(description)
VALUES
('Animation'),
('Horror'),
('Action'),
('Drama'),
('Comedy');

CREATE TABLE movies(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
id_genres INT UNSIGNED NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(id_genres) REFERENCES genres(id)
);

INSERT INTO movies(name, id_genres)
VALUES
('Batman', 3),
('The battle of Dark River', 3),
('White Duck', 1),
('Breaking Barriers', 4),
('The two hours', 2);

SELECT movies.id, movies.name FROM movies 
INNER JOIN genres ON genres.id = movies.id_genres
WHERE genres.description = 'Action';