-- Criar tabela
CREATE DATABASE Blog;

-- Mostrar Tabela
SHOW DATABASES;

-- Acessar Banco de Dados
USE Blog;


CREATE TABLE Blog.Artigo(
ID int(30) AUTO_INCREMENT PRIMARY KEY,
Titulo VARCHAR(255) NOT NULL,
Conteudo TEXT NOT NULL,
DataPublicacao DATE NOT NULL
);



CREATE TABLE Blog.Comentario(
ID int(30) AUTO_INCREMENT PRIMARY KEY,
ID_Artigo int NOT NULL,
Autor VARCHAR(255) NOT NULL,
Texto TEXT NOT NULL,
DataComentario DATE,
foreign key(ID_Artigo) References Artigo(ID)
);

-- Inserindo dados dos artigos

INSERT INTO Blog.Artigo(Titulo, Conteudo, DataPublicacao)
VALUES ('O Pequeno Principe','Fabula Infantil','1943-06-04');

INSERT INTO Blog.Artigo(Titulo, Conteudo, DataPublicacao)
VALUES ('O Senhor dos Aneis','Um Fantastico Universo','1954-07-29');

INSERT INTO Blog.Artigo(Titulo, Conteudo, DataPublicacao)
VALUES ('Cinquenta Tons de Cinza','Romance','2011-11-20');

INSERT INTO Blog.Artigo(Titulo, Conteudo, DataPublicacao)
VALUES ('O Auto da Compadecida','Uma Sátira aos Poderosos','1955-06-15');

INSERT INTO Blog.Artigo(Titulo, Conteudo, DataPublicacao)
VALUES ('Dom Quixote','Romances de Cavalaria','1605-08-10');

-- Inserindo comentarios

INSERT INTO Blog.Comentario(ID_Artigo, Autor, Texto, DataComentario)
VALUES (1,'Antoine de Saint Exupery','Grande Livro','2005-05-06');

INSERT INTO Blog.Comentario(ID_Artigo, Autor, Texto, DataComentario)
VALUES (2,'John Ronald Reuel Tolkien','Grande Livro','1998-11-03');

INSERT INTO Blog.Comentario(ID_Artigo, Autor, Texto, DataComentario)
VALUES (3,'Erika Leonard James','Otimo livro','2015-02-21');

INSERT INTO Blog.Comentario(ID_Artigo, Autor, Texto, DataComentario)
VALUES (4,'Ariano Suassuna','Bom livro','2002-04-18');

INSERT INTO Blog.Comentario(ID_Artigo, Autor, Texto, DataComentario)
VALUES (5,'Miguel de Cervantes','Bom livro','1993-09-15');










SELECT * FROM Blog.Comentario;
