CREATE DATABASE db_Registro;


CREATE TABLE Estudantes (
    ID INT PRIMARY KEY AUTO_INCREMENT,  
    Nome VARCHAR(100) NOT NULL,                 
    DataNascimento DATE NOT NULL,                
    AnoLetivo VARCHAR(50) NOT NULL,                  
    DataMatricula DATE NOT NULL,
    Nota BigInt NOT NULL
);
ALTER TABLE Estudantes ADD COLUMN Nota DECIMAL(5,2);
INSERT INTO Estudantes (Nome, DataNascimento, AnoLetivo, DataMatricula,Nota)
VALUES 
    ('João Silva', '2005-03-15', '8 serie A', '2023-01-10',10),
    ('Maria Oliveira', '2004-06-22', '8 serie A', '2022-11-15',8),
    ('Carlos Souza', '2003-09-30', '8 serie A ', '2023-02-20',9),
    ('Ana Costa', '2006-12-01', '8 serie A', '2023-03-05',4),
    ('Beatriz Lima', '2004-11-12', '8 serie A', '2022-10-01',5),
    ('Lucas Pereira', '2005-05-17', '8 serie A', '2023-01-25',7),
    ('Fernanda Rocha', '2004-08-19', '8 serie A', '2022-12-10',6),
    ('Rafael Santos', '2003-11-05', '8 serie A', '2023-02-15',0);
    
    SELECT * FROM Estudantes;

    SELECT * FROM estudantes WHERE Nota > 7;
	SELECT * FROM estudantes WHERE Nota < 7;
    UPDATE Estudantes SET Nota = 9.5 WHERE ID = 1;