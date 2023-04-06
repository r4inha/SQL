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

INSERT INTO produtos(Produto, Fornecedor, Estoque, Preco, Loja) 
values ("Camisa de time","Netshoes",25,150,"São José dos Campos");
INSERT INTO produtos(Produto, Fornecedor, Estoque, Preco, Loja) 
values ("Bicicleta","Netshoes",10,1500,"São José dos Campos");
INSERT INTO produtos(Produto, Fornecedor, Estoque, Preco, Loja) 
values ("Skate","Kanui",12,350,"Online");
INSERT INTO produtos(Produto, Fornecedor, Estoque, Preco, Loja) 
values ("Vestido","Shein",30,65,"Online");
INSERT INTO produtos(Produto, Fornecedor, Estoque, Preco, Loja) 
values ("Tênis","Kanui",14,300,"São Paulo");

SELECT * FROM produtos WHERE preco > 500;

SELECT * FROM produtos WHERE preco < 500;

UPDATE produtos SET preco = "350" WHERE id = 5;