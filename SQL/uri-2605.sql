/* URI - 2605: https://www.urionlinejudge.com.br/judge/pt/problems/view/2605 */

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
('Henrique', 'Av Brasil', 'Rio de Janeiro', 'RJ'),
('Marcelo Augusto', 'Rua Imigrantes', 'Belo Horizonte', 'MG'),
('Caroline Silva', 'Av São Paulo', 'Salvador', 'BA'),
('Guilherme Staff', 'Rua Central', 'Porto Alegre', 'RS'),
('Isabela Moraes', 'Av Juiz Grande', 'Curitiba', 'PR'),
('Francisco Accerr', 'Av Paulista', 'São Paulo', 'SP');

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
('Two-door wardrobe', 100, 800, 6, 8),
('Dining table', 1000, 560, 1, 9),
('Towel holder', 10000, 25.50, 5, 1),
('Computer desk', 350, 320.50, 4, 6),
('Chair', 3000, 210.64, 3, 6),
('Single bed', 750, 460, 1, 2);
                                                                             
SELECT products.name, providers.name FROM products
INNER JOIN providers ON providers.id = products.id_providers
WHERE products.id_categories = 6;