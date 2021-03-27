-- URI-2995: https://www.urionlinejudge.com.br/judge/en/problems/view/2996

CREATE TABLE records(
	id SERIAL PRIMARY KEY,
	temperature INT,
	mark INT
);

INSERT INTO records(temperature, mark)
VALUES (30, 1),
	   (30, 1),
	   (30, 1),
	   (32, 2),
	   (32, 2),
	   (32, 2),
	   (32, 2),
	   (30, 3),
	   (30, 3),
	   (30, 3),
	   (31, 4),
	   (31, 4),
	   (33, 5),
	   (33, 5),
	   (33, 5);
	   
SELECT temperature, COUNT(temperature) number_of_records
FROM records 
GROUP BY mark, temperature
ORDER BY mark;
