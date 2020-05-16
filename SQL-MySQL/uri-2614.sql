/* URI - 2614: https://www.urionlinejudge.com.br/judge/pt/problems/view/2614 */

CREATE TABLE customers(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
street VARCHAR(45) NOT NULL,
city VARCHAR(45) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO customers(name, street, city)
VALUES
('Giovana Golcalves Oliveira', 'Rua Mato Grosso', 'Canoas'),
('Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia'),
('Rebeca Barbosa Santos', 'Rua Observatório Metereológico', 'Salvador'),
('Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Apucarana'),
('João Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa'),
('Diogo Melo Dias', 'Rua Duzentos e Cinquenta', 'Várzea Grande');

CREATE TABLE rentals(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
rentals_date DATE NOT NULL,
id_customers INT UNSIGNED NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(id_customers) REFERENCES customers(id)
);

INSERT INTO rentals(rentals_date, id_customers)
VALUES
('2016-10-09', 3),
('2016-09-02', 1),
('2016-08-02', 4),
('2016-08-02', 2),
('2016-03-02', 6),
('2016-04-04', 4);

SELECT customers.name, rentals.rentals_date FROM  customers
INNER JOIN rentals ON rentals.id_customers = customers.id
WHERE rentals.rentals_date BETWEEN '2016-09-01' AND '2016-09-30';