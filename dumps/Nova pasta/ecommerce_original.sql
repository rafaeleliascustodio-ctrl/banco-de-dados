-- Criar o database
CREATE DATABASE ecommerce;
USE ecommerce;

-- Tabela de categorias de produtos
CREATE TABLE categoria (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

-- Tabela de produtos
CREATE TABLE produto (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    preco DECIMAL(10,2),
    estoque INT,
    categoria_id INT,
    FOREIGN KEY (categoria_id) REFERENCES categoria(id)
);

-- Tabela de clientes
CREATE TABLE cliente (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    telefone VARCHAR(20),
    endereco VARCHAR(255)
);

-- Tabela de pedidos
CREATE TABLE pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10,2) DEFAULT 0,
    status ENUM('Pendente','Processando','Enviado','Entregue','Cancelado') DEFAULT 'Pendente',
    FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);

-- Tabela de itens de pedido
CREATE TABLE pedido_item (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_id INT,
    produto_id INT,
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    FOREIGN KEY (pedido_id) REFERENCES pedido(id),
    FOREIGN KEY (produto_id) REFERENCES produto(id)
);

-- Tabela de itens em estoque
CREATE TABLE ItensEstoque (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produto_id INT,
    quantidade_entrada INT,
    quantidade_saida INT,
    data_movimentacao DATETIME DEFAULT CURRENT_TIMESTAMP,
    tipo_movimentacao ENUM('Entrada','Saida'),
    FOREIGN KEY (produto_id) REFERENCES produto(id)
);

-- Tabela de setores dos itens
CREATE TABLE SetorItem (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255)
);