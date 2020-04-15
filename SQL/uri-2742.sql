/*URI - 2742: https://www.urionlinejudge.com.br/judge/pt/problems/view/2742*/

CREATE TABLE dimensions(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO dimensions(name) VALUES('C774'),
								   ('C784'),
                                   ('C794'),
                                   ('C824'),
                                   ('C875');
                                   
CREATE TABLE life_registry(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    omega FLOAT NOT NULL,
	dimensions_id INT UNSIGNED NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(dimensions_id) REFERENCES dimensions(id)
);

INSERT INTO life_registry(name, omega, dimensions_id) VALUES('Richard Postman', 5.6, 2),
															('Simple Jelly', 1.4, 1),
                                                            ('Richard Gran Master', 2.5, 1),
                                                            ('Richard Turing', 6.4, 4),
                                                            ('Richard Strall', 1.0, 3);
                                                            
SELECT life_registry.name, ROUND((life_registry.omega * 1.618), 3) AS "Fator N" 
FROM life_registry
INNER JOIN dimensions ON dimensions.id = life_registry.dimensions_id
WHERE dimensions.name IN('C875', 'C774') 
AND life_registry.name LIKE 'Richar%'
ORDER BY 2;