/* URI - 2609: https://www.urionlinejudge.com.br/judge/pt/problems/view/2609 */

CREATE TABLE categories(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO categories(name)
VALUES
('wood'),
('luxury'),
('vintage'),
('modern'),
('super luxury');

CREATE TABLE products(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
amount INT UNSIGNED NOT NULL,
price FLOAT NOT NULL,
id_categories INT UNSIGNED NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(id_categories) REFERENCES categories(id)
);

INSERT INTO products(name, amount, price, id_categories)
VALUES
('Two-doors wardrobe', 100, 800, 1),
('Dining table', 1000, 560, 3),
('Towel holder', 10000, 25.50, 4),
('Computer desk', 350, 320.50, 2),
('Chair', 3000, 210.64, 4),
('Single bed', 750, 460, 1);

SELECT categories.name, SUM(products.amount) AS sum FROM categories 
INNER JOIN products ON products.id_categories = categories.id
GROUP BY categories.name;