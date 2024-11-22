CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
id BIGINT AUTO_iNCREMENT,
nome VARCHAR(255),
quantidade INT,
datavalidade DATE,
preco DECIMAL NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome,quantidade,datavalidade,preco) 
VALUES("tomate",100,"2023-12-15",9.00),
	("maçã",20, "2023-12-15", 5.00),
	("laranja",50, "2023-12-15", 10.00),
	("banana",200, "2023-12-15", 12.00),
	("uva",1200, "2023-12-15", 30.00),
	("pêra",500, "2023-12-15", 2.99);
    
select * FROM tb_produtos;

SELECT nome,id FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 3;

SELECT * FROM tb_produtos WHERE nome in ("tomate", "uva");

SELECT * FROM tb_produtos WHERE preco >= 5;-- or and --

SET SQL_SAFE_UPDATES = 0;
-- comando para n deixar dar delete sem where --

UPDATE tb_produtos SET preco = 2.99 WHERE  id =2;

DELETE FROM tb_produtos WHERE  id = 9;
-- USAR IN SE QUISER APAGAR VARIOS " IN () " --

