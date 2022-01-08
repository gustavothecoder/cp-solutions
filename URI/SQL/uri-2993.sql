/* URI - 2993: https://www.urionlinejudge.com.br/judge/pt/problems/view/2993 */

CREATE TABLE value_table(
	amount INT
);

INSERT INTO value_table
VALUES (4), 
			 (6), 
			 (7), 
			 (1), 
			 (1), 
			 (2), 
			 (3), 
			 (2), 
			 (3), 
			 (1), 
			 (5), 
			 (6), 
			 (1), 
			 (7), 
			 (8), 
			 (9), 
			 (10), 
			 (11), 
			 (12), 
			 (4), 
			 (5), 
			 (5), 
			 (3), 
			 (6), 
			 (2), 
			 (2), 
			 (1);

SELECT frequency_of_values.amount AS most_frequent_value
FROM 
(
	SELECT amount, COUNT(amount) AS frequency FROM value_table
	GROUP BY amount
	ORDER BY frequency DESC
) frequency_of_values
LIMIT 1;
