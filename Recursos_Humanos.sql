-- Criar tabela
CREATE DATABASE Recursos_Humanos;

-- Mostrar Tabela
SHOW DATABASES;

-- Acessar Banco de Dados
USE Recursos_Humanos;

CREATE TABLE Recursos_Humanos.Departamentos(
ID int(30) auto_increment not null primary key,
NomeDepartamento varchar(255) not null
);

CREATE TABLE Recursos_Humanos.Funcionarios(
ID int(30) auto_increment not null primary key,
Id_Departamento int,
Nome varchar (255),
Cargo varchar (255),
Salario decimal (10,2),
foreign key (id_departamento) references departamentos(ID)
);

-- Inserindo dados dos departamentos

INSERT INTO Recursos_Humanos.Departamentos(NomeDepartamento)
VALUES('Financeiro');

INSERT INTO Recursos_Humanos.Departamentos(NomeDepartamento)
VALUES('Adiministativo');

INSERT INTO Recursos_Humanos.Departamentos(NomeDepartamento)
VALUES('Juridico');

INSERT INTO Recursos_Humanos.Departamentos(NomeDepartamento)
VALUES('Pessoal');

INSERT INTO Recursos_Humanos.Departamentos(NomeDepartamento)
VALUES('Comercial');

-- Inserindo dados dos funcionarios

INSERT INTO Recursos_Humanos.Funcionarios(ID_Departamento,Nome,Cargo,Salario)
VALUES( 1 ,'Gabriel','Programador', 1500.00);

INSERT INTO Recursos_Humanos.Funcionarios(ID_Departamento,Nome,Cargo,Salario)
VALUES( 2 ,'Fernando','Diretor de Cinema', 1000.00);

INSERT INTO Recursos_Humanos.Funcionarios(ID_Departamento,Nome,Cargo,Salario)
VALUES( 3 ,'Caio','Jovem Aprendiz', 500.00);

INSERT INTO Recursos_Humanos.Funcionarios(ID_Departamento,Nome,Cargo,Salario)
VALUES( 4 ,'Venicio','Vendedor', 950.00);

INSERT INTO Recursos_Humanos.Funcionarios(ID_Departamento,Nome,Cargo,Salario)
VALUES( 5 ,'Raphael','Comerciante', 750.00);









Select * From Recursos_Humanos.Funcionarios;
