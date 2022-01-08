/* URI - 2994: https://www.urionlinejudge.com.br/judge/pt/problems/view/2994 */

CREATE TABLE doctors(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50)
);

CREATE TABLE work_shifts(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	bonus NUMERIC
);

CREATE TABLE attendances(
	id SERIAL PRIMARY KEY,
	id_doctor INT REFERENCES doctors(id),
	hours INT,
	id_work_shift INT REFERENCES work_shifts(id)
);

INSERT INTO doctors(name)
VALUES ('Arlino'),
			 ('Tiago'),
			 ('Amanda'),
			 ('Wellington');

INSERT INTO work_shifts(name, bonus)
VALUES ('nocturnal', 15),
			 ('afternoon', 2),
			 ('day', 1);
			 
INSERT INTO attendances (id_doctor, hours, id_work_shift) 
VALUES (1, 5, 1), 
 			 (3, 2, 1), 
			 (3, 3, 2), 
			 (2, 2, 3), 
			 (1, 5, 3), 
			 (4, 1, 3), 
			 (4, 2, 1), 
			 (3, 2, 2), 
			 (2, 4, 2);

SELECT 
	doctors.name,
	ROUND(SUM((hours * 150) + ((hours * 150) * (bonus / 100))), 1) as salary
FROM attendances
JOIN doctors ON doctors.id = id_doctor
JOIN work_shifts ON work_shifts.id = id_work_shift
GROUP BY doctors.name
ORDER BY salary DESC;
