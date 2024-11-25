	CREATE DATABASE db_pizzaria_legal;
    
CREATE TABLE tb_categorias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao TEXT
);

CREATE TABLE tb_pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    ingredientes TEXT,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES
('Salgada', 'Pizzas com ingredientes salgados.'),
('Doce', 'Pizzas com ingredientes doces,.'),
('Vegana', 'Pizzas sem ingredientes de origem animal.'),
('Vegetariana', 'Pizzas com vegetais, porem sem carne.'),
('Especial', 'Pizzas com receitas exclusivas ou especiais do restaurante ou escolhidas a dedo pelo cliente.');

INSERT INTO tb_pizzas (nome, valor, ingredientes, categoria_id)
VALUES
('Pizza Margherita', 40.00, 'Mussarela, tomate, manjericão', 1),   
('Pizza Calabresa', 45.00, 'Calabresa, cebola, azeitona', 1),     
('Pizza Chocolate', 50.00, 'Chocolate, morango', 2),               
('Pizza Doce de Leite', 55.00, 'Doce de leite, amendoim', 2),       
('Pizza Vegana de Palmito', 48.00, 'Palmito, cebola, azeitona', 3), 
('Pizza Vegetariana', 42.00, 'Cogumelo, espinafre, abobrinha', 4), 
('Pizza de Frango Especial', 60.00, 'Frango, catupiry, milho', 5),
('Pizza de Bacon com Queijo', 55.00, 'Bacon, queijo cheddar', 1);  

SELECT * FROM tb_pizzas WHERE valor > 45.00;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT 
    tb_pizzas.nome AS nome_pizza,
    tb_pizzas.valor,
    tb_pizzas.ingredientes,
    tb_categorias.nome_categoria 
    FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;
    
SELECT 
    tb_pizzas.nome AS nome_pizza,
    tb_pizzas.valor,
    tb_pizzas.ingredientes,
    tb_categorias.nome_categoria
    FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id 
    WHERE tb_categorias.nome_categoria = 'Doce';



