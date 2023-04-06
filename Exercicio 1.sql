-- Exercício 1

CREATE DATABASE exercicio1;

CREATE TABLE tb_produtos(
    id bigint auto_increment,
	Nome varchar(255) not null,
	Sobrenome varchar(255) not null,
    Cargo varchar(255) not null,
    Departamento varchar(255) not null,
	Salario decimal not null,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(Nome, Sobrenome, Cargo, Departamento, Salario) 
values ("Bianca","Luna","Diretora","Diretoria", 6500.00);
INSERT INTO tb_produtos(Nome, Sobrenome, Cargo, Departamento, Salario) 
values ("Heimy","Dias","Vendedora","Comercial", 3000.00);
INSERT INTO tb_produtos(Nome, Sobrenome, Cargo, Departamento, Salario) 
values ("Jamile","Faria","Vendedora","Comercial", 3000.00);
INSERT INTO tb_produtos(Nome, Sobrenome, Cargo, Departamento, Salario) 
values ("Camile","Bueno","Supervisora","Comercial", 4000.00);
INSERT INTO tb_produtos(Nome, Sobrenome, Cargo, Departamento, Salario) 
values ("Andresa","Marçal","Recrutadora","RH", 4200.00);

RENAME TABLE tb_produtos TO Funcionarios;

SELECT * FROM Funcionarios WHERE salario > 2000

SELECT * FROM Funcionarios WHERE salario < 2000

UPDATE funcionarios SET Cargo = "Vendedora Externa" WHERE id = 2;