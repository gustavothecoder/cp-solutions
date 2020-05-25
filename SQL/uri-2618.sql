/* URI - 2618: https://www.urionlinejudge.com.br/judge/pt/problems/view/2618 */

CREATE TABLE categories(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO categories(name)
VALUES 
('Super Luxury'),
('Imported'),
('Tech'),
('Vintage'),
('Supreme');

CREATE TABLE providers(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
street VARCHAR(45) NOT NULL,
city VARCHAR(45) NOT NULL,
state CHAR(2) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO providers(name, street, city, state)
VALUES
('Ajax SA', 'Rua Presidente Castelo Branco', 'Porto Alegre', 'RS'),
('Sansul SA', 'Av Brasil', 'Rio de Janeiro', 'RJ'),
('South Chairs', 'Rua do Moinho', 'Santa Maria', 'RS'),
('Elon Electro', 'Rua Apolo', 'São Paulo', 'SP'),
('Mike Electro', 'Rua Pedro de Cunha', 'Curitiba', 'PR');

CREATE TABLE products(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
amount INT UNSIGNED NOT NULL,
price FLOAT NOT NULL,
id_providers INT UNSIGNED NOT NULL,
id_categories INT UNSIGNED NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(id_providers) REFERENCES providers(id),
FOREIGN KEY(id_categories) REFERENCES categories(id)
);

INSERT INTO products(name, amount, price, id_providers, id_categories)
VALUES
('Blue Chair', 30, 300.00, 5, 5),
('Red Chair', 50, 2150.00, 2, 1),
('Disney Wardrobe', 400, 829.50, 4, 1),
('Blue Toaster', 20, 9.90, 3, 1),
('TV', 30, 300.25, 2, 2);

SELECT products.name, providers.name, categories.name FROM products
JOIN providers ON products.id_providers = providers.id
JOIN categories ON products.id_categories = categories.id
WHERE providers.name = 'Sansul SA' AND categories.name = 'Imported';