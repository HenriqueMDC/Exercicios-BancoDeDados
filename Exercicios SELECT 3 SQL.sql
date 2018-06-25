-- 1° Selecione todas as colunas da tabela.
-- SELECT nome, cpf, nick, signo, numero_favorito, nota_1, nota_2, nota_3, nota_4, cor_preferida, data_nascimento FROM alunos;

-- 2° Selecione o nome dos alunos que a nota 1 é maior que 9.0.
-- SELECT nome, nota_1 FROM alunos WHERE nota_1 > 9.0;

-- 3° Selecione o nome do aluno, nota 1, nota 2, nota 3, nota 4, e a média.
-- SELECT nome, nota_1, nota_2, nota_3, nota_4, (nota_1 + nota_2 + nota_3 + nota_4) / 4 AS 'Média' FROM alunos;

-- 4° Contabilize a quantidade de alunos com o signo de Peixes.
-- SELECT COUNT(signo) AS 'Alunos com Signo Peixe' FROM alunos WHERE signo = 'Peixes';

-- 5° Selecione a soma da nota 1.
-- SELECT SUM(nota_1) AS 'Soma nota 1' FROM alunos;

-- 6° Selecione a média da nota 2.
-- SELECT AVG(nota_2) AS 'Média nota 2' FROM alunos;

-- 7° Selecione o nome, menor nota 1.
-- SELECT nome, nota_1 FROM alunos WHERE nota_1 = (SELECT MIN(nota_1) FROM alunos);

-- 8° Selecione o nome, nota 1, nota 2, nota 3, nota 4 com o maior nome.
-- SELECT TOP 1 nome, nota_1, nota_2, nota_3, nota_4 FROM alunos ORDER BY LEN(nome) DESC;

-- 9° Selecione a cor e quantidade com a cor Gelo.
-- SELECT cor_preferida, COUNT(cor_preferida) AS 'Quantidade de cor GELO' FROM alunos WHERE cor_preferida = 'Gelo' GROUP BY cor_preferida;

-- 10° Selecione a quantidade de alunos que o nome contém Francisco no começo.
-- SELECT COUNT(nome) AS 'Quantidade de alunos que começa com Francisco FROM alunos WHERE nome LIKE 'Francisco%';

-- 11° Selecione a quantidade de alunos que o nome contém Luc.
-- SELECT COUNT(nome) AS 'Quantidade de alunos que o nome contém LUC' FROM alunos WHERE nome LIKE '%luc%';

-- 12° Selecione o nome, signo e data de nascimento quando o signo Áries.
-- SELECT nome, signo, data_nascimento FROM alunos WHERE signo = 'Áries';

-- 13° Selecione o nome, nota 1, nota 2, nota 3, nota 4 com o maior média.
-- SELECT TOP 1 nome, nota_1, nota_2, nota_3, nota_4, ((nota_1 + nota_2 + nota_3 + nota_4) / 4) AS 'Média' FROM alunos ORDER BY 'Média' DESC;

-- 14° Selecione o nome, média e caso a média for menor que 5 apresentar reprovado, caso for menor que 7 apresentar em exame senão apresentar aprovado. Dica: buscar como fazer IF em sql.
SELECT nome, nota_1, nota_2, nota_3, nota_4, ((nota_1 + nota_2 + nota_3 + nota_4) / 4) AS 'Média', IIF(((nota_1 + nota_2 + nota_3 + nota_4) / 4) < 5, 'Reprovado', 'Aprovado') FROM alunos;