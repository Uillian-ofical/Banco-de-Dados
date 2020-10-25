/* DML - Data Manipulation Language */

USE Aluguelcarro


INSERT INTO Marca (Nome) VALUES 
	('Fiat'),
	('Jeep');


INSERT INTO Modelo (Nome, IdMarca) VALUES
	('Toro', 1),
	('Renegade', 2);


INSERT INTO DDD (Numero) VALUES
	(11),
	(21);


INSERT INTO Telefone (Numero, IdDDD) VALUES
	(952475810, 1),
	(948574002, 2);


INSERT INTO Cliente (Nome, Idade, IdTelefone) VALUES
	('Gabriel', 18, 1),
	('Uillian', 28, 2);


INSERT INTO Veiculo (Cor, Placa, Ignicao, IdModelo, IdCliente) VALUES
	('Preto', 'jfg8025', 1, 2, 1),
	('Azul', 'ert9657', 0, 1, 2);
