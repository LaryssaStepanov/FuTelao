CREATE DATABASE db_pessoas;

USE db_pessoas;

CREATE TABLE tb_comum(
	codigo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200),
    fone VARCHAR(200),
    email VARCHAR(200),
    cpf VARCHAR(11),
    senha VARCHAR(200)
);

CREATE TABLE tb_admin(
	codigo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200),
    fone VARCHAR(200),
    email VARCHAR(200),
    cpf VARCHAR(11),
    senha VARCHAR(200)
);

INSERT INTO tb_comum (nome, fone, email, cpf, senha) VALUES 
('Eduardo',  '11982930475', 'eduardo@gmail.com','12345678901','eduardo'),
('Maria', '11902677291', 'maria@gmail.com','01234567890','maria');

INSERT INTO tb_admin (nome, fone, email, cpf, senha) VALUES 
('Laryssa',  '11975341864', 'laryssa@gmail.com','48653279842','laryssa'),
('Bruno', '11971685209', 'bruno@gmail.com','21358483423','bruno'),
('Allan','11973537568','ogawa@gmail.com','79325840167','777'),
('Danilo','11964852347','danilo@gmail.com','74685294318','danilo'),
('Gabrielle','11975489124','gabrielle@gmail.com','68452931846','gabrielle'),
('Joao','11968234687','joao@gmail.com','82495031674','joao');

SELECT * FROM tb_comum;

SELECT * FROM tb_admin;