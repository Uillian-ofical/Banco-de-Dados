/* DQL - Nyous*/


USE Nyous;
GO

SELECT * FROM Categoria;
SELECT * FROM Localizacao;
SELECT * FROM Usuario;
SELECT * FROM Permissao;
SELECT * FROM Evento

SELECT * FROM Evento
	INNER JOIN Categoria ON Evento.IdCategoria = Categoria.IdCategoria
	INNER JOIN Localizacao ON Evento.IdLocalizacao = Localizacao.IdLocalizacao