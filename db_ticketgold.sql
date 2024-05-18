CREATE DATABASE db_ticketgold;

USE db_ticketgold;

CREATE TABLE tb_pessoas(
	codigo INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(200),
    fone VARCHAR(200),
    email VARCHAR(200),
    cpf VARCHAR(11),
    senha VARCHAR(200),
    tipo VARCHAR(200)
);

INSERT INTO tb_pessoas (usuario, fone, email, cpf, senha, tipo) VALUES 
('admin',  '11975341864', 'admin@gmail.com','48653279842','admin', 'Admin'),
('comum', '11971685209', 'usuario@gmail.com','21358483423','comum', 'Comum');

SELECT * FROM tb_pessoas;

CREATE TABLE tb_eventos(
	codigo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200),
    dia VARCHAR(200),
    descricao VARCHAR(200)
);

SELECT * FROM tb_eventos;