/* URI - 2603: https://www.urionlinejudge.com.br/judge/pt/problems/view/2603 */

CREATE TABLE customers(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    street VARCHAR(50) NOT NULL,
    city VARCHAR(45) NOT NULL,
    state CHAR(2) NOT NULL,
    credit_limit FLOAT NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO customers(name, street, city, state, credit_limit) VALUES('Pedro Augusto da Rocha', 'Rua Pedro Carlos Hoffman', 'Porto Alegre', 'RS', 700.00),
																	 ('Antonio Carlos Mamel', 'Av. Pinheiros', 'Belo Horizonte', 'MG', 3500.50),
                                                                     ('Luiza Augusta Mhor', 'Rua Salto Grande', 'Niteroi', 'RJ', 4000.00),
                                                                     ('Jane Ester', 'Av. 7 de setembro', 'Erechim', 'RS', 800.00),
                                                                     ('Marcos Antônio dos Santos', 'Av. Farrapos', 'Porto Alegre', 'RS', 4250.25);

SELECT name, street FROM customers WHERE city = 'Porto Alegre';