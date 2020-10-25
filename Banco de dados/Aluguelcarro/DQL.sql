/* DQL - Data Query Language */

USE Aluguelcarro;

SELECT * FROM Marca;
SELECT * FROM Modelo;
SELECT * FROM Cliente;
SELECT * FROM Veiculo;
SELECT * FROM DDD;
SELECT * FROM Telefone;

SELECT * FROM Marca WHERE IdMarca = 1;
SELECT * FROM Modelo WHERE IdModelo = 2;
SELECT * FROM DDD WHERE IdDDD = 2;
SELECT * FROM Telefone WHERE IdTelefone = 1;
SELECT * FROM Cliente WHERE IdCliente = 1;
SELECT * FROM Veiculo WHERE IdVeiculo = 1;


-- Selecionando dados com INNER JOIN
SELECT Marca.Nome as 'Marca', 
Modelo.Nome as 'Modelo', Veiculo.Cor, Veiculo.Placa, Veiculo.Ignicao, 
Cliente.Nome as 'Cliente' FROM Veiculo

	INNER JOIN Cliente ON Veiculo.IdCliente = Cliente.IdCliente
	INNER JOIN Modelo ON Veiculo.IdModelo = Modelo.IdModelo
	INNER JOIN Marca ON Modelo.IdMarca = Marca.IdMarca