CREATE DATABASE db_RH;

USE db_RH;
CREATE TABLE Colaboradores (
    ID INT PRIMARY KEY AUTO_INCREMENT,         
    Nome VARCHAR(100) NOT NULL,               
    Cargo VARCHAR(50) NOT NULL,                
    DataAdmissao DATE NOT NULL,                
    Departamento VARCHAR(50) NOT NULL,
    Salario BIGINT NOT NULL
);

INSERT INTO Colaboradores(Nome,Cargo,DataAdmissao,Departamento,Salario) 
VALUES
	("Hector","Dev","2022-12-15","TI",5000),
	("Michelli","Dev","2022-9-15","TI",5000),
    ("Gustavo","Segurança","2021-8-3","OP",1500),
	("Hugo","Supervisor","2022-5-15","OP",4000),
	("Eliana","Gerente","2023-4-15","OP",6000);
	
select * FROM Colaboradores;

SELECT * FROM Colaboradores WHERE Salario > 2000;
SELECT * FROM Colaboradores WHERE Salario < 2000;
SHOW TABLES;
UPDATE Colaboradores SET Cargo = 'Gerente de Projetos',Salario = 150000 WHERE ID = 1;