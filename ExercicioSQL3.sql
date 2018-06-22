CREATE TABLE champions(
    nome			VARCHAR (100),
    descrição		VARCHAR (100),
    habilidade_1	VARCHAR (100),
    habilidade_2	VARCHAR (100),
    habilidade_3	VARCHAR (100),
    habilidade_4	VARCHAR (100),
    habilidade_5	VARCHAR (100)
);

Insert Into champions Values('Katarina', 'a Lâmina Sinistra', 'Voracidade', 'Lâmina Saltitante', 'Preparação', 'Shumpo', 'Lotus da Morte');
Insert Into champions(nome, habilidade_1, habilidade_2, habilidade_3, habilidade_4, habilidade_5) Values('Yasuo', 'Estilo do Errante', 'Tempestade de Açõ', 'Parede de Vento', 'Espada Ágil', 'Último Suspiro');
Insert Into champions(nome, descrição, habilidade_1) Values('Master Yi', 'o Espadachim Wuju', 'Ataque Duplo');