/* URI - 2625: https://www.urionlinejudge.com.br/judge/pt/problems/view/2625 */

CREATE TABLE customers(
id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
street VARCHAR(50) NOT NULL,
city VARCHAR(25) NOT NULL,
state CHAR(2) NOT NULL,
credit_limit INT NOT NULL
);

INSERT INTO customers(name, street, city, state, credit_limit)
VALUES 
('Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
('Cecília Olivia Rodrigues', 'Rua Sizuka Usuy', 'Cianorte', 'PR', 3170),
('Augusto Fernando Carlos Eduardo Cardoso', 'Rua Baldomiro Koerich', 'Palhoça', 'SC', 1067),
('Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
('Sabrina Heloisa Gabriela Barros', 'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre', 'RS', 4312),
('Joaquim Diego Lorenzo Araújo', 'Rua Vitorino', 'Novo Hamburgo', 'RS', 2314);

CREATE TABLE natural_person(
id_customers INT REFERENCES customers(id) NOT NULL,
cpf CHAR(14) NOT NULL
);

INSERT INTO natural_person
VALUES
(1, '26774287840'),
(2, '97918477200');

SELECT 
SUBSTR(cpf, 1, 3) ||'.'||
SUBSTR(cpf, 4, 3) ||'.'||
SUBSTR(cpf, 7, 3) ||'-'||
SUBSTR(cpf, 10) as cpf
FROM natural_person;