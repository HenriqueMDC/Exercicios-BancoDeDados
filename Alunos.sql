CREATE TABLE alunos(
	id		INT IDENTITY(1,1),
	nome	VARCHAR(200),
	idade	INT
	PRIMARY KEY(id)
);

CREATE TABLE caracteristicas(
	id					INT IDENTITY(1,1),
	id_aluno			INT,
	caracteristica		VARCHAR(150) NOT NULL
	PRIMARY KEY(id) FOREIGN KEY(id_aluno)  REFERENCES alunos(id)
);

INSERT INTO alunos VALUES
('Alice', 18),
('Sophia', 4),
('Miguel', 9),
('Heitor', 23),
('Valentina', 15),
('Joaquim', 49);

INSERT INTO caracteristicas(id_aluno, caracteristica) VALUES
((SELECT id FROM alunos WHERE nome = 'Heitor'), 'Egoísta'),
((SELECT id FROM alunos WHERE nome = 'Alice'), 'Organizado(a)'),
((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Pontual'),
((SELECT id FROM alunos WHERE nome = 'Miguel'), 'Criativo(a)'),
((SELECT id FROM alunos WHERE nome = 'Alice'), 'Altruísta'),
((SELECT id FROM alunos WHERE nome = 'Valentina'), 'Pessimista'),
((SELECT id FROM alunos WHERE nome = 'Joaquim'), 'Flexivel modelo'),
((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Observadora'),
((SELECT id FROM alunos WHERE nome = 'Joaquim'), 'Paciente'),
((SELECT id FROM alunos WHERE nome = 'Heitor'), 'Indelicado(a)'),
((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Desobediente'),
((SELECT id FROM alunos WHERE nome = 'Miguel'), 'Intolerante'),
((SELECT id FROM alunos WHERE nome = 'Joaquim'), 'Empático(a)'),
((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Egoísta'),
((SELECT id FROM alunos WHERE nome = 'Heitor'), 'Egoísta'),
((SELECT id FROM alunos WHERE nome = 'Joaquim'), 'Altruísta'),
((SELECT id FROM alunos WHERE nome = 'Sophia'), 'Sensível');




SELECT * FROM alunos;
SELECT * FROM caracteristicas;



SELECT alunos.nome 'Nome', caracteristicas.caracteristica 'Características' FROM caracteristicas
JOIN alunos ON (alunos.id = caracteristicas.id_aluno);

SELECT COUNT(caracteristicas.caracteristica) 'Características' FROM caracteristicas
JOIN alunos ON (alunos.id = caracteristicas.id_aluno)
WHERE caracteristicas.caracteristica = 'Altruísta';

SELECT alunos.nome, COUNT(caracteristicas.caracteristica) 'QTD Características' FROM caracteristicas
JOIN alunos ON (caracteristicas.id_aluno = alunos.id)
GROUP BY alunos.nome;

SELECT alunos.nome 'Nome', caracteristicas.caracteristica 'Características' FROM caracteristicas
JOIN alunos ON (alunos.id = caracteristicas.id_aluno)
WHERE alunos.nome = 'Sophia';  