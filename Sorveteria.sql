-- Criar Tabela
CREATE DATABASE Sorveteria;

-- Mostrar Tabela
SHOW DATABASES;

-- Acessar Banco de Dados
USE Sorveteria;

-- Criar Tabela
CREATE TABLE Sorveteria.Clientes (
  ID int(30) auto_increment primary key,
  Nome varchar(255) not null,
  Email varchar(255) unique not null,
  Telefone varchar(23) unique not null
);

-- Criar Tabela
CREATE TABLE Sorveteria.Pedidos (
     Id int(30) auto_increment primary key,
	 Id_Clientes int,
	 DataPedido date not null,
     ValorTotal decimal(10,2) not null,
     Foreign Key (ID_Clientes) REFERENCES Clientes(ID)
  );
  
-- Inserindo Valores Clientes

INSERT INTO Sorveteria.Clientes (Nome, Email, Telefone)
VALUES ('Gabriel', 'gabrielgmail.com', '(00) 0 0000-0000');

INSERT INTO Sorveteria.Clientes (Nome, Email, Telefone)
VALUES ('Matheus', 'matheusgmail.com', '(11) 1 1111-1111');

INSERT INTO Sorveteria.Clientes (Nome, Email, Telefone)
VALUES ('Maria', 'mariagmail.com', '(22) 2 2222-2222');

INSERT INTO Sorveteria.Clientes (Nome, Email, Telefone)
VALUES ('Marcio', 'marciogmail.com', '(44) 4 4444-4444');

INSERT INTO Sorveteria.Clientes (Nome, Email, Telefone)
VALUES ('Bruno', 'brunogmail.com', '(55) 5 5555-5555');

-- Inserindo Valores Pedidos

INSERT INTO Sorveteria.Pedidos(ID_Clientes, DataPedido, ValorTotal)
VALUES (1, '2023-04-06', 25.00);

INSERT INTO Sorveteria.Pedidos(ID_Clientes, DataPedido, ValorTotal)
VALUES (2, '2023-05-06', 50.00);

INSERT INTO Sorveteria.Pedidos(ID_Clientes, DataPedido, ValorTotal)
VALUES (3, '2023-06-06', 100.00);

INSERT INTO Sorveteria.Pedidos(ID_Clientes, DataPedido, ValorTotal)
VALUES (4, '2023-07-06', 150.00);

INSERT INTO Sorveteria.Pedidos(ID_Clientes, DataPedido, ValorTotal)
VALUES (5, '2023-08-06', 300.00);

-- Acessar Banco de dados
SELECT * FROM Sorveteria.Pedidos;

DROP DATABASE Sorveteria;