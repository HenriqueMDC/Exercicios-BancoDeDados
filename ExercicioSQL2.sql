CREATE TABLE enderecos(
	estado		char(2),
	cidade		varchar(140),
	bairro		varchar(120),
	cep			char(10),
	logradouro	varchar(250),
	número		smallint,
	complemento text
);

INSERT INTO enderecos VALUES('AC', 'Rio Branco', 'Ayrton Senna', '69.911-866', 'Estrada Deputado José Rui da Silveira Lino', 282, 'Casa');
INSERT INTO enderecos(estado, cidade, bairro, cep) VALUES('SC', 'Biguaçu', 'Fundos', '88.161-400 995');
INSERT INTO enderecos VALUES('MG', 'Santa Luzia', 'Padre Miguel', '33.082-050', 'Rua Buenos Aires', 371, 'Apartamento');
INSERT INTO enderecos(estado, bairro, cep, logradouro, número) VALUES('BA', 'São Tomé de Paripe', '40.800-361', 'Travessa Luís Hage', 685);
INSERT INTO enderecos(estado, cidade, bairro, logradouro, número) VALUES('MG', 'Ipatinga', 'Vila Celeste', 'Rua Antônio Boaventura Batista', 645);
INSERT INTO enderecos(estado, cidade, bairro, cep) VALUES('RS', 'Passo Fundo', 'Nenê Graeff', '99.030-250 154');
INSERT INTO enderecos VALUES('AM', 'Manaus', 'Petrópolis', '69.079-300', 'Rua Coronel Ferreira Sobrinho', 264, 'Fundos');
INSERT INTO enderecos(estado, cidade, bairro, cep, logradouro, número) VALUES('TO', 'Gurupi', 'Muniz Santana', '77.402-130', 'Rua Adelmo Aires Negri', 794);
INSERT INTO enderecos(estado, bairro, logradouro, número, complemento) VALUES('AC', 'Preventório', 'Beco da Ligação II', 212, 'Bloco B');
INSERT INTO enderecos(estado, cidade, bairro, cep, logradouro, número) VALUES('AP', 'Santana', 'Comercial', '68.925-073', 'Rua Calçoene', 648);
INSERT INTO enderecos(estado, cidade, bairro, cep, logradouro, número) VALUES('PB', 'Cabedelo', 'Camalaú', '58.103-052', 'Rua Siqueira Campos', 249);