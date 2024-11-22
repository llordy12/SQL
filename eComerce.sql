CREATE DATABASE db_eComerce;

CREATE TABLE Produtos (
    ID INT PRIMARY KEY AUTO_INCREMENT,  
    NomeProduto VARCHAR(100) NOT NULL,         
    Categoria VARCHAR(50) NOT NULL,            
    Preco DECIMAL(10, 2) NOT NULL,             
    QuantidadeEstoque INT NOT NULL             
);
select * FROM Produtos;
INSERT INTO Produtos (NomeProduto, Categoria, Preco, QuantidadeEstoque)
VALUES 
    ('Narguile Zeus', 'Narguilés', 599.99, 15),
    ('Essencia de Maçã', 'Essências', 29.99, 50),
    ('Carvão para Narguile', 'Acessórios', 19.99, 100),
    ('Vazo para Narguile', 'Acessórios', 49.99, 30),
    ('Essência de Menta', 'Essências', 32.50, 40),
    ('Narguilé Umbrella', 'Narguilés', 179.90, 20),
    ('Piteira de Aluminio', 'Acessórios', 15.00, 75),
    ('Essência de Uva', 'Essências', 35.00, 60);
    
    SELECT * FROM Produtos WHERE Preco > 500;
	SELECT * FROM Produtos WHERE Preco < 500;
    UPDATE Produtos SET Preco = 599 WHERE ID = 1;

