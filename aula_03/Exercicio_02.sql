-- Criação do BD:
CREATE DATABASE db_pizzaria_legal;

-- Seleciona o BD:
USE db_pizzaria_legal;

-- Criação da Tabela tb_categorias:
CREATE TABLE tb_categorias (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  descricao TEXT,
  PRIMARY KEY (id)
);

-- Inserção de dados na tabela tb_categorias:
INSERT INTO tb_categorias (nome, descricao) VALUES ('Salgadas', 'Pizzas salgadas');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Doces', 'Pizzas doces');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Vegetarianas', 'Pizzas vegetarianas');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Queijos', 'Pizzas com queijos especiais');
INSERT INTO tb_categorias (nome, descricao) VALUES ('Especiais', 'Pizzas especiais');

-- Criação da Tabela tb_pizzas:
CREATE TABLE tb_pizzas (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  descricao TEXT,
  preco DECIMAL(6,2) NOT NULL,
  id_categoria INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (id_categoria) REFERENCES tb_categorias (id)
);

-- Inserção de dados na tabela tb_pizzas:
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ('Calabresa', 'Molho de tomate, mussarela, calabresa, cebola e orégano', 35.90, 1);
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ('Marguerita', 'Molho de tomate, mussarela, tomate e manjericão', 40.50, 1);
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ('Quatro Queijos', 'Molho de tomate, mussarela, provolone, parmesão e gorgonzola', 50.00, 4);
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ('Brócolis', 'Molho de tomate, mussarela, brócolis, alho e azeitonas', 42.00, 3);
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ('Chocolate', 'Chocolate, leite condensado, granulado e cerejas', 30.00, 2);
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ('Frango com Catupiry', 'Molho de tomate, mussarela, frango desfiado e catupiry', 48.50, 1);
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ('Portuguesa', 'Molho de tomate, mussarela, presunto, ovo, cebola e azeitonas', 45.00, 1);
INSERT INTO tb_pizzas (nome, descricao, preco, id_categoria) VALUES ('Pepperoni', 'Molho de tomate, mussarela, pepperoni e azeitonas', 55.90, 1);

-- SELECT que retorna todas as pizzas cujo valor seja maior do que R$ 45,00:
SELECT * FROM tb_pizzas WHERE preco > 45;

-- SELECT que busca todas as pizzas que possuam a letra M no atributo nome:
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

-- SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias:
SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id
WHERE tb_categorias.nome = 'Pizzas doces';