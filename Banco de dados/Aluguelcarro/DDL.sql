CREATE DATABASE Aluguelcarro
GO


USE Aluguelcarro
GO


CREATE TABLE Marca (
	IdMarca INT PRIMARY KEY IDENTITY NOT NULL,
	Nome VARCHAR(30)
);


CREATE TABLE Modelo (
	IdModelo INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50),

	IdMarca INT FOREIGN KEY REFERENCES Marca (IdMarca)
);


CREATE TABLE DDD (
	IdDDD INT PRIMARY KEY IDENTITY,
	Numero INT NOT NULL
);

CREATE TABLE Telefone (
	IdTelefone INT PRIMARY KEY IDENTITY,
	Numero INT,

	IdDDD INT FOREIGN KEY REFERENCES DDD (IdDDD)
);


CREATE TABLE Cliente (
	IdCliente INT PRIMARY KEY IDENTITY,
	Nome VARCHAR(50),
	Idade INT,

	IdTelefone INT FOREIGN KEY REFERENCES Telefone (IdTelefone)
);


CREATE TABLE Veiculo (
	IdVeiculo INT PRIMARY KEY IDENTITY,
	Cor VARCHAR(20),
	Placa varchar(8),
	Ignicao BIT DEFAULT 0,

	IdModelo INT FOREIGN KEY REFERENCES Modelo (IdModelo),
	IdCliente INT FOREIGN KEY REFERENCES Cliente (IdCliente)
);
