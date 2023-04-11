CREATE DATABASE cidade_das_carnes;

CREATE TABLE categorias (
Id BIGINT AUTO_INCREMENT,
nome varchar(255) not null,
descricao varchar(255) not null,
PRIMARY KEY (Id)
);

INSERT INTO categorias (nome, descricao) VALUES ("Carne", "suína");
INSERT INTO categorias (nome, descricao) VALUES ("Carne", "bovina");
INSERT INTO categorias (nome, descricao) VALUES ("Linguiça", "suína");
INSERT INTO categorias (nome, descricao) VALUES ("Linguiça", "pernil");
INSERT INTO categorias (nome, descricao) VALUES ("Peixe", "fresco");

SELECT * FROM categorias;

CREATE TABLE produtos(
    id bigint auto_increment,
    nome varchar(255) not null,
    descricao varchar(255) not null,
    preco decimal (6,2) not null,
    peso varchar(255) not null,
    categoria_id bigint,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id) REFERENCES categorias(id)
);

INSERT INTO produtos (nome, descricao, preco, peso, categoria_id) VALUES ("Carré", "suíno", 12.90 , "1kg", 1);
INSERT INTO produtos (nome, descricao, preco, peso, categoria_id) VALUES ("Pernil", "defumado", 75.90 , "5kg", 1);
INSERT INTO produtos (nome, descricao, preco, peso, categoria_id) VALUES ("Contra-filé", "bovino", 37.90 , "1kg", 2);
INSERT INTO produtos (nome, descricao, preco, peso, categoria_id) VALUES ("Fillet Mignon", "maturatta", 49.90 , "1kg", 2);
INSERT INTO produtos (nome, descricao, preco, peso, categoria_id) VALUES ("Linguiça", "defumada", 12.90 , "1kg", 3);
INSERT INTO produtos (nome, descricao, preco, peso, categoria_id) VALUES ("Linguiça", "p/ churrascco", 80.90 , "5kg", 4);
INSERT INTO produtos (nome, descricao, preco, peso, categoria_id) VALUES ("Filé de salmão", "Premium", 129.90 , "900g", 5);
INSERT INTO produtos (nome, descricao, preco, peso, categoria_id) VALUES ("Cação", "fresco", 35.90 , "1kg", 5);

-- Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
SELECT * FROM produtos WHERE preco > 50;

-- Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 150,00.
SELECT * FROM produtos WHERE preco BETWEEN 50 AND 150;

-- Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
SELECT * FROM produtos WHERE nome LIKE "%c%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
SELECT * FROM produtos INNER JOIN categorias ON produtos.categoria_id = categorias.id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas
-- os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria aves ou frutas).
SELECT * FROM produtos INNER JOIN categorias ON produtos.categoria_id = categorias.id 
WHERE categorias.descricao = "Suína" ;