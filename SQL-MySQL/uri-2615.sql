/* URI - 2615: https://www.urionlinejudge.com.br/judge/pt/problems/view/2615 */

CREATE TABLE customers(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(45) NOT NULL,
street VARCHAR(45) NOT NULL,
city VARCHAR(45) NOT NULL,
PRIMARY KEY(id)
);

INSERT INTO customers(name, street, city)
VALUES
('Giovanna Goncalves Oliveira', 'Rua Mato Grosso', 'Canoas'),
('Kauã Azevedo Ribeiro', 'Travessa Ibiá', 'Uberlândia'),
('Rebeca Barbosa Santos', 'Rua Observatório Metereológico', 'Salvador'),
('Sarah Carvalho Correia', 'Rua Antônio Carlos da Silva', 'Uberlândia'),
('João Almeida Lima', 'Rua Rio Taiuva', 'Ponta Grossa'),
('Diogo Melo Dias', 'Rua Duzentos e Cinquenta', 'Várzea Grande');

SELECT DISTINCT city FROM customers;