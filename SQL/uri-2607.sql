/* URI - 2607: https://www.urionlinejudge.com.br/judge/pt/problems/view/2607 */

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
('Henrique', 'Av Brasil' ,'Rio de Janeiro' ,'RJ'),
('Marcelo Augusto', 'Rua Imigrantes' ,'Belo Horizonte' ,'MG'),
('Caroline Silva', 'Av São Paulo' ,'Salvador' ,'BA'),
('Guilherme Staff', 'Rua Central' ,'Porto Alegre' ,'RS'),
('Isabela Moraes', 'Av Juiz Grande' ,'Curitiba' ,'PR'),
('Francisco Accerr', 'Av Paulista' ,'São Paulo' ,'SP');

SELECT city FROM providers ORDER BY city;                                                       