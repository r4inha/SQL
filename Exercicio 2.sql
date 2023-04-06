-- Exercício 2

CREATE DATABASE exercicio2;

CREATE TABLE produtos(
    id bigint auto_increment,
	Produto varchar(255) not null,
	Fornecedor varchar(255) not null,
    Estoque decimal not null,
    Preco decimal not null,
    Loja varchar(255) not null,
    PRIMARY KEY (id)
);

INSERT INTO produtos(Nome, Sobrenome, Cargo, Departamento, Salario) 
values ("Bianca","Luna","Diretora","Diretoria", 6500.00);
INSERT INTO produtos(Nome, Sobrenome, Cargo, Departamento, Salario) 
values ("Heimy","Dias","Vendedora","Comercial", 3000.00);
INSERT INTO produtos(Nome, Sobrenome, Cargo, Departamento, Salario) 
values ("Jamile","Faria","Vendedora","Comercial", 3000.00);
INSERT INTO produtos(Nome, Sobrenome, Cargo, Departamento, Salario) 
values ("Camile","Bueno","Supervisora","Comercial", 4000.00);
INSERT INTO produtos(Nome, Sobrenome, Cargo, Departamento, Salario) 
values ("Andresa","Marçal","Recrutadora","RH", 4200.00);

