
USE optus;



INSERT INTO Artista (Nome) VALUES
	('Mc Kevinho'),
	('Anita');


INSERT INTO Estilo (NomeEstilo) VALUES
	('Pop'),
	('Funk');


INSERT INTO Album (Nome, DataLancamento, QuantidadeMusicas, DuracaoAlbum, IdArtista) VALUES
	('Mc kevinho', '2010-07-25T00:00:00.000', 15, 30.00, 1),
	('Luan Santana', '2015-03-11T00:00:00.000', 10, 32.50, 2);


INSERT INTO EstilosAlbum (IdAlbum, IdEstilo) VALUES 
	(1, 1),
	(2, 2);

INSERT INTO TipoUsuario (Permissao) VALUES
	('comum'),
	('administrador');


INSERT INTO Usuario (NomeUsuario, Email, Senha, IdTipoPermissao) VALUES
	('Gabriel', 'gabriel@gmail.com', '1324gabriel', 1),
	('uillian', 'uillian@gmail.com', '1324uillian', 2);