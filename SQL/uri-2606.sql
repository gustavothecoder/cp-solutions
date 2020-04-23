/* URI - 2606: https://www.urionlinejudge.com.br/judge/pt/problems/view/2606 */

CREATE TABLE categories(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO categories(name) 
VALUE
('old stock'),
('new stock'),
('modern'),
('commercial'),
('recyclable'),
('executive'),
('superior'),
('wood'),
('super luxury'),
('vintage');

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
('Lampshade', 100, 800, 4),
('Table for painting', 1000, 560, 9),
('Notebook desk', 10000, 25.50, 9),
('Computer desk', 350, 320.50, 6),
('Chair', 3000, 210.64, 9),
('Home alarm', 750, 460, 4);

SELECT products.id, products.name FROM products 
INNER JOIN categories ON categories.id = products.id_categories
WHERE categories.name LIKE 'super%';