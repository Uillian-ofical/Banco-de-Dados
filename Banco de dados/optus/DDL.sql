

-- Criando banco de dados
CREATE DATABASE optus;
USE optus;

CREATE TABLE Artista(
	IdArtista INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50)
);

CREATE TABLE Estilo(
	IdEstilo INT PRIMARY KEY IDENTITY,
	NomeEstilo VARCHAR(30)
);	

CREATE TABLE Album(
	IdAlbum INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(40),
	DataLancamento DATETIME,
	QuantidadeMusicas INT,
	DuracaoAlbum DECIMAL,

	IdArtista INT FOREIGN KEY REFERENCES Artista (IdArtista)
);


CREATE TABLE EstilosAlbum (
	IdEstilosAlbum INT PRIMARY KEY IDENTITY,
	
	IdAlbum INT FOREIGN KEY REFERENCES Album (IdAlbum),
	IdEstilo INT FOREIGN KEY REFERENCES Estilo (IdEstilo)
);


CREATE TABLE TipoUsuario (
	IdTipoUsuario INT PRIMARY KEY IDENTITY,
	Permissao VARCHAR(20)
);	


CREATE TABLE Usuario (
	IdUsuario INT PRIMARY KEY IDENTITY,
	NomeUsuario VARCHAR(50),
	Email VARCHAR(155),
	Senha VARCHAR(155),

	IdTipoPermissao INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario)
);