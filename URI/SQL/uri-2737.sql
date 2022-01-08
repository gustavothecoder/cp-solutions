/* URI - 2737: https://www.urionlinejudge.com.br/judge/pt/problems/view/2737 */

CREATE TABLE lawyers(
register INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
customers_number INT NOT NULL
);

INSERT INTO lawyers
VALUES
(1648, 'Marty M. Harrison', 5),
(2427, 'Jonathan J. Blevins', 15),
(3365, 'Chelsey D. Sanders', 20),
(4153, 'Dorothy W. Ford', 16),
(5525, 'Penny J. Cormier', 6);

SELECT name, customers_number FROM(
SELECT name, customers_number, 1 AS filter FROM lawyers WHERE customers_number = (SELECT MAX(customers_number) FROM lawyers)
UNION
SELECT name, customers_number, 2 AS filter FROM lawyers WHERE customers_number = (SELECT MIN(customers_number) FROM lawyers)
UNION
SELECT 'Average' AS name, ROUND(AVG(customers_number)) AS customers_number, 3 AS filter FROM lawyers
) AS uri ORDER BY filter;