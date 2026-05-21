
DROP DATABASE IF EXISTS ecommerce;

CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE categoria (
    id INT AUTO_INCREMENT,
    nome VARCHAR(100),
    descricao TEXT,
    PRIMARY KEY (id)
);

CREATE TABLE produto (
    id INT AUTO_INCREMENT,
    nome VARCHAR(150),
    descricao TEXT,
    preco DECIMAL(10 , 2 ),
    estoque INT,
    categoria_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY (categoria_id)
        REFERENCES categoria (id)
);

CREATE TABLE cliente (
    id INT AUTO_INCREMENT,
    nome VARCHAR(150),
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(20),
    endereco TEXT,
    PRIMARY KEY (id)
);

CREATE TABLE pedido (
    id INT AUTO_INCREMENT,
    cliente_id INT,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10,2) DEFAULT 0,
    status ENUM('Pendente','Processando','Enviado','Entregue','Cancelado') DEFAULT 'Pendente',
    PRIMARY KEY (id),
    FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);

CREATE TABLE pedido_item (
    id INT AUTO_INCREMENT,
    pedido_id INT,
    produto_id INT,
    quantidade INT,
    preco_unitario DECIMAL(10 , 2 ),
    PRIMARY KEY (id),
    FOREIGN KEY (pedido_id)
        REFERENCES pedido (id),
    FOREIGN KEY (produto_id)
        REFERENCES produto (id)
);