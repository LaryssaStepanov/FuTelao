CREATE DATABASE db_ticketgold;

USE db_ticketgold;

CREATE TABLE tb_pessoas(
	codigo INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(200),
    sexo VARCHAR(200),
    fone VARCHAR(200),
    email VARCHAR(200),
    cpf VARCHAR(200),
    senha VARCHAR(200),
    tipo VARCHAR(200)
);

INSERT INTO tb_pessoas (usuario, sexo, fone, email, cpf, senha, tipo) VALUES 
('admin', '', '', '','','admin', 'Admin'),
('comum', '', '', '','','comum', 'Comum');

SELECT * FROM tb_pessoas;

CREATE TABLE tb_eventos(
	codigo INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(200),
    dia VARCHAR(200),
    horario VARCHAR(200),
    descricao VARCHAR(200)
);

INSERT INTO tb_eventos (nome, dia, horario, descricao) VALUES
('Show de músicas', '27/05/2024', '19:00', 'Show com músicas variadas'),
('Copa do Brasil', '28/11/2022', '16:00', 'Partida Brasil vs Coreia do Sul');

SELECT * FROM tb_eventos;
