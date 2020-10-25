

/* DML - Data Manipulation Language */

CREATE DATABASE PetsClinica;
GO

USE PetsClinica;
GO


CREATE TABLE Clinica(
	IdClinica INT PRIMARY KEY IDENTITY,
	Endereco VARCHAR(100),
	Nome VARCHAR(30)
);


CREATE TABLE TipoPet (
	IdTipoPet INT PRIMARY KEY IDENTITY,
	Descricao VARCHAR (50)
);

CREATE TABLE Dono(
	IdDono INT PRIMARY KEY IDENTITY,
	NomeDono VARCHAR(30)
)

CREATE TABLE Raca(
	IdRaca INT PRIMARY KEY IDENTITY,
	NomeRaca VARCHAR(50),

	IdTipoPet INT FOREIGN KEY REFERENCES TipoPet (IdTipoPet)
);

CREATE TABLE Pet (
	IdPet INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (30),
	DataNascimento DATETIME,

	IdRaca INT FOREIGN KEY REFERENCES Raca (IdRaca) ,
	IdDono INT FOREIGN KEY REFERENCES Dono (IdDono)
);

CREATE TABLE Veterinario (
	IdVeterinario INT PRIMARY KEY IDENTITY,
	Nome VARCHAR (30),

	IdClinica INT FOREIGN KEY REFERENCES Clinica (IdClinica)
);

CREATE TABLE Atendimento(
	IdAtendimento INT PRIMARY KEY IDENTITY,
	DataAtendimento DATETIME,
	Descricao varchar(155),

	IdPet INT FOREIGN KEY REFERENCES Pet (IdPet),
	IdVeterinario INT FOREIGN KEY REFERENCES Veterinario (IdVeterinario)
);