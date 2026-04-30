create database liandro_dono_da_BMW;
use liandro_dono_da_BMW;

CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome_cliente VARCHAR(100) NOT NULL,
    email_cliente VARCHAR(30) UNIQUE NOT NULL
);
CREATE TABLE produto (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    preco_produto DECIMAL(5 , 2 ) NOT NULL
);
CREATE TABLE venda (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    data_venda DATE NOT NULL,
    id_cliente INT,
    FOREIGN KEY (id_cliente)
        REFERENCES cliente (id_cliente)
);

CREATE TABLE item_venda (
    id_venda INT,
    id_produto INT,
    quantidade_item INT NOT NULL,
    preco_unitario DECIMAL(5 , 2 ) NOT NULL,
    PRIMARY KEY (id_venda , id_produto),
    FOREIGN KEY (id_venda)
        REFERENCES venda (id_venda),
    FOREIGN KEY (id_produto)
        REFERENCES produto (id_produto)
);