-- URI-2999: https://www.urionlinejudge.com.br/judge/en/problems/view/2999

CREATE TABLE departamento(
	cod_dep INTEGER PRIMARY KEY,
	nome VARCHAR(50),
	endereco VARCHAR(50)
);
 
CREATE TABLE divisao(
	cod_divisao INTEGER PRIMARY KEY,
	nome VARCHAR(50),
	endereco VARCHAR(50),
	cod_dep INTEGER REFERENCES departamento (cod_dep)
);
 
CREATE TABLE empregado(
	matr INTEGER PRIMARY KEY,
	nome VARCHAR(50),
	endereco VARCHAR(50),
	data_lotacao TIMESTAMP,
	lotacao INTEGER,
	gerencia_cod_dep INTEGER REFERENCES departamento (cod_dep),
	lotacao_div INTEGER REFERENCES divisao (cod_divisao),
	gerencia_div INTEGER REFERENCES divisao (cod_divisao)
);
 
CREATE TABLE dependente(
	matr INTEGER REFERENCES empregado (matr),
	nome VARCHAR(50),
	endereco VARCHAR(50)
);
 
CREATE TABLE desconto(
	cod_desc INTEGER PRIMARY KEY,
	nome VARCHAR(50),
	tipo VARCHAR(10),
	valor NUMERIC
);
 
CREATE TABLE vencimento(
	cod_venc INTEGER PRIMARY KEY,
	nome VARCHAR(50),
	tipo VARCHAR(10),
	valor NUMERIC
);
 
CREATE TABLE emp_desc(
	cod_desc INTEGER REFERENCES desconto (cod_desc),
	matr INTEGER REFERENCES empregado (matr)
);
 
CREATE TABLE emp_venc(
	cod_venc INTEGER REFERENCES vencimento (cod_venc),
	matr INTEGER REFERENCES empregado (matr)
); 
 
INSERT INTO departamento 
VALUES(1, 'Contabilidade', 'R. X'),
	  (2, 'TI', 'R. Y'),
	  (3, 'Engenharia', 'R. Y');
 
INSERT INTO divisao 
VALUES(11, 'Ativo', 'R. X', 1),
	  (12, 'Passivo', 'R. X', 1),
	  (21, 'Desenvoilvimento de Projetos', 'R. Y', 2),
	  (22, 'Analise de Sistemas', 'R. Y', 2),
	  (23, 'Programacao', 'R. W', 2),
	  (31, 'Concreto', 'R. Y', 3),
	  (32, 'Calculo Estrutural', 'R. Y', 3);

INSERT INTO empregado 
VALUES(9999, 'Jose Sampaio', 'R. Z', '2006-06-06T00:00:00Z', 1, 1, 12, NULL),
	  (33, 'Jose Maria', 'R. 21', '2006-03-01T00:00:00Z', 1, NULL, 11, 11),
	  (1, 'Maria Jose', 'R. 52', '2003-03-01T00:00:00Z', 1, NULL, 11, NULL),
	  (7, 'Yasmim', 'R. 13', '2010-07-02T00:00:00Z', 1, NULL, 11, NULL),
	  (5, 'Rebeca', 'R. 1', '2011-04-01T00:00:00Z', 1, NULL, 12, 12),
	  (13, 'Sofia', 'R. 28', '2010-09-09T00:00:00Z', 1, NULL, 12, NULL),
	  (27, 'Andre', 'R. Z', '2005-05-01T00:00:00Z', 2, 2, 22, NULL),
	  (88, 'Yami', 'R. T', '2014-02-01T00:00:00Z', 2, NULL, 21, 21),
	  (431, 'Joao da Silva', 'R. Y', '2011-07-03T00:00:00Z', 2, NULL, 21, NULL),
	  (135, 'Ricardo Reis', 'R. 33', '2009-08-01T00:00:00Z', 2, NULL, 21, NULL),
	  (254, 'Barbara', 'R. Z', '2008-01-03T00:00:00Z', 2, NULL, 22, 22),
	  (371, 'Ines', 'R. Y', '2005-01-01T00:00:00Z', 2, NULL, 22, NULL),
	  (476, 'Flor', 'R. Z', '2015-10-28T00:00:00Z', 2, NULL, 23, 23),
	  (25, 'Lina', 'R. 67', '2014-09-01T00:00:00Z', 2, NULL, 23, NULL),
	  (3, 'Jose da Silva', 'R. 8', '2011-01-02T00:00:00Z', 3, 3, 31, NULL),
	  (71, 'Silverio dos Reis', 'R. C', '2009-01-05T00:00:00Z', 3, NULL, 31, 31),
	  (91, 'Reis da Silva', 'R. Z', '2011-11-05T00:00:00Z', 3, NULL, 31, NULL),
	  (55, 'Lucas', 'R. 31', '2013-07-01T00:00:00Z', 3, NULL, 32, 32),
	  (222, 'Marina', 'R. 31', '2015-01-07T00:00:00Z', 3, NULL, 32, NULL),
	  (725, 'Angelo', 'R. X', '2001-03-01T00:00:00Z', 2, NULL, 21, NULL);
  
INSERT INTO dependente
VALUES(9999, 'Francisco Jose', 'R. Z'),
	  (88, 'Maria da Silva', 'R. T'),
	  (55, 'Virgulino da Silva', 'R. 31');
 
INSERT INTO desconto
VALUES(91, 'IR', 'V', 400),
	  (92, 'Plano de saude', 'V', 300),
	  (93, NULL, NULL, NULL);

INSERT INTO vencimento
VALUES(1, 'Salario base Analista de Sistemas', 'V', 5000),
	  (2, 'Salario base Contador', 'V', 3000),
	  (3, 'Salario Base Engenheiro', 'V', 4500),
	  (4, 'Salario Base Projetista Software', 'V', 5000),
	  (5, 'Salario Base Programador de Sistemas', 'V', 3000),
	  (6, 'Gratificacao Chefia Departamento', 'V', 3750),
	  (7, 'Gratificacao Chefia Divisao', 'V', 2200),
	  (8, 'Salario Trabalhador Costrucao Civil', 'V', 800),
	  (9, 'Auxilio Salario Familia', 'V', 300),
	  (10, 'Gratificacao Tempo de servico', 'V', 350),
	  (11, 'Insalubridade', 'V', 800),
	  (12, 'Gratificacao por titulacao - Doutorado', 'V', 2000),
	  (13, 'Gratificacao por Titularidade - Mestrado', 'v', 800);
    
INSERT INTO emp_desc
VALUES(91, 3),
	  (91, 27),
	  (91, 9999),
	  (92, 27),
	  (92, 71),
	  (92, 88),
	  (92, 9999);
  
INSERT INTO emp_venc
VALUES(1, 27),
	  (1, 88),
	  (1, 135),
	  (1, 254),
	  (1, 431),
	  (2, 1),
	  (2, 5),
	  (2, 7),
	  (2, 13),
	  (2, 33),
	  (2, 9999),
	  (3, 3),
	  (3, 55),
	  (3, 71),
	  (3, 222),
	  (4, 25),
	  (4, 476),
	  (5, 371),
	  (6, 3),
	  (6, 27),
	  (6, 9999),
	  (7, 5),
	  (7, 33),
	  (7, 55),
	  (7, 71),
	  (7, 88),
	  (7, 254),
	  (7, 476),
	  (8, 25),
	  (8, 91),
	  (9, 1),
	  (9, 27),
	  (9, 91),
	  (9, 135),
	  (9, 371),
	  (9, 9999),
	  (10, 371),
	  (10, 9999),
	  (11, 91),
	  (12, 3),
	  (12, 27),
	  (12, 254),
	  (12, 9999),
	  (13, 3),
	  (13, 5),
	  (13, 7),
	  (13, 25),
	  (13, 33),
	  (13, 88),
	  (13, 135);

SELECT nome, salario
FROM (
	SELECT 
		nome, 
		ROUND(COALESCE(salario, 0), 2) salario, 
		media_salarial
	FROM empregado
	LEFT JOIN (
		SELECT 
			empregado.matr, 
			COALESCE(salario_bruto, 0) - COALESCE(desconto, 0) salario,
			AVG(COALESCE(salario_bruto, 0) - COALESCE(desconto, 0)) 
				OVER (PARTITION BY lotacao_div) media_salarial
		FROM empregado 
		LEFT JOIN (
			SELECT matr, SUM(vencimento.valor) salario_bruto 
			FROM emp_venc
			JOIN vencimento ON vencimento.cod_venc = emp_venc.cod_venc
			GROUP BY emp_venc.matr
		) calculo_salario_bruto ON calculo_salario_bruto.matr = empregado.matr 
		LEFT JOIN (
			SELECT matr, SUM(COALESCE(desconto.valor, 0)) desconto 
			FROM emp_desc
			JOIN desconto ON desconto.cod_desc = emp_desc.cod_desc
			GROUP BY emp_desc.matr
		) calculo_desconto ON calculo_desconto.matr = empregado.matr
	) calculo_salario_liquido ON calculo_salario_liquido.matr = empregado.matr
	WHERE salario > media_salarial
) resultado
ORDER BY salario DESC;
