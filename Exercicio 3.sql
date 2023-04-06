-- Exercício 3

CREATE DATABASE exercicio3;

CREATE TABLE Alunos(
    id bigint auto_increment,
	Nome varchar(255) not null,
	Sobrenome varchar(255) not null,
    Endereço varchar(255) not null,
    Nome_do_Responsável varchar(255) not null,
	Nota_final decimal not null,
    PRIMARY KEY (id)
);

INSERT INTO Alunos(Nome, Sobrenome, Endereço, Nome_do_Responsável, Nota_final) 
values ("João","Almeida","Avenida Andrômeda", "Paulo Almeida",7);
INSERT INTO Alunos(Nome, Sobrenome, Endereço, Nome_do_Responsável, Nota_final) 
values ("Bruna","Sousa","Avenida Bacabal", "Rosana Sousa",9);
INSERT INTO Alunos(Nome, Sobrenome, Endereço, Nome_do_Responsável, Nota_final) 
values ("Camila","Santos","Rua dos Orvalhos", "Priscila Santos",9);
INSERT INTO Alunos(Nome, Sobrenome, Endereço, Nome_do_Responsável, Nota_final) 
values ("Brian","Rodrigues","Rua Cinco", "Henry Rodrigues",5);
INSERT INTO Alunos(Nome, Sobrenome, Endereço, Nome_do_Responsável, Nota_final) 
values ("Miguel","Silva","Avenida Rebouças", "Eliza Silva",4);

SELECT * FROM alunos WHERE Nota_final > 7;

SELECT * FROM alunos WHERE Nota_final < 7;

UPDATE alunos SET Nota_final = "6" WHERE id = 1;

select * from alunos;