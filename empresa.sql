CREATE DATABASE empresa;

USE empresa;

SHOW DATABASES;

CREATE TABLE cadfun (
	codigo		INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome		VARCHAR(40) NOT NULL,
    dpto		CHAR(2),
    funcao		CHAR(20),
    salario		DECIMAL(10,2)
); -- use INTEGER ou INT (sinonimos)

SHOW TABLES;

DESCRIBE cadfun;

INSERT INTO cadfun (nome, dpto, funcao, salario)
			VALUES ('JOAO DA SILVA', '2', 'GERENTE', 7985.75);
            
-- Forma simplificada
INSERT INTO cadfun VALUES (2, 'WILSON MACEDO', '3', 'PROGRAMADOR', 3985.75);
INSERT INTO cadfun VALUES (3, 'ANA BASTOS', '2', 'ANALISTA', 4985.75);

SELECT * FROM cadfun;

SELECT nome, funcao FROM cadfun;

SELECT nome FROM cadfun WHERE dpto = '3';

SELECT nome, salario FROM cadfun ORDER BY nome;

SELECT nome, salario FROM cadfun ORDER BY nome DESC;

SELECT dpto, nome FROM cadfun ORDER BY dpto, nome DESC;

SELECT nome FROM cadfun WHERE dpto = '3' ORDER BY nome;

UPDATE cadfun SET dpto = '3' WHERE nome = 'ANA BASTOS';

UPDATE cadfun SET salario = salario * 1.10;

DELETE FROM cadfun;

ALTER TABLE cadfun ADD admissao DATE;

UPDATE cadfun SET admissao = '2024-04-17' WHERE funcao = 'PROGRAMADOR';

SELECT nome, admissao FROM cadfun WHERE admissao >= '2024-01-01';

CREATE TABLE copia_cadfun (
	codigo		INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome		VARCHAR(40) NOT NULL,
    dpto		CHAR(2),
    funcao		CHAR(20),
    salario		DECIMAL(10,2)
);

INSERT INTO copia_cadfun
	SELECT codigo, nome, dpto, funcao, salario
    FROM cadfun
    WHERE codigo >= 2 AND codigo <= 5;
    
SELECT		5 + 7.5, 5 - 7.5, 5 * 7.5, 5 / 7.5;

SELECT * FROM cadfun WHERE (dpto = '3') AND (funcao = 'programador');
SELECT * FROM cadfun WHERE (dpto = '3') OR (dpto = '5');
SELECT * FROM cadfun WHERE NOT (funcao = 'vendedor');
SELECT * FROM cadfun WHERE salario BETWEEN 2700 AND 5000;
SELECT * FROM cadfun WHERE dpto IN ('2', '3');

SELECT * FROM cadfun WHERE nome LIKE 'A%';

SELECT * FROM cadfun WHERE nome LIKE '_A%';

SELECT * FROM cadfun WHERE salario LIKE '%6';

SELECT AVG(salario) FROM cadfun;
SELECT AVG(salario) FROM cadfun WHERE dpto = '3';

SELECT COUNT(*) FROM cadfun WHERE dpto = '3';
SELECT COUNT(*) FROM cadfun WHERE salario > 2000;