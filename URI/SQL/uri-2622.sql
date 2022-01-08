/* URI - 2622: https://www.urionlinejudge.com.br/judge/pt/problems/view/2622 */

CREATE TABLE customers(
id SERIAL PRIMARY KEY,
name VARCHAR(45) NOT NULL,
street VARCHAR(45) NOT NULL,
city VARCHAR(45) NOT NULL,
state CHAR(2) NOT NULL,
credit_limit INT NOT NULL
);

INSERT INTO customers(name, street, city, state, credit_limit)
VALUES
('Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
('Cecília Olivia Rodrigues', 'Rua Sizuka Usuy', 'Cianorte', 'PR', 3170),
('Augusto Fernando Carlos Eduardo Cardoso', 'Rua Baldomiro Koerich', 'Palhoça', 'SC', 1067),
('Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
('Sabrina Carolina Gabriela Barros', 'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre', 'RS', 4312),
('Joaquim Diego Lorenzo Araújo', 'Rua Vitorino', 'Novo Hamburgo', 'RS', 2314);

CREATE TABLE legal_person(
id_curstomers INT REFERENCES customers(id) NOT NULL,
cnpj CHAR(18) NOT NULL,
contact VARCHAR(45) NOT NULL
);

INSERT INTO legal_person(id_curstomers, cnpj, contact)
VALUES
(4, '85883842000191', '99767-0562'),
(5, '47773848000117', '99100-8965');

SELECT name FROM customers
JOIN legal_person ON id_curstomers = id;