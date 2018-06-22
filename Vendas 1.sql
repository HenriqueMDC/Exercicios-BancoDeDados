CREATE TABLE vendas(
	nome		Varchar(100),
	quantidade	Smallint,
	preco		Decimal	(6,2)
);

INSERT INTO vendas(nome, preco, quantidade) VALUES
('Café', 4, 27.13),
('Leite',35, 4.15),
('Açucar', 52, 24.67),
('Biscoito', 3, 1.70),
('Miojo', 9, 45.23),
('Calabresa', 17, 1.72),
('Bacon', 18, 19.52),
('Feijão', 18, 7.87),
('Sazon', 47, 4.11),
('Qboa', 50, 22.39);

Select nome, quantidade, preco, quantidade * preco as total From vendas;
Select Sum(preco * quantidade) From vendas;
Select preco From vendas;
SELECT AVG(preco) FROM vendas;
SELECT MIN(preco) FROM vendas; --> Retorna o menor.
SELECT MAX(preco) FROM vendas; --> Retorna o maíor.
SELECT nome, LEN(nome) FROM vendas WHERE LEN(nome) > 5 ORDER BY LEN(nome) DESC;
SELECT nome FROM vendas WHERE LEN(nome) = (SELECT MAX(LEN(nome)) FROM vendas);
SELECT nome FROM vendas WHERE LEN(nome) = (SELECT MIN(LEN(nome)) FROM vendas);
SELECT nome FROM vendas WHERE LEN(nome) = (SELECT MIN(LEN(nome)) FROM vendas) AND nome LIKE 'c%';