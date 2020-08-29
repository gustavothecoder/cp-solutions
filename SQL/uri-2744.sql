/* URI - 2744: https://www.urionlinejudge.com.br/judge/pt/problems/view/2744 */

CREATE TABLE account(
id SERIAL PRIMARY KEY NOT NULL,
name VARCHAR(50) NOT NULL,
login VARCHAR(25) NOT NULL,
password VARCHAR(25) NOT NULL
);

INSERT INTO account(name, login, password)
VALUES
('Joyce P. Parry', 'Promeraw', 'noh1Oozei'),
('Michael T. Gonzalez', 'Phers1942', 'Iath3see9bi'),
('Heather W. Lawless', 'Hankicht', 'diShono4'),
('Otis C. Hitt', 'Conalothe', 'zooFohH7w'),
('Roger N. Brownfield', 'Worseente', 'fah7ohNg');

SELECT id, password, MD5(password) FROM account;