Create Table jogos(
	nome		Varchar(100) Default 'Neymar',
	quedas		Smallint
);
--> Automaticamente o nome recebe neymar.
--> Pois não é passado o nome do insert.


Insert Into jogos(quedas) Values(20);

Insert Into jogos(quedas, nome) Values(2, 'Titi');

Select * From jogos;