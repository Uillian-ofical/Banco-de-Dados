/* DDL - Data Definition Language */


CREATE DATABASE Nyous;
GO

USE Nyous;
GO


CREATE TABLE Permissao (
	IdPermissao INT PRIMARY KEY IDENTITY NOT NULL,
	TipoPermissao VARCHAR(50) NOT NULL,
);


CREATE TABLE Categoria (
	IdCategoria INT PRIMARY KEY IDENTITY NOT NULL,
	Titulo VARCHAR(50) NOT NULL
);


CREATE TABLE Localizacao (
	IdLocalizacao INT PRIMARY KEY IDENTITY NOT NULL,
	Logradouro VARCHAR(255) NOT NULL,
	Numero VARCHAR(10),
	Complemento VARCHAR(30),
	Bairro VARCHAR(50),
	Cidade VARCHAR(50),
	UF VARCHAR(2),
	CEP VARCHAR(10)
);


CREATE TABLE Usuario (
	IdUsuario INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(100) NOT NULL,
	Email VARCHAR(80) NOT NULL,
	Senha VARCHAR(255) NOT NULL,
	DataNascimento DATETIME,

	IdPermissao INT FOREIGN KEY REFERENCES Permissao (IdPermissao) 
);

-
CREATE TABLE Evento (
	IdEvento INT PRIMARY KEY IDENTITY NOT NULL,
	TituloEvento VARCHAR(100) NOT NULL,
	DataEvento DATETIME, 
	AcessoRestrito BINARY DEFAULT 0,
	Descricao VARCHAR(255) NOT NULL,
	Capacidade INT NOT NULL,

	IdCategoria INT FOREIGN KEY REFERENCES Categoria (IdCategoria), 
	IdLocalizacao INT FOREIGN KEY REFERENCES Localizacao (IdLocalizacao) 
);

CREATE TABLE Convite (
	IdConvite INT PRIMARY KEY IDENTITY NOT NULL,
	Confirmado BIT DEFAULT NULL,

	IdEvento INT FOREIGN KEY REFERENCES Evento (IdEvento),
	IdUsuarioEmissor INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
	IdUsuarioConvidado INT FOREIGN KEY REFERENCES Usuario (IdUsuario) 
);


CREATE TABLE Presenca (
	IdPresenca INT PRIMARY KEY IDENTITY NOT NULL,
	Confirmado BIT DEFAULT NULL,

	IdEvento INT FOREIGN KEY REFERENCES Evento (IdEvento), 
	IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario), 
);
