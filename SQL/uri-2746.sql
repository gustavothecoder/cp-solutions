/* URI - 2746: https://www.urionlinejudge.com.br/judge/pt/problems/view/2746 */

CREATE TABLE virus(
id SERIAL PRIMARY KEY NOT NULL,
name VARCHAR(25) NOT NULL
);

INSERT INTO virus(name)
VALUES
('H1RT'),
('H7H1'),
('HUN8'),
('XH1HX'),
('XXXX');

SELECT REPLACE(name, 'H1', 'X') AS name FROM virus;