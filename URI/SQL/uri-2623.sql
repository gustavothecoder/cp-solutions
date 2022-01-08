/* URI - 2623: https://www.urionlinejudge.com.br/judge/pt/problems/view/2623 */

CREATE TABLE categories(
id int PRIMARY KEY,
name VARCHAR(45) NOT NULL
);

INSERT INTO categories(id, name)
VALUES
(1, 'Superior'),
(2, 'Super Luxury'),
(3, 'Modern'),
(4, 'Nerd'),
(5, 'Infantile'),
(6, 'Robust'),
(9,'Wood');

CREATE TABLE products(
id SERIAL PRIMARY KEY,
name VARCHAR(45) NOT NULL,
amount INT NOT NULL,
price FLOAT NOT NULL,
id_categories INT REFERENCES categories(id)
);

INSERT INTO products(name, amount, price, id_categories)
VALUES
('Blue Chair', 30, 300.00, 9),
('Red Chair', 200, 2150.00, 2),
('Disney Wardrobe', 400, 829.50, 4),
('Blue Toaster', 20, 9.90, 3),
('Solar Panel', 30, 3000.25, 4);

SELECT products.name, categories.name FROM products
JOIN categories ON products.id_categories = categories.id
WHERE products.amount > 100 AND products.id_categories IN(1, 2, 3, 6, 9);