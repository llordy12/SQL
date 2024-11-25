CREATE DATABASE db_generation_game_online;


CREATE TABLE tb_classes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_da_classe VARCHAR(50) NOT NULL,         
    habilidade_especial VARCHAR(100) NOT NULL
);

CREATE TABLE tb_personagens (
    id INT AUTO_INCREMENT PRIMARY KEY, 
    nome VARCHAR(100) NOT NULL,        
    classe_id INT NOT NULL,            
    nivel INT DEFAULT 1,              
    pontos_vida INT DEFAULT 100,       
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    FOREIGN KEY (classe_id) REFERENCES tb_classes(id) 
);

INSERT INTO tb_classes (nome_da_classe, habilidade_especial)
VALUES 
('Guerreiro', 'Ataques corpo a corpo com alta resistencia'),
('Mago', 'Lança feitiços de dano em área e controle de inimigos'),
('Arqueiro', 'Ataques de longa distancia'),
('Paladino', 'Ataques corpo a corpo e cura'),
('Suporte','Ataca de longo alcance e cura aliados proximos');

ALTER TABLE tb_personagens ADD COLUMN poder_ataque INT;

INSERT INTO tb_personagens (nome, classe_id, nivel, pontos_vida, poder_ataque)
VALUES
('Brimstone', 1, 5, 120, 1500),      
('Yagami', 2, 7, 100, 1000),     
('Zero', 3, 6, 110, 1250),    
('soap', 1, 8, 150, 2800),     
('jax', 2, 9, 90, 4000),    
('Zoro', 3, 4, 95, 500),    
('Kratos', 1, 10, 200, 5000),   
('luffy', 3, 8, 130, 4500);
   
select * FROM  tb_classes;
select * FROM  tb_personagens;

DELETE FROM tb_personagens WHERE id <= 8;	

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_ataque BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE nome LIKE '%o';	
SELECT * FROM tb_personagens WHERE nome LIKE '%c%';	
SELECT * FROM tb_personagens WHERE nome LIKE 'Z%';	

SELECT 
    tb_personagens.nome AS nome_personagem,
    tb_personagens.nivel,
    tb_personagens.pontos_vida,
    tb_personagens.poder_ataque,
    tb_classes.nome_da_classe AS nome_classe,
    tb_classes.habilidade_especial 
    FROM tb_personagens INNER JOIN  tb_classes ON tb_personagens.classe_id = tb_classes.id;
    
SELECT 
    tb_personagens.nome AS nome_personagem,
    tb_personagens.nivel,
    tb_personagens.pontos_vida,
    tb_personagens.poder_ataque,
    tb_classes.nome_da_classe AS nome_classe,
    tb_classes.habilidade_especial
FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id 
WHERE tb_classes.nome_da_classe = 'Arqueiro';