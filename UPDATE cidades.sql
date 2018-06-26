UPDATE cidades SET estado = 'SS' WHERE estado = 'SC';

UPDATE cidades SET cidade = 'Blumenau', estado = 'SC' WHERE cidade = 'blumenau';

UPDATE cidades SET cidade = 'Batata' WHERE cidade LIKE 'BAta%';

UPDATE cidades SET cidade = 'Lindo' WHERE cidade LIKE '%Belo%';

UPDATE cidades SET estado = 'SC' WHERE cidade LIKE 'Indaia%';

UPDATE cidades SET estado = 'SC' WHERE cidade LIKE '%Timbó%';

UPDATE cidades SET cidade = 'Josuê' WHERE cidade LIKE 'José';

UPDATE cidades SET estado = 'PS' WHERE estado = 'SP';

UPDATE cidades SET cidade = 'Qualquer texto' WHERE LEN(cidade) > 10;

UPDATE cidades SET cidade = 'It' WHERE cidade LIKE '%it%';

UPDATE cidades SET estado = 'TO' WHERE cidade LIKE '%ã';

SELECT * FROM cidades