/* URI - 2738: https://www.urionlinejudge.com.br/judge/pt/problems/view/2738 */

CREATE TABLE candidate(
id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL
);

INSERT INTO candidate(name)
VALUES
('Michael P Cannon'),
('Barbra J Cable'),
('Ronald D Jones'),
('Timothy K Fitzsimmons'),
('Ivory B Morrison'),
('Sheila R Denis'),
('Edward C Durgan'),
('Willian K Spencer'),
('Donna D Pursley'),
('Ann C Davis');

CREATE TABLE score(
candidate_id INT REFERENCES candidate(id) NOT NULL,
math INT NOT NULL,
specific INT NOT NULL,
project_plan INT NOT NULL
);

INSERT INTO score
VALUES
(1, 76, 58, 21),
(2, 4, 5, 22),
(3, 15, 59, 12),
(4, 41, 42, 99),
(5, 22, 90, 9),
(6, 82, 77, 15),
(7, 82, 99, 56),
(8, 41, 4, 22),
(9, 16, 29, 94),
(10, 1, 7, 59);

SELECT name, ROUND(((math * 2) + (specific * 3) + (project_plan * 5)) / 10, 2) AS avg
FROM candidate
JOIN score ON score.candidate_id = candidate.id
ORDER BY avg DESC;