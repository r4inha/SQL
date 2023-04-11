CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(200),
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    level INT NOT NULL,
    class_id INT NOT NULL,
    health INT NOT NULL,
    defense_power INT NOT NULL,
    power_attack INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (class_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_classes (name, description) VALUES
    ('Guerreiro', 'Personagem com habilidades de combate corpo-a-corpo.'),
    ('Mago', 'Personagem com habilidades mágicas e de suporte.'),
    ('Arqueiro', 'Personagem com habilidades de ataque à distância.'),
    ('Cavaleiro', 'Personagem com habilidades de defesa e montaria.'),
    ('Necromante', 'Personagem com habilidades de invocação e controle de mortos-vivos.');

INSERT INTO tb_personagens (nome, level, class_id, health, defense_power, power_attack) VALUES
    ('Aragorn', 10, 1, 100, 85,5500),
    ('Gandalf', 12, 2, 80, 95, 6000),
    ('Legolas', 8, 3, 70, 75, 4500),
    ('Eowyn', 6, 1, 90,60,3500),
    ('Boromir', 7, 1, 80,70, 4000),
    ('Frodo', 3, 2, 50,55,2500),
    ('Gimli', 9, 1, 100,80,5000),
    ('Sam', 4, 2, 60, 62,3000);    
    
    SELECT * FROM tb_personagens WHERE power_attack > 2000;
    
    SELECT * FROM tb_personagens WHERE power_defense BETWEEN 1000 AND 2000;
    
    SELECT * FROM tb_personagens WHERE nome LIKE '%C%';
    
SELECT tb_personagens.*, tb_classes.name AS class_name FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.class_id = tb_classes.id;

SELECT tb_personagens.*, tb_classes.name AS class_name FROM tb_personagens 
INNER JOIN tb_classes ON tb_personagens.class_id = tb_classes.id 
WHERE tb_classes.name = 'Arqueiro';