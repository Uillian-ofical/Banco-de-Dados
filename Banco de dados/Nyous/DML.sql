
/*DML Nyous*/

USE Nyous;
Go

INSERT INTO Permissao (TipoPermissao) VALUES
	('Administrador'),
	('Padrao');


INSERT INTO Categoria (Titulo) VALUES
	('Workshop'),
	('Bootcamp'),
	('Meetup'),
	('Palestra');

INSERT INTO Localizacao (Logradouro, Numero, Complemento, Bairro, Cidade, UF, CEP) VALUES
	('Alameda Barão de Limeira', '539', Null, 'Santa Cecília', 'São Paulo', 'SP', '01202-001');


INSERT INTO Usuario (Nome, Email, Senha, DataNascimento, IdPermissao) VALUES
	('Uillian Gabriel' , 'uillian.gabriel@gmail.com', 'uillian132', '2004-01-12T00:00:00', 1),
	('Paulo Brandão', 'paulobrandao@gmail.com', 'paulo132', '2002-01-01T00:00:00', 2);


INSERT INTO Evento (TituloEvento, DataEvento, Capacidade, IdCategoria, IdLocalizacao, Descricao) VALUES
	('Desenvolvimento BackEnd', '2020-10-25T22:00:00', 100, 3, 1,
		'Evento será  cursante do curso técnicos de Dev oferecido para escola Senai de Informatica');