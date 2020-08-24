/* URI - 2743: https://www.urionlinejudge.com.br/judge/pt/problems/view/2743 */

CREATE TABLE people(
id SERIAL PRIMARY KEY NOT NULL,
name VARCHAR(25) NOT NULL
);

INSERT INTO people(name)
VALUES
('Karen'),
('Manuel'),
('Ygor'),
('Valentine'),
('Jo');

SELECT name, CHAR_LENGTH(name) AS length FROM people
ORDER BY length DESC;