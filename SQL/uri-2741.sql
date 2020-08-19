/* URI - 2741: https://www.urionlinejudge.com.br/judge/pt/problems/view/2741 */

CREATE TABLE students(
id SERIAL PRIMARY KEY NOT NULL,
name VARCHAR(50) NOT NULL,
grade FLOAT NOT NULL
);

INSERT INTO students(name, grade)
VALUES
('Terry B. Padilla', 7.3),
('William S. Ray', 0.6),
('Barbara A. Gongora', 5.2),
('Julie B. Manzer', 6.7),
('Teresa J. Axtell', 4.6),
('Ben M. Dantzler', 9.6);

SELECT CONCAT('Approved: ', name) AS name, grade FROM students
WHERE grade >= 7.0
ORDER BY grade DESC;