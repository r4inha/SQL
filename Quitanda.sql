-- Criando a database
CREATE DATABASE db_quitanda;

-- Criando tabelas
CREATE TABLE tb_produtos(
    id bigint auto_increment,
	nome varchar(255) not null,
	quantidade int,
	preco decimal not null,
    PRIMARY KEY (id)
);

-- Inserindo coisas nas tabelas
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("tomate",100, 8.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("maçã",20, 5.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("laranja",50, 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("banana",200, 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("uva",1200, 30.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("pêra",500, 2.99);

-- Primeira consulta geral
SELECT * FROM tb_produtos;

-- Consulta com coluna específica
SELECT nome FROM tb_produtos;

-- Selecionando mais de uma coluna
SELECT nome, preco FROM tb_produtos;

-- Consulta com WHERE
SELECT * FROM tb_produtos WHERE id = 1;

-- Maior que
SELECT * FROM tb_produtos WHERE preco > 5.00;

-- AND
SELECT * FROM tb_produtos WHERE preco > 5.00 AND quantidade < 100;

-- Modo pra n ser demitido
SET SQL_SAFE_UPDATES = 1;

-- Atualizar dados da tabela
UPDATE tb_produtos SET preco = 5.00 WHERE id = 1;

-- Deletar dados da tabela
DELETE FROM tb_produtos WHERE id = 2;

-- Atualizar coluna
ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

-- Adicionar coluna
ALTER TABLE tb_produtos ADD descricao varchar(255);

-- Deletar coluna
ALTER TABLE tb_produtos DROP descricao;

-- Trocar nome das colunas
ALTER TABLE tb_produtos CHANGE nome nomeproduto VARCHAR(255); 

