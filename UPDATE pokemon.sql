UPDATE pokemons SET categoria = 'seed' WHERE codigo > 50 AND codigo < 100;

UPDATE pokemons SET ataque = 29 WHERE nome LIKE '%inj%';

UPDATE pokemons SET velocidade = 2 WHERE velocidade = 5;

UPDATE pokemons SET categoria = 'manipulate' WHERE codigo = 100;

UPDATE pokemons SET nome = 'C' WHERE nome LIKE 'R%';

UPDATE pokemons SET altura = 0.51, peso = 0.70 WHERE altura = 0.5;

UPDATE pokemons SET codigo = 1, defesa = 1, ataque = 1, especial_ataque = 1, especial_defesa = 1 WHERE especial_defesa = 3 AND especial_ataque = 4;

UPDATE pokemons SET nome = 'trocar somente os dez caracteres do nome' WHERE LEN(nome) > 10;

UPDATE pokemons SET categoria = 'water' WHERE descricao LIKE '%flame%';

UPDATE pokemons SET codigo = 151 WHERE codigo = 155;

UPDATE pokemons SET nome = 'Naruto', ataque = 1 WHERE nome = 'Kabuto';

UPDATE pokemons SET nome = 'Sasuke', especial_ataque = 8002, ataque = 8001 WHERE nome = 'Mew' OR nome = 'MewTwo';

UPDATE pokemons SET descricao = 'Loren ipsum.', nome = 'Tyranitar', categoria = 'Wood Gecko' WHERE codigo % 2 = 0;

SELECT * FROM pokemons;