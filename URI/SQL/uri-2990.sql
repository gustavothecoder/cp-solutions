/* URI - 2990: https://www.urionlinejudge.com.br/judge/pt/problems/view/2990 */

CREATE TABLE empregados(
	cpf VARCHAR(15) PRIMARY KEY,
	enome VARCHAR(60),
	salario FLOAT,
	cpf_supervisor VARCHAR(15),
	dnumero INT
);

CREATE TABLE departamentos(
	dnumero INT PRIMARY KEY,
	dnome VARCHAR(60),
	cpf_gerente VARCHAR(15) REFERENCES empregados(cpf)
);

CREATE TABLE trabalha(
	cpf_emp VARCHAR(15) REFERENCES empregados(cpf),
	pnumero INT
);

CREATE TABLE projetos(
	pnumero INT PRIMARY KEY,
	pnome VARCHAR(45),
	dnumero INT REFERENCES departamentos(dnumero)
);

INSERT INTO empregados
VALUES ('49382234322', 'João Silva', 2350, '2434332222', 1010),
			 ('586733922290', 'Mario Silveira', 3500, '2434332222', 1010),
			 ('2434332222', 'Aline Barros', 2350, null, 1010),
			 ('1733332162', 'Tulio Vidal', 8350, null, 1020),
			 ('4244435272', 'Juliana Rodrigues', 3310, null, 1020),
			 ('1014332672', 'Natalia Marques', 2900, null, 1010);

INSERT INTO departamentos
VALUES (1010, 'Pesquisa', '049382234322'),
			 (1020, 'Ensino', '2434332222');

INSERT INTO trabalha
VALUES ('049382234322', 2010),
	     ('586733922290', 2020),
			 ('049382234322', 2020);
			 
INSERT INTO projetos
VALUES (2010, 'Alpha', 1010),
 			 (2020, 'Beta', 1020);

SELECT cpf, enome, dnome FROM empregados
JOIN departamentos ON departamentos.dnumero = empregados.dnumero
LEFT JOIN trabalha ON trabalha.cpf_emp = empregados.cpf
WHERE cpf_emp IS NULL
ORDER BY cpf;
