-- 1° Chamar todos os pokemons. 
--SELECT id, nome, codigo, categoria, altura, peso, hp, ataque, defesa, especial_ataque, especial_defesa, velocidade, descricao FROM pokemons;

-- 2° Chamar ataque, ataque especial, defesa, defesa especial.
--SELECT ataque, defesa, especial_ataque, especial_defesa FROM pokemons;

-- 3° Chamer nome, categoria e ataque ordenado pelo ataque em ordem crescente.
--SELECT nome, categoria, ataque FROM pokemons ORDER BY ataque ASC;

-- 4° Chamar altura e peso com o cálculo do imc.
--SELECT altura, peso, (peso/(altura * altura)) AS IMC FROM pokemons;

-- 5° Chamar altura e peso com o cálculo do imc pelo imc em ordem decrescente.
--SELECT altura, peso, (peso/(altura * altura)) AS IMC FROM pokemons ORDER BY IMC DESC;

-- 6° Chamar nome e o tamanho do nome em ordem decrescente pelo nome.
--SELECT nome, LEN(nome) AS 'Tamanho do Nome' FROM pokemons ORDER BY [Tamanho do Nome] DESC;

-- 7° Chamar nome, descrição quando o nome tiver mais de 10 caracteres.
--SELECT nome, descricao, LEN(nome) AS 'Tamanho do Nome' FROM pokemons WHERE LEN(nome) > 10;

-- 8° Chamar nome, categoria e ataque do pokemon que contém o menor valor de ataque.
--SELECT nome, categoria, ataque AS 'Menor ataque' FROM pokemons WHERE ataque <= (SELECT MIN(ataque) FROM pokemons);

-- 9° Selecione o ataque, ataque, nome, defesa e defesa especial ordenando pelo ataque.
--SELECT ataque, especial_ataque, defesa, especial_defesa FROM pokemons ORDER BY ataque;

-- 10° Selecione a média dos ataques.
--SELECT AVG(ataque) AS 'Média' FROM pokemons;

-- 11° Selecione a somatória dos ataques.
--SELECT SUM(ataque) AS 'Soma' FROM pokemons;

-- 12° Selecione a média dos ataques especiais quando o nome do pokemon começar com ‘P’.
--SELECT AVG(especial_ataque) FROM pokemons WHERE nome LIKE 'P%';