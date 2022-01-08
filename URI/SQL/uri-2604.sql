/* URI - 2604: https://www.urionlinejudge.com.br/judge/pt/problems/view/2604 */

CREATE TABLE products(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    amount INT UNSIGNED NOT NULL,
    price FLOAT NOT NULL,
    PRIMARY KEY(id)
);

INSERT INTO products(name, amount, price) VALUES('Two-door wardrobe', 100, 80),
												('Dining table', 1000, 560),
                                                ('Towel holder', 10000, 5.50),
                                                ('Computer desk', 350, 100),
                                                ('Chair', 3000, 210.64),
                                                ('Single bed', 750, 99);

SELECT id, name FROM products WHERE price < 10 OR price > 100;