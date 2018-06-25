-- 1° Selecione todas as colunas da tabela.
SELECT nome, cpf, nick, signo, numero_favorito, nota_1, nota_2, nota_3, nota_4, cor_preferida, data_nascimento FROM alunos;

-- 2° Selecione o nome dos alunos que a nota 1 é maior que 9.0.
SELECT nome, nota_1 FROM alunos WHERE nota_1 > 9.0;

-- 3° Selecione o nome do aluno, nota 1, nota 2, nota 3, nota 4, e a média.
SELECT nome, nota_1, nota_2, nota_3, nota_4, (nota_1 + nota_2 + nota_3 + nota_4) / 4 AS 'Média' FROM alunos;