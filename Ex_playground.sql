CREATE SCHEMA playground;

USE playground;

CREATE TABLE categorias (
id_categoria INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NULL,
PRIMARY KEY (id_categoria)
);

CREATE TABLE usuarios (
id_usuario INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NULL,
sobrenome VARCHAR(100) NULL,
email VARCHAR(50) NULL,
categoria INT NULL,
PRIMARY KEY (id_usuario),
INDEX FKcategoria_idx (categoria ASC) VISIBLE,
CONSTRAINT FKcategoria
FOREIGN KEY (categoria)
REFERENCES playground.categorias (id_categoria)
);

CREATE TABLE curso (
id_curso INT NOT NULL AUTO_INCREMENT,
titulo VARCHAR(45) NULL,
descricao VARCHAR(100) NULL,
PRIMARY KEY (id_curso)
);

CREATE TABLE usuarios_curso (
id INT NOT NULL AUTO_INCREMENT,
usuario INT NULL,
curso INT NULL,
data_de_inscricao DATE NULL,
PRIMARY KEY (id),
INDEX usuario_idx (usuario ASC) VISIBLE,
INDEX curso_idx (curso ASC) VISIBLE,
CONSTRAINT usuario
FOREIGN KEY (usuario)
REFERENCES playground.usuarios (id_usuario),
CONSTRAINT curso
FOREIGN KEY (curso)
REFERENCES playground.curso (id_curso)
);