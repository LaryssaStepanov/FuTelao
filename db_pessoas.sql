CREATE DATABASE db_pessoas;

USE db_pessoas;

CREATE TABLE tb_pessoas(
	codigo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200),
    fone VARCHAR(200),
    email VARCHAR(200),
    cpf VARCHAR(11),
    senha VARCHAR(200)
);

INSERT INTO tb_pessoas (nome, fone, email, cpf, senha) VALUES 
('admin',  '11975341864', 'admin@gmail.com','48653279842','admin'),
('usuario', '11971685209', 'usuario@gmail.com','21358483423','usuario');

SELECT * FROM tb_pessoas;