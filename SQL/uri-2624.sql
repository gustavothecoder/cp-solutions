/* URI - 2624: https://www.urionlinejudge.com.br/judge/pt/problems/view/2624 */

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
('Cecília Oliveira Rodrigues', 'Rua Sizuka Usuy', 'Cianorte', 'PR', 3170),
('Augusto Fernando Carlos Eduardo Cardoso', 'Rua Baldomiro Koerich', 'Palhoça', 'SC', 1067),
('Nicolas Diogo Cardoso', 'Acesso Um', 'Porto Alegre', 'RS', 475),
('Sabrina Heloisa Gabriela Barros', 'Rua Engenheiro Tito Marques Fernandes', 'Porto Alegre', 'RS', 4312),
('Joaquim Diego Lorenzo Araújo', 'Rua Vitorino', 'Novo Hamburgo', 'RS', 2314);

SELECT COUNT(DISTINCT city) FROM customers;