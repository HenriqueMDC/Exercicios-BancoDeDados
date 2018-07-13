CREATE TABLE clientes
(
	id		INT IDENTITY(1,1),
	nome	VARCHAR(200) NOT NULL,
	sexo	CHAR(1) NOT NULL
	PRIMARY KEY(id)
);

CREATE TABLE celulares
(
	id			INT IDENTITY(1,1) NOT NULL,
	id_cliente	INT NOT NULL,
	valor		Text NOT NULL,
	ativo		BIT DEFAULT 1
	PRIMARY KEY(id), FOREIGN KEY(id_cliente) REFERENCES clientes(id)
);

CREATE TABLE emails
(
	id			INT IDENTITY(1,1) NOT NULL,
	id_cliente	INT NOT NULL,
	valor		Text NOT NULL,
	ativo		BIT DEFAULT 1
	PRIMARY KEY(id), FOREIGN KEY(id_cliente) REFERENCES clientes(id)
);

CREATE TABLE contas_pagar
(
	id					INT IDENTITY(1,1) NOT NULL,
	id_cliente			INT NOT NULL,
	valor				DECIMAL(8,2) NOT NULL,
	data_vencimento		DATE NOT NULL,
	valor_pago			DECIMAL(8,2),
	status				TEXT DEFAULT 'Pagar',
	ativo				BIT DEFAULT 1
	PRIMARY KEY(id), FOREIGN KEY(id_cliente) REFERENCES clientes(id)
);

CREATE TABLE contas_receber
(
	id					INT IDENTITY NOT NULL,
	id_cliente			INT NOT NULL,
	valor_receber		DECIMAL(8,2),
	data_pagamento		DATE,
	valor_recebido		DECIMAL(8,2),
	data_recebimento	DATE,
	status				TEXT DEFAULT 'Receber',
	ativo				BIT DEFAULT 1
	PRIMARY KEY(id), FOREIGN KEY(id_cliente) REFERENCES clientes(id)
);



INSERT INTO clientes VALUES
('Germana', 'F'),
('Salvador', 'M'),
('Úrsula', 'F'),
('Aluísio', 'M');

INSERT INTO celulares VALUES
(1, '(79) 99973-5114'),
(2, '(27) 98390-6475'),
(1, '(55) 98587-4266'),
(4, '(14) 98387-5333'),
(3, '(92) 98983-2809'),
(4, '(55) 98616-2303');

INSERT INTO contas_pagar(id_cliente, data_vencimento, valor) VALUES
((SELECT id FROM clientes WHERE nome = 'Germana'), '2018-06-15', 500.00),
((SELECT id FROM clientes WHERE nome = 'Salvador'), '2018-06-29', 320.50),
((SELECT id FROM clientes WHERE nome = 'Úrsula'), '2018-06-07', 450.00),
((SELECT id FROM clientes WHERE nome = 'Aluísio'), '2018-08-27', 1300.00),
((SELECT id FROM clientes WHERE nome = 'Aluísio'), '2018-10-10', 777.00),
((SELECT id FROM clientes WHERE nome = 'Úrsula'), '2018-10-14', 8001.00),
((SELECT id FROM clientes WHERE nome = 'Salvador'), '2018-11-25', 232.12),
((SELECT id FROM clientes WHERE nome = 'Úrsula'), '2018-09-13', 104.23),
((SELECT id FROM clientes WHERE nome = 'Germana'), '2018-07-17', 65.00),
((SELECT id FROM clientes WHERE nome = 'Aluísio'), '2018-10-06', 98.83),
((SELECT id FROM clientes WHERE nome = 'Salvador'), '2018-12-12', 12.17),
((SELECT id FROM clientes WHERE nome = 'Salvador'), '2018-12-23', 6.25);


DROP TABLE clientes;
DROP TABLE celulares;
DROP TABLE emails;
DROP TABLE contas_pagar;
DROP TABLE contas_receber;