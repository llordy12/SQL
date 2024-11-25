CREATE DATABASE db_farmacia_bem_estar;
 
CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT
);
	CREATE TABLE tb_produtos (
		id INT AUTO_INCREMENT PRIMARY KEY,
		nome VARCHAR(100) NOT NULL,
		valor DECIMAL(10, 2) NOT NULL,
		fabricante VARCHAR(100),
		estoque INT NOT NULL,
		categoria_id INT,
		FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
	);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES
('Medicamentos', 'Produtos farmaceuticos para tratar da saude.'),
('Cosméticos', 'beleza e higiene pessoal.'),
('Suplementos', 'nutrição e bem-estar.'),
('Infantil', 'cuidados e saúde infantil.'),
('Acessórios', 'Itens auxiliarespra saude.');

INSERT INTO tb_produtos (nome, valor, fabricante, estoque, categoria_id)
VALUES
('Paracetamol', 20.00, 'MedPharma', 50, 1),      
('Protetor Solar', 75.00, 'SunCare', 30, 2),      
('Vitamina C', 40.00, 'NutriLife', 20, 3),        
('Leite em Pó Infantil', 85.00, 'BabyCare', 15, 4), 	
('Balança Digital', 150.00, 'HealthTools', 10, 5), 
('Shampoo', 45.00, 'HairCare', 25, 2),            
('Pomada Infantil', 35.00, 'BabySoft', 40, 4),    
('Termometro Digital', 60.00, 'HealthTech', 5, 5);      

SELECT * FROM tb_produtos WHERE valor > 50.00;

SELECT *  FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT 
    tb_produtos.nome AS nome_produto,
    tb_produtos.valor,
    tb_produtos.fabricante,
    tb_produtos.estoque,
    tb_categorias.nome_categoria,
    tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;

SELECT 
    tb_produtos.nome AS nome_produto,
    tb_produtos.valor,
    tb_produtos.fabricante,
    tb_produtos.estoque,
    tb_categorias.nome_categoria
FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id 
WHERE tb_categorias.nome_categoria = 'Cosméticos';




            
