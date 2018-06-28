-- UPDATE alunos SET nota_1 = 9.9 WHERE YEAR(data_nascimento) = 1996;
-- UPDATE alunos SET nota_2 = 1.3 WHERE nome LIKE 'Urbano%';
-- UPDATE alunos SET numero_favorito = RAND(numero_favorito) WHERE numero_favorito %2 = 1;
-- UPDATE alunos SET signo = 'Áries', numero_favorito = 100, cor_preferida = 'Preto', nome = 'Marcela' WHERE signo = 'Peixes';
-- UPDATE alunos SET cor_preferida = 'Azul', nota_2 = 9.3 WHERE cor_preferida = 'Caqui';
-- UPDATE alunos SET cpf = '10194731189' WHERE cpf = '101.947.311-89';
-- UPDATE alunos SET nota_1 = 1, nota_2 = 1, nota_3 = 1, nota_4 = 1 WHERE (nota_1 + nota_2 + nota_3 + nota_4) / 4 < 4;
-- UPDATE alunos SET data_nascimento = CONVERT(CHAR(4), DATEPART(yyyy, data_nascimento)) + '-' + CONVERT(CHAR(2), DATEPART(mm, data_nascimento)) + '-30' WHERE DAY(data_nascimento) = 31;
-- UPDATE alunos SET cor_preferida = 'roxo', nick = 'Roxolandia' WHERE cor_preferida = 'roxo' OR cor_preferida = 'coral';
-- UPDATE alunos SET data_nascimento = 2018-06 WHERE MONTH(data_nascimento) = 07;

SELECT * FROM alunos;