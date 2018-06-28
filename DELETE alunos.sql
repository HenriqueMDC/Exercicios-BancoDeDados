-- DELETE alunos WHERE nome LIKE '%Francisco%';
-- DELETE alunos WHERE YEAR(data_nascimento) = 1994;
-- DELETE alunos WHERE signo = 'Gêmios';
-- DELETE alunos WHERE nome LIKE 'Reinaldo%';
-- DELETE alunos WHERE nome LIKE '%Carvalho';
-- DELETE alunos WHERE MONTH(data_nascimento) = 07;
-- DELETE alunos WHERE nota_1 > nota_2 AND nota_4 < nota_3;
-- DELETE alunos WHERE cpf LIKE '145.%';
-- DELETE alunos WHERE cor_preferida = 'Bordo' AND signo = 'Capricórnio' OR cor_preferida = 'Cinza-Claro' AND signo = 'Aquários';
-- DELETE alunos WHERE (nota_1 + nota_2 + nota_3 + nota_4) < 4;
-- DELETE alunos WHERE DAY(data_nascimento) = 28;

SELECT * FROM alunos;