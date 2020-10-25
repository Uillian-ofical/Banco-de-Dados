  
/* DML - Data Manipulation Language */


USE PetsClinica;
GO


INSERT INTO Clinica (Endereco, Nome) VALUES
	('Rua: Francisco Morato', 'AnimaPet'),
	('Rua: Elizeu de Almeida', 'TrataPet');

INSERT INTO TipoPet (Descricao) VALUES
	('Cachorro'),
	('Gato'),
	('Passaro');


INSERT INTO Raca (NomeRaca, IdTipoPet) VALUES
	('Biggle', 1),
	('Labrador', 1),
	('Persa', 2),
	('Canário', 3);

INSERT INTO Dono (NomeDono) VALUES
	('Jose'),
	('Ana');

INSERT INTO Pet (Nome, DataNascimento, IdRaca, IdDono) VALUES
	('Toddy', '2018-08-22T00:00:00', 1, 1),
	('Thor', '2013-06-20T00:00:00', 3, 2);

INSERT INTO Veterinario (Nome, IdClinica) VALUES
	('Marcelo', 1),
	('Yasmim', 2);


INSERT INTO Atendimento (DataAtendimento, IdPet, IdVeterinario) VALUES
	('2020-08-22T08:30:00', 1, 2),
	('2020-01-15T18:30:00', 2, 1);

