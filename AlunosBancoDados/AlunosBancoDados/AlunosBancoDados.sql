DROP TABLE alunos;
CREATE TABLE alunos
(
	id				INT IDENTITY(1,1),
	nome			VARCHAR(150) NOT NULL,
	id_matricula	VARCHAR(15) NOT NULL,
	nota_1			FLOAT NOT NULL,
	nota_2			FLOAT NOT NULL,
	nota_3			FLOAT NOT NULL,
	media			FLOAT,
	frequencia		TINYINT
);

SELECT * FROM alunos;