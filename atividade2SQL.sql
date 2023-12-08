CREATE TABLE ALUNOS (
	matricula SERIAL NOT NULL PRIMARY KEY,
	sobrenome VARCHAR(90) NOT NULL,
	dat_nascimento DATE
)
ALTER TABLE ALUNOS 
	ADD COLUMN nome VARCHAR(90) NOT NULL,
	ADD COLUMN email VARCHAR(90) NOT NULL,
	ADD COLUMN endereço VARCHAR(100) NOT NULL;

CREATE TABLE disciplinas (
	id_disciplina SERIAL PRIMARY KEY,
	nome_disciplina VARCHAR(50) NOT NULL,
	nome_professor VARCHAR(50) NOT NULL
)
  
ALTER TABLE alunos
ADD COLUMN disciplinas_id INT,
ADD CONSTRAINT fk_disciplinas
    FOREIGN KEY (disciplinas_id)
    REFERENCES disciplinas (id_disciplina);

INSERT INTO disciplinas(nome_disciplina, nome_professor) VALUES ('Banco de dados', 'Maria Alves');
INSERT INTO disciplinas(nome_disciplina, nome_professor) VALUES ('Python', 'Pietro Souza');
INSERT INTO disciplinas(nome_disciplina, nome_professor) VALUES ('POO', 'Bia Tavares');

INSERT INTO alunos(nome, sobrenome, disciplinas_id, dat_nascimento, email, endereço) VALUES ('Cleiton', 'Santos', 2, '1995-03-12', 'cleiton.santos@example.com', '123 Main St, Cidade Alegre');
INSERT INTO alunos(nome, sobrenome, disciplinas_id, dat_nascimento, email, endereço) VALUES ('Carol', 'Souza', null, '1998-07-25', 'carol.souza@example.com', '456 Rua das Flores, Cidade Feliz');
INSERT INTO alunos(nome, sobrenome, disciplinas_id, dat_nascimento, email, endereço) VALUES ('Ruan', 'Andrade', 2, '1997-09-18', 'ruan.andrade@example.com', '789 Av. Principal, Cidade Nova');
INSERT INTO alunos(nome, sobrenome, disciplinas_id, dat_nascimento, email, endereço) VALUES ('Gabi', 'Martins', 1, '1994-05-03', 'gabi.martins@example.com', '101 Rua dos Sonhos, Cidade Encantada');
INSERT INTO alunos(nome, sobrenome, disciplinas_id, dat_nascimento, email, endereço) VALUES ('Rian', 'Andrade', null, '1996-12-08', 'rian.andrade@example.com', '202 Travessa das Estrelas, Cidade Mágica');
INSERT INTO alunos(nome, sobrenome, disciplinas_id, dat_nascimento, email, endereço) VALUES ('Mia', 'Dulce', 2, '1993-02-20', 'mia.dulce@example.com', '303 Alameda dos Desejos, Cidade dos Sonhos');
INSERT INTO alunos(nome, sobrenome, disciplinas_id, dat_nascimento, email, endereço) VALUES ('Malu', 'Maia', 1, '1999-11-14', 'malu.maia@example.com', '404 Rua da Alegria, Cidade Encantada');

SELECT alunos.nome, disciplinas.nome_disciplina
FROM alunos
INNER JOIN disciplinas ON disciplinas.id_disciplina = alunos.disciplinas_id;
