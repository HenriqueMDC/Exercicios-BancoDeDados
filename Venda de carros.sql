CREATE TABLE pessoas(
	id		INT IDENTITY(1,1),
	nome	VARCHAR(200),
	cpf		VARCHAR(15)
	PRIMARY KEY(id)
);

CREATE TABLE carros(
	id					INT IDENTITY(1,1),
	id_pessoa			INT,
	marca				VARCHAR(150) NOT NULL,
	modelo				VARCHAR(150) NOT NULL,
	ano_lancamento		INT NOT NULL,
	ano_fabricacao		INT NOT NULL,
	motor				VARCHAR(15),
	cor					VARCHAR(100),
	preco				DECIMAL(8,2)
	PRIMARY KEY(id), FOREIGN KEY(id_pessoa) REFERENCES pessoas(id)
);

INSERT INTO carros VALUES
((SELECT id FROM pessoas WHERE nome = 'Abraão Nobre'), 'Volkswagen', 'Gol', 2010, 2009, '8v Power Flex', 'Vermelho', 18000.00),
((SELECT id FROM pessoas WHERE nome = 'Severino Braga'), 'Fiat', 'Brava', 2000, 1999, 'SX 1.6 16V', 'Cinza', 9000.00),
((SELECT id FROM pessoas WHERE nome = 'Samuel Faria'), 'Renault', 'Clio', 1997, 1996, '1.0 8v', 'Verde', 5500.00),
((SELECT id FROM pessoas WHERE nome = 'Florêncio Robalo'), 'Volkswagen', 'Golf', 1994, 1994, '2.0 120cv', 'Azul', 17000.00);


INSERT INTO pessoas VALUES
('Abraão Nobre', '952.328.294-83'),
('Severino Braga', '876.770.333-00'),
('Samuel Faria', '989.272.034-29'),
('Florêncio Robalo', '362.635.174-25');


SELECT * FROM carros;