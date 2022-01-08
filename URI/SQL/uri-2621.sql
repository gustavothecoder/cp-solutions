/* URI - 2621: https://www.urionlinejudge.com.br/judge/pt/problems/view/2621 */

CREATE TABLE providers(
id SERIAL PRIMARY KEY,
name VARCHAR(45) NOT NULL,
street VARCHAR(45) NOT NULL,
city VARCHAR(45) NOT NULL,
state CHAR(2) NOT NULL
);

INSERT INTO providers(name, street, city, state)
VALUES
('Ajax SA', 'Rua Presidente Castelo Branco', 'Porto Alegre', 'RS'),
('Sansul SA', 'Av Brasil', 'Rio de Janeiro', 'RJ'),
('Pr Sheppard Chairs', 'Rua da Moinho', 'Santa Maria', 'RS'),
('Elon Electro', 'Rua Apolo', 'São Paulo', 'SP'),
('Mike Electro', 'Rua Pedro da Cunha', 'Curitiba', 'PR');

CREATE TABLE products(
id SERIAL PRIMARY KEY,
name VARCHAR(45) NOT NULL,
amount INT NOT NULL,
price FLOAT NOT NULL,
id_providers INT REFERENCES providers(id)
);

INSERT INTO products(name, amount, price, id_providers)
VALUES
('Blue Chair', 30, 300.00, 5),
('Red Chair', 50, 2150.00, 2),
('Disney Wardrobe', 400, 829.50, 4),
('Executive Chair', 17, 9.90, 3),
('Solar Panel', 30, 3000.25, 4);

SELECT products.name FROM products
JOIN providers ON providers.id = products.id_providers
WHERE products.amount BETWEEN 10 AND 20
AND providers.name LIKE 'P%';