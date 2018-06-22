CREATE TABLE produtos(
	nome	VARCHAR(100)
);

INSERT INTO produtos VALUES
('Calabresa'),
('X-Calabresa'),
('Pizza de Calabresa'),
('Calabresa com Miojo'),
('Milk Shake de Calabresa'),
('Paçoca de Calabresa com Açaí'),
('Polenta com Calabresa');

--> Buscar os produtos que contém o nome iniciando com cala.

SELECT * FROM produtos WHERE nome LIKE 'Cala%';

--> Buscar os produtos que contém calabresa no final.

SELECT * FROM produtos WHERE nome LIKE '%calabresa';

--> Buscar os produtos que contém calabresa em qualquer lugar.

SELECT * FROM produtos WHERE nome LIKE '%calabresa%';