-- Criando DB
CREATE DATABASE db_farmacia_bem_estar;

-- Seleciona o D
USE db_farmacia_bem_estar;

-- Criação da tabela tb_categorias
CREATE TABLE tb_categorias (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    descricao TEXT
);

-- Inserção de 5 registros na tabela tb_categorias
INSERT INTO tb_categorias (nome, descricao) VALUES ('Medicamentos', 'Produtos para tratamento de doenças e sintomas');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Higiene Pessoal', 'Produtos de higiene pessoal');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Perfumaria', 'Produtos de perfumaria');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Cosméticos', 'Produtos para cuidados com a pele e cabelos');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Alimentos', 'Produtos para alimentação saudável');

-- Criação da Tabela produtos:
CREATE TABLE tb_produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10, 2) NOT NULL,
    estoque INT NOT NULL,
    categoria_id INT NOT NULL,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

-- inserção de dados da tabela produtos:
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria_id) VALUES ('Paracetamol', 'Analgésico', 8.50, 80, 1);
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria_id) VALUES ('Sabonete Dove', 'Hidratante e suave', 3.99, 120, 2);
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria_id) VALUES ('Shampoo Seda', 'Para cabelos lisos', 12.99, 50, 4);
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria_id) VALUES ('Condicionador Pantene', 'Para cabelos danificados', 18.75, 40, 4);
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria_id) VALUES ('Perfume O Boticário', 'Coffee Seduction', 65.00, 20, 3);
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria_id) VALUES ('Hidratante Nivea', 'Para peles secas', 25.90, 60, 4);
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria_id) VALUES ('Chá Leão', 'Relaxante e quentinho', 9.99, 200, 5);
INSERT INTO tb_produtos (nome, descricao, preco, estoque, categoria_id) VALUES ('Red Bull', 'Te dá aaasas', 12.99, 30, 5);

select * from tb_produtos;

-- Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00:
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00:
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT p.*, c.nome AS categoria_nome FROM tb_produtos p INNER JOIN tb_categorias c ON p.categoria_id = c.id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas 
-- os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).
SELECT p.*, c.nome AS categoria_nome FROM tb_produtos p 
INNER JOIN tb_categorias c ON p.categoria_id = c.id WHERE c.nome = 'Cosméticos';