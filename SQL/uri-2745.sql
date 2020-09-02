/* URI - 2745: https://www.urionlinejudge.com.br/judge/pt/problems/view/2745 */

CREATE TABLE people(
id SERIAL PRIMARY KEY NOT NULL,
name VARCHAR(25) NOT NULL,
salary INT NOT NULL
);

INSERT INTO people(name, salary)
VALUES
('James M. Tabarez', 883),
('Rafael T. Hendon', 4281),
('Linda J. Gardner', 4437),
('Nicholas J. Conn', 8011),
('Karol A. Morales', 2508),
('Lolita S. Graves', 8709);

SELECT name, ROUND(salary * 0.1, 2) AS tax FROM people
WHERE salary > 3000;