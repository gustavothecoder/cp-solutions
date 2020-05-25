/* URI - 2617: https://www.urionlinejudge.com.br/judge/pt/problems/view/2617 */

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
('Ajax SA', 'Presidente Castelo Branco', 'Porto Alegre', 'RS'),
('Sansul SA', 'Av Brasil', 'Rio de Janeiro', 'RJ'),
('South Chairs', 'Av Moinho', 'Santa Maria', 'RS'),
('Elon Electro', 'Apolo', 'São Paulo', 'SP'),
('Mike Electro', 'Pedro de Cunha', 'Curitiba', 'PR');

CREATE TABLE products(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
amount INT UNSIGNED NOT NULL,
price FLOAT NOT NULL,
id_providers INT UNSIGNED NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(id_providers) REFERENCES providers(id)
);

INSERT INTO products(name, amount, price, id_providers)
VALUES
('Blue Chair', 30, 300.00, 5),
('Red Chair', 50, 21.50, 1),
('Disney Wardrobe', 400, 829.50, 4),
('Blue Toaster', 20, 9.90, 3),
('Solar Panel', 30, 3000.25, 4);

SELECT products.name, providers.name FROM products
JOIN providers ON products.id_providers = providers.id
WHERE providers.name = 'Ajax SA';