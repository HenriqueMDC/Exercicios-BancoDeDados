--		Select * From pokemons;

--		Select Count(*) From pokemons --> informa quantos registros armazenado.

--		Select nome, categoria From pokemons --> chama colunas especificas.

/*
		Select nome 'Nome dos Pokemons', --> nomeando as colunas ou alias.
		ataque 'Ataque',
		especial_ataque 'Ataque Especial',
		defesa 'Defesa',
		especial_defesa 'Defesa Especial'
		From pokemons;
*/

/*
		Select nome
		From pokemons
		Order By nome Asc; --> ordenar por órdem crescente
*/

/*
		Select categoria, nome
		From pokemons
		Order By categoria Asc, nome Asc; --> ordenar mais de uma coluna.
*/

--		Select nome From pokemons Order By nome Desc; --> ordenar em órdem decrescente.


/*		Select id, nome, codigo, categoria, altura, peso, hp, ataque, especial_ataque, defesa, especial_defesa, velocidade, descricao From pokemons
		Order By id Asc, nome Asc;
*/

/*
		Select Count(nome)
		From pokemons
		Where ataque = 4; -> mostra todos os pokemons com 4 de ataque.
*/

/*
Select nome, categoria
From pokemons
Where categoria = 'dragon'
Order By nome Asc;
*/

/*
Insert Into pokemons (nome, categoria, ataque) Values
('Escravo', 'Dragon',
(Select Top 1 ataque From pokemons Where categoria = 'DRAGON'));
*/

/*
Select
nome, ataque
From pokemons
Where ataque !=4
Order By ataque;
*/

/*
Select
nome, ataque
From pokemons
Where
ataque != 3 And
ataque != 4 And
ataque != 5 And
ataque != 6 And
ataque != 7
Order By ataque;
*/

/*
Select Count(ataque)
From pokemons
Where ataque < 3 Or ataque > 7;
*/

/*
Select hp, categoria, nome
From pokemons
Where hp % 2 = 0
Order By hp, categoria, nome;
*/


Select nome, defesa From pokemons Where defesa >= 2 Order By defesa, nome;