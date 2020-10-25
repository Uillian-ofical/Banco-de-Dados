/* DQL - Data Query Language */


USE PetsClinica;

SELECT * FROM Clinica;
SELECT * FROM TipoPet;
SELECT * FROM Raca;
SELECT * FROM Dono;
SELECT * FROM Pet;
SELECT * FROM Veterinario;
SELECT * FROM Atendimento;

SELECT * FROM Clinica WHERE IdClinica = 1;
SELECT * FROM Raca WHERE IdRaca = 3;
SELECT * FROM TipoPet WHERE IdTipoPet = 2;
SELECT * FROM Dono WHERE IdDono = 1;
SELECT * FROM Pet WHERE IdPet = 2;
SELECT * FROM Veterinario WHERE IdVeterinario = 1;
SELECT * FROM Atendimento WHERE IdAtendimento = 2;

SELECT Pet.Nome, 
Veterinario.Nome, 
Atendimento.DataAtendimento, 
Atendimento.Descricao FROM Atendimento
	
	INNER JOIN Pet ON Atendimento.IdPet = Pet.IdPet
	INNER JOIN Veterinario ON Atendimento.IdVeterinario = Veterinario.IdVeterinario;

SELECT Pet.Nome,
Pet.DataNascimento, 
Raca.NomeRaca, 
Dono.NomeDono FROM Pet
	
	INNER JOIN Dono ON Pet.IdDono = Dono.IdDono
	INNER JOIN Raca ON Pet.IdRaca = Raca.IdRaca;