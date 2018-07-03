CREATE TABLE pokemons(Id INT IDENTITY, 
	name					VARCHAR(100) NOT NULL,
	about					TEXT,
	id_category				INT,
	id_weakness_1			INT, 
	id_weakness_2			INT,
	PRIMARY KEY(id),
	FOREIGN KEY(id_categoria) REFERENCES categories(Id),
	FOREIGN KEY(id_weakness_1) REFERENCES weaknesses(Id),
	FOREIGN KEY(id_fraqueza_2) REFERENCES weaknesses(Id)
);

CREATE TABLE categories(
id							INT IDENTITY, 
name						VARCHAR(100) NOT NULL
PRIMARY KEY(id)
);

CREATE TABLE weaknesses(
id							INT IDENTITY, 
name						VARCHAR(100) NOT NULL,
PRIMARY KEY(id)
);


INSERT INTO pokemons(name, id_category, id_weakness_1, id_weakness_2, about) VALUES
/* MEGA METAGROSS */																
('Mega Metagross', (SELECT id FROM categories WHERE name = 'Iron Leg'), (SELECT id FROM weaknesses WHERE name = 'Ghost'), (SELECT id FROM weaknesses WHERE name = 'Fire'), 'Metagross has four brains in total. Combined, the	four brains can breeze through difficult calculations faster than a	supercomputer. This Pokémo'),
/* MEGA VENUSAUR */																	
('Mega Venusaur', (SELECT id FROM categories WHERE name = 'Seed'), (SELECT id FROM weaknesses WHERE name = 'Fire'), (SELECT Id FROM weaknesses WHERE name = 'Psychic'), 'There is a large flower on Venusaur is back. The flower is said to take on vivid colors if it gets	plenty of nutrition and	sunlight. The flower is aroma soothes the emotions of people.'),
/* MEGA CHARIZARD X */					
('Mega Charizard X', (SELECT id FROM categories WHERE name = 'Flame'), (SELECT id FROM weaknesses WHERE name = 'Dragon'), (SELECT Id FROM weaknesses WHERE name = 'Rock'), 'Charizard flies around the sky in search of powerful opponents. It breathes fire of such great heat that it melts anything. However, it never turns its fiery breath on any opponent weaker than itself'),
/* MEGA BLASTOISE */                                         
('Mega Blastoise', (SELECT id FROM categories WHERE name = 'Shellfish'), (SELECT id FROM weaknesses WHERE name = 'Gress'), (SELECT id FROM weaknesses WHERE name = 'Electric'), 'Blastoise has water spouts that protrude from its shell. The water spouts are very accurate. They can shoot bullets of water with enough accuracy to strike empty cans from a distance of over 160 feet.'),
/* MEGA ALAKAZAM */                                                        
('Mega Alakazam', (SELECT id FROM categories WHERE name = 'Psi'), (SELECT id FROM weaknesses WHERE name = 'Bug'), (SELECT Id FROM weaknesses WHERE name = 'Dark'), 'Alakazam is brain continually grows, making its head far too heavy to support with its neck. This Pokémon holds its head up using its psychokinetic power instead.'),
/* MEGA GENGAR */      
('Mega Gengar', (SELECT id FROM categories WHERE name = 'Shadow'), (SELECT id FROM weaknesses WHERE name = 'Dark'), (SELECT id FROM weaknesses WHERE name = 'Ghost'), 'Sometimes, on a dark night, your shadow thrown by a streetlight will suddenly and startlingly overtake you. It is actually a Gengar running past you, pretending to be your shadow.'),
/* MEGA KANGASKHAN */
('Mega Kangaskhan', (SELECT id FROM categories WHERE name = 'Parent'), (SELECT id FROM weaknesses WHERE name = 'Fighting'), (SELECT Id FROM weaknesses WHERE name = ''), 'If you come across a young Kangaskhan playing by itself, you must never disturb it or attempt to catch it. The baby Pokémon is parent is sure to be in the area, and it will become violently enraged at you.'),
/* MEGA AERODACTYL */
('Mega Aerodactyl', (SELECT id FROM categories WHERE name = 'Fossil'), (SELECT id FROM weaknesses WHERE name = 'Steel'), (SELECT id FROM weaknesses WHERE name = 'Electric'), 'Aerodactyl is a Pokémon from the age of dinosaurs. It was regenerated from genetic material extracted from amber. It is imagined to have been the king of the skies in ancient times.'),
/* MEGA GYARADOS */                                                                 
('Mega Gyarados', (SELECT id FROM categories WHERE name = 'Atracious'), (SELECT id FROM weaknesses WHERE name = 'Fairy'), (SELECT id FROM weaknesses WHERE name = 'Gress'), 'When Magikarp evolves into Gyarados, its brain cells undergo a structural transformation. It is said that this transformation is to blame for this Pokémon is wildly violent nature.'),
/* MEGA MEWTWO Y */                                                                 
('Mega Mewtwo Y', (SELECT id FROM categories WHERE name = 'Genetic'), (SELECT id FROM weaknesses WHERE name = 'Ghost'), (SELECT id FROM weaknesses WHERE name = 'Dark'), 'Mewtwo is a Pokémon that was created by genetic manipulation. However, even though the scientific power of humans created this Pokémon is body, they failed to endow Mewtwo with a compassionate heart');



INSERT INTO categories VALUES('Iron Leg'),
							 ('Seed'),
							 ('Flame'),
							 ('Shellfish'),
							 ('Psi'),
							 ('Shadow'),
							 ('Parent'),
							 ('Fossil'),
							 ('Atracious'),
							 ('Genetic');

INSERT INTO weaknesses VALUES('Ghost'),
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

SELECT id AS 'ID', name AS 'NAME', about AS 'ABOUT', id_category AS 'CATEGORY', id_weakness_1 AS 'WEAKNES 1', id_weakness_2 AS 'WEAKNESS 2' FROM pokemons;


DROP TABLE pokemons;
DROP TABLE categories;
DROP TABLE weaknesses;