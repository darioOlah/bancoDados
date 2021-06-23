USE playground;

INSERT INTO categorias (nome)
VALUES
("Aluno"),
("Docente"),
("Editor"),
("Administrador");

SELECT * FROM categorias;

INSERT INTO usuarios (nome, sobrenome, email, categoria)
VALUES
("Dário", "Olah", "omdracing@gmail.com", 4),
("Paula", "Augusto", "paula@digitalhouse.com", 1),
("Mario", "Biondo", "mario@digitalgouse.com", 3),
("Jõao", "Perez", "perezes@gmail", 3),
("Gabriela", "Kahoot", "gabi_kahoot@gmail.com", 1);

SELECT * FROM usuarios;

INSERT INTO curso (titulo, descricao) 
VALUES
("Certified Tech Developer", "Front-End, Back-End, banco de dados, javascript"), 
("Carreiras Digitais 2.0", "Marketing, programação, dados e produtos"),
("Cyber Security", "Sistemas, redes e plano de segurança de informacão"),
("Experiência do Usuário (UX)", "Experiência do usuário, prototipação e testes"),
("Desenvolvimento Mobile", "App development e programação em swift");

SELECT * FROM curso;

INSERT INTO usuarios_curso (usuario, curso, data_de_inscricao)
VALUES
(1, 1, "2021-03-24"),
(2, 2, "2020-11-08"),
(3, 3, "2021-02-15"),
(4, 4, "2021-02-04"),
(5, 5, "2020-09-14");

SELECT * FROM usuarios_curso;