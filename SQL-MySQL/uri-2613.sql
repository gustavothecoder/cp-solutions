/* URI - 2613: https://www.urionlinejudge.com.br/judge/pt/problems/view/2613 */

CREATE TABLE prices(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
categorie VARCHAR(45) NOT NULL,
value FLOAT NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO prices(categorie, value)
VALUES
('Releases', 3.50),
('Bronze Seal', 2.00),
('Silver Seal', 2.50),
('Gold Seal', 3.00),
('Promotion', 1.50);

CREATE TABLE movies(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
id_prices INT UNSIGNED NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(id_prices) REFERENCES prices(id)
);

INSERT INTO movies(name, id_prices)
VALUES
('Batman', 3),
('The Battle of the Dark Rider', 3),
('White Duck', 5),
('Breaking Barriers', 4),
('The Two Hours', 2);

SELECT movies.id, movies.name FROM movies
INNER JOIN prices ON prices.id = movies.id_prices
WHERE prices.id = '5';