/* URI - 2739: https://www.urionlinejudge.com.br/judge/pt/problems/view/2739 */

CREATE TABLE loan(
id SERIAL PRIMARY KEY NOT NULL,
name VARCHAR(50) NOT NULL,
value FLOAT NOT NULL,
payday TIMESTAMP NOT NULL
);

INSERT INTO loan(name, value, payday)
VALUES
('Cristian Ghyprievy', 3000.50, '2017-10-19'),
('John Serial', 10000, '2017-10-10'),
('Michael Seven', 5000.40, '2017-10-17'),
('Joana Cabel', 2000, '2017-10-05'),
('Miguel Santos', 4050, '2017-10-20');

SELECT name, CAST(EXTRACT(DAY FROM payday) AS INT) FROM loan;