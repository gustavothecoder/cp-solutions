/* URI - 2608: https://www.urionlinejudge.com.br/judge/pt/problems/view/2608 */

CREATE TABLE products(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
amount INT UNSIGNED NOT NULL,
price FLOAT NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO products(name, amount, price)
VALUES
('Two-doors wardrobe', 100, 800),
('Dining table', 1000, 560),
('Towel holder', 10000, 25.50),
('Computer desk', 350, 320.50),
('Chair', 3000, 210.64),
('Single bed', 750, 460);

SELECT MAX(price) AS price, MIN(price) AS price FROM products;