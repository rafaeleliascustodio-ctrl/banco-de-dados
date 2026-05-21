create database CINEMA;
use CINEMA;

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    cpf_cliente VARCHAR(15) NOT NULL UNIQUE,
    email_cliente VARCHAR(30) NOT NULL UNIQUE,
    statuts_cliente ENUM('Ativo', 'inativo')
);

CREATE TABLE categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    descricao_cat VARCHAR(30) NOT NULL
);

CREATE TABLE filme (
    id_filme INT PRIMARY KEY AUTO_INCREMENT,
    nome_filme VARCHAR(100) NOT NULL,
    faixa_etaria INT CHECK (faixa_etaria >= 0),
    duracao_filme INT NOT NULL,
    status_filme ENUM('Em cartaz', 'Fora cartaz'),
    id_categoria_filme INT NOT NULL,
    FOREIGN KEY (id_categoria_filme)
        REFERENCES categoria (id_categoria)
);

CREATE TABLE sala (
    id_sala INT PRIMARY KEY AUTO_INCREMENT,
    descricao_sala TEXT NOT NULL,
    tipo_sala ENUM('2D', '3D', 'Imax') DEFAULT '2D',
    capacidade_sala INT NOT NULL CHECK (capacidade_sala > 0),
    vip_sala BOOLEAN DEFAULT FALSE
);

CREATE TABLE sessao (
    id_sessao INT AUTO_INCREMENT PRIMARY KEY,
    data_hora_sessao DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    id_sala INT NOT NULL,
    id_filme INT NOT NULL,
    FOREIGN KEY (id_sala)
        REFERENCES sala (id_sala),
    FOREIGN KEY (id_filme)
        REFERENCES filme (id_filme),
    status_sessao ENUM('Aberta', 'Encerrada', 'Cancelada') DEFAULT 'Aberta',
    UNIQUE (data_hora_sessao , id_sala)
);

CREATE TABLE tipo_ingresso (
    id_tipo_ingresso INT PRIMARY KEY AUTO_INCREMENT,
    descrição_ingresso VARCHAR(50) NOT NULL,
    valor_ingresso DECIMAL(5 , 2 ) NOT NULL CHECK (valor_ingresso >= 0)
);

CREATE TABLE pedido (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_hora DATETIME DEFAULT CURRENT_TIMESTAMP,
    id_cliente INT,
    status_pedido ENUM('aberto', 'pago', 'cancelado') DEFAULT 'aberto',
    FOREIGN KEY (id_cliente)
        REFERENCES cliente (id_cliente)
);

CREATE TABLE ingresso (
    id_ingresso INT PRIMARY KEY AUTO_INCREMENT,
    id_pedido INT NOT NULL,
    id_sessao INT NOT NULL,
    id_tipo_ingresso INT NOT NULL,
    valor_pago DECIMAL(5 , 2 ) NOT NULL,
    status_ingresso ENUM('Reservado', 'Pago', 'Cancelado') DEFAULT 'Reservado',
    FOREIGN KEY (id_pedido)
        REFERENCES pedido (id_pedido),
    FOREIGN KEY (id_sessao)
        REFERENCES sessao (id_sessao),
    FOREIGN KEY (id_tipo_ingresso)
        REFERENCES tipo_ingresso (id_tipo_ingresso)
);
