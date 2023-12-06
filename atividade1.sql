CREATE TABLE ALUNOS (
	matricula SERIAL NOT NULL PRIMARY KEY,
	sobrenome VARCHAR(90) NOT NULL,
	dat_nascimento DATE
)

ALTER TABLE ALUNOS 
	ADD COLUMN nome VARCHAR(90) NOT NULL,
	ADD COLUMN email VARCHAR(90) NOT NULL,
	ADD COLUMN endereço VARCHAR(100) NOT NULL;


INSERT INTO alunos (nome, sobrenome, dat_nascimento, email, endereço) VALUES
('Victor', 'Callegari', '1991-12-24', 'victor@eamil.com', 'rua 67'),
('helen Mayra', 'Callegari', '1998-08-28', 'helen@email.com', 'rua 67');

SELECT * FROM alunos