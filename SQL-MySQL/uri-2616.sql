/* URI - 2616: https://www.urionlinejudge.com.br/judge/pt/problems/view/2616 */

CREATE TABLE customers(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
street VARCHAR(45) NOT NULL,
city VARCHAR(45) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO customers(name, street, city) 
VALUES
('Giovanna Goncalves Oiveira', 'Rua Mato Grosso', 'Canoas'),
('Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia'),
('Rebeca Barbosa Santos', 'Rua Observatório Metereológico', 'Salvador'),
('Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Apucarana'),
('João Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa'),
('Diogo Melo Dias', 'Rua Duzentos e Cinquenta', 'Várzea Grande');

CREATE TABLE locations(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
locations_date DATE NOT NULL,
id_customers INT UNSIGNED NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(id_customers) REFERENCES customers(id)
);

INSERT INTO locations(locations_date, id_customers)
VALUES
('2016-10-09', 3),
('2016-09-02', 1),
('2016-08-02', 4),
('2016-09-02', 2),
('2016-03-02', 6),
('2016-04-04', 4);

SELECT customers.id, customers.name FROM customers
LEFT JOIN locations ON locations.id_customers = customers.id
WHERE locations.id_customers IS NULL
ORDER BY customers.id;