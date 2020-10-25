/* DQL - Data Query Language */

USE optus;

SELECT * FROM Artista;
SELECT * FROM Album;
SELECT * FROM Estilo;
SELECT * FROM EstilosAlbum;
SELECT * FROM TipoUsuario;
SELECT * FROM Usuario;


SELECT * FROM Artista WHERE IdArtista = 2;
SELECT * FROM Estilo WHERE IdEstilo = 2;
SELECT * FROM Album WHERE IdAlbum = 1;
SELECT * FROM EstilosAlbum WHERE IdEstilosAlbum = 1;
SELECT * FROM TipoUsuario WHERE IdTipoUsuario = 1;
SELECT * FROM Usuario WHERE IdUsuario = 2;
