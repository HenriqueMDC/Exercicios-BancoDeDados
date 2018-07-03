CREATE TABLE pokemons(Id INT IDENTITY, 
	nome					VARCHAR(100) NOT NULL,
	descricao					TEXT,
	id_categoria				INT,
	id_fraqueza_1			INT, 
	id_fraqueza_2			INT,
	PRIMARY KEY(id),
	FOREIGN KEY(id_categoria) REFERENCES categorias(Id),
	FOREIGN KEY(id_fraqueza_1) REFERENCES fraquezas(Id),
	FOREIGN KEY(id_fraqueza_2) REFERENCES fraquezas(Id)
);

CREATE TABLE categorias(
id							INT IDENTITY, 
nome						VARCHAR(100) NOT NULL
PRIMARY KEY(id)
);

CREATE TABLE fraquezas(
id							INT IDENTITY, 
nome						VARCHAR(100) NOT NULL,
PRIMARY KEY(id)
);


INSERT INTO pokemons(nome, id_categoria, id_fraqueza_1, id_fraqueza_2, descricao) VALUES
/* MEGA METAGROSS */																
('Mega Metagross', (SELECT id FROM categorias WHERE nome = 'Iron Leg'), (SELECT id FROM fraquezas WHERE nome = 'Ghost'), (SELECT id FROM fraquezas WHERE nome = 'Fire'), 'Metagross has four brains in total. Combined, the	four brains can breeze through difficult calculations faster than a	supercomputer. This Pokémo'),
/* MEGA VENUSAUR */																	
('Mega Venusaur', (SELECT id FROM categorias WHERE nome = 'Seed'), (SELECT id FROM fraquezas WHERE nome = 'Fire'), (SELECT Id FROM fraquezas WHERE nome = 'Psychic'), 'There is a large flower on Venusaur is back. The flower is said to take on vivid colors if it gets	plenty of nutrition and	sunlight. The flower is aroma soothes the emotions of people.'),
/* MEGA CHARIZARD X */					
('Mega Charizard X', (SELECT id FROM categorias WHERE nome = 'Flame'), (SELECT id FROM fraquezas WHERE nome = 'Dragon'), (SELECT Id FROM fraquezas WHERE nome = 'Rock'), 'Charizard flies around the sky in search of powerful opponents. It breathes fire of such great heat that it melts anything. However, it never turns its fiery breath on any opponent weaker than itself'),
/* MEGA BLASTOISE */                                         
('Mega Blastoise', (SELECT id FROM categorias WHERE nome = 'Shellfish'), (SELECT id FROM fraquezas WHERE nome = 'Gress'), (SELECT id FROM fraquezas WHERE nome = 'Electric'), 'Blastoise has water spouts that protrude from its shell. The water spouts are very accurate. They can shoot bullets of water with enough accuracy to strike empty cans from a distance of over 160 feet.'),
/* MEGA ALAKAZAM */                                                        
('Mega Alakazam', (SELECT id FROM categorias WHERE nome = 'Psi'), (SELECT id FROM fraquezas WHERE nome = 'Bug'), (SELECT Id FROM fraquezas WHERE nome = 'Dark'), 'Alakazam is brain continually grows, making its head far too heavy to support with its neck. This Pokémon holds its head up using its psychokinetic power instead.'),
/* MEGA GENGAR */      
('Mega Gengar', (SELECT id FROM categorias WHERE nome = 'Shadow'), (SELECT id FROM fraquezas WHERE nome = 'Dark'), (SELECT id FROM fraquezas WHERE nome = 'Ghost'), 'Sometimes, on a dark night, your shadow thrown by a streetlight will suddenly and startlingly overtake you. It is actually a Gengar running past you, pretending to be your shadow.'),
/* MEGA KANGASKHAN */
('Mega Kangaskhan', (SELECT id FROM categorias WHERE nome = 'Parent'), (SELECT id FROM fraquezas WHERE nome = 'Fighting'), (SELECT Id FROM fraquezas WHERE nome = ''), 'If you come across a young Kangaskhan playing by itself, you must never disturb it or attempt to catch it. The baby Pokémon is parent is sure to be in the area, and it will become violently enraged at you.'),
/* MEGA AERODACTYL */
('Mega Aerodactyl', (SELECT id FROM categorias WHERE nome = 'Fossil'), (SELECT id FROM fraquezas WHERE nome = 'Steel'), (SELECT id FROM fraquezas WHERE nome = 'Electric'), 'Aerodactyl is a Pokémon from the age of dinosaurs. It was regenerated from genetic material extracted from amber. It is imagined to have been the king of the skies in ancient times.'),
/* MEGA GYARADOS */                                                                 
('Mega Gyarados', (SELECT id FROM categorias WHERE nome = 'Atracious'), (SELECT id FROM fraquezas WHERE nome = 'Fairy'), (SELECT id FROM fraquezas WHERE nome = 'Gress'), 'When Magikarp evolves into Gyarados, its brain cells undergo a structural transformation. It is said that this transformation is to blame for this Pokémon is wildly violent nature.'),
/* MEGA MEWTWO Y */                                                                 
('Mega Mewtwo Y', (SELECT id FROM categorias WHERE nome = 'Genetic'), (SELECT id FROM fraquezas WHERE nome = 'Ghost'), (SELECT id FROM fraquezas WHERE nome = 'Dark'), 'Mewtwo is a Pokémon that was created by genetic manipulation. However, even though the scientific power of humans created this Pokémon is body, they failed to endow Mewtwo with a compassionate heart');



INSERT INTO categorias VALUES('Iron Leg'),
							 ('Seed'),
							 ('Flame'),
							 ('Shellfish'),
							 ('Psi'),
							 ('Shadow'),
							 ('Parent'),
							 ('Fossil'),
							 ('Atracious'),
							 ('Genetic');

INSERT INTO fraquezas VALUES('Ghost'),
							('Psychic'),
							('Rock'),
							('Electric'),
							('Dark'),
							(''),
							('Fire'),
							('Dragon'),
							('Gress'),
							('Bug'),
							('Fighting'),
							('Steel'),
							('Fairy');

SELECT id AS 'ID', nome AS 'NOME', descricao AS 'DESCRIÇÂO', id_categoria AS 'CATEGORIA', id_fraqueza_1 AS 'FRAQUEZA 1', id_fraqueza_2 AS 'FRAQUEZA 2' FROM pokemons;


DROP TABLE pokemons;
DROP TABLE categorias;
DROP TABLE fraquezas;

