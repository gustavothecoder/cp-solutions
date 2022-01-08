/* URI - 2620: https://www.urionlinejudge.com.br/judge/pt/problems/view/2620 */

CREATE TABLE customers(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
street VARCHAR(45) NOT NULL,
city VARCHAR(45) NOT NULL,
state CHAR(2) NOT NULL,
credit_limit INT UNSIGNED NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO customers(name, street, city, state, credit_limit)
VALUES
('Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
('Cecília Olivia Rodrigues', 'Rua Sizuka Usuy', 'Cianorte', 'PR', 3170),
('Augusto Fernando Carlos Eduardo Cardoso', 'Rua Baldomiro Koerich', 'Palhoça', 'SC', 1067),
('Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
('Sabrina Heloisa Gabriela Barros', 'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre', 'RS', 4312),
('Joaquim Diego Lorenzo Araújo', 'Rua Vitorino', 'Novo Hamburgo', 'RS', 2314);

SELECT * FROM customers;

CREATE TABLE orders(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
orders_date DATE NOT NULL,
id_customers INT UNSIGNED NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(id_customers) REFERENCES customers(id)
);

INSERT INTO orders(orders_date, id_customers)
VALUES
('2016-05-13', 3),
('2016-01-12', 2),
('2016-04-18', 5),
('2016-09-07', 4),
('2016-02-13', 6),
('2016-08-05', 3);

SELECT customers.name, orders.id FROM customers
JOIN orders ON customers.id = orders.id_customers
WHERE EXTRACT(MONTH FROM orders.orders_date) BETWEEN 1 AND 6
ORDER BY orders.id;