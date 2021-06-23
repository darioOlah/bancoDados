CREATE DATABASE biblioteca;

USE biblioteca;

CREATE TABLE usuarios (
	id_usuario INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR (50),
    email VARCHAR (100),
    telefone VARCHAR (20)
);
    
CREATE TABLE livros (
	id_livro INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR (100)
);

CREATE TABLE emprestimos (
	id_emprestimos INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    data_emprestimo DATE,
    data_devolucao DATE,
    usuarios INT,
    livros INT,
    FOREIGN KEY (usuarios) REFERENCES usuarios (id_usuario),
    FOREIGN KEY (livros) REFERENCES livros (id_livro)
);

INSERT INTO usuarios (nome, email, telefone)
	VALUES
	("Dário", "omdracing@gmail.com", 12981011412 ),
	("Paula", "paula@digitalhouse.com", 5698525476),
	("Mario", "mario@digitalgouse.com", 1456862548);
    
UPDATE usuarios SET 
	telefone = "56998525476"
	WHERE id_usuario = 2;
   
UPDATE usuarios SET 
	telefone = "14956862548"
	WHERE id_usuario = 3;
   
SELECT * FROM usuarios;

INSERT INTO livros (titulo)
	VALUE 
    ("Diario de um banana"),
    ("O sennhor dos aneis"),
    ("Verdade tropical");
    
    SELECT * FROM livros;
    
INSERT INTO emprestimos (data_emprestimo, data_devolucao, usuarios, livros)
	VALUE
    ("2021-04-14", "2021-04-24", 2, 3),
	("2021-02-01", "2021-02-15", 1, 1),
	("2021-06-10", "2021-06-24", 3, 2);
    
SELECT * FROM emprestimos;
    
SELECT nome, email FROM usuarios WHERE id_usuario = 1; 

DELETE FROM emprestimos
WHERE usuarios = 1 AND livros = 1;