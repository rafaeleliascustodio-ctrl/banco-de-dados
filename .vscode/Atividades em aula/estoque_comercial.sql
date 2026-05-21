CREATE DATABASE estoque_comercial;
USE estoque_comercial;

CREATE TABLE setores (
    id_setor INT AUTO_INCREMENT PRIMARY KEY,
    nome_setor VARCHAR(50) NOT NULL
);

CREATE TABLE itens_estoque (
    id_item INT AUTO_INCREMENT PRIMARY KEY,
    nome_item VARCHAR(100) NOT NULL,
    descricao_item VARCHAR(255),
    quantidade_item INT NOT NULL,
    preco_compra_item DECIMAL(10,2) NOT NULL,
    preco_venda_item DECIMAL(10,2) NOT NULL,
    id_setor INT,
    data_entrada DATE,
    fornecedor_item VARCHAR(100),
    FOREIGN KEY (id_setor) REFERENCES setores(id_setor)
);

INSERT INTO setores (nome_setor) VALUES
('Eletrônicos'),
('Alimentos'),
('Limpeza'),
('Roupas');

INSERT INTO itens_estoque
(nome_item, descricao_item, quantidade_item, preco_compra_item, preco_venda_item, id_setor, data_entrada, fornecedor_item)
VALUES
('Notebook Dell', 'Notebook i5 16GB RAM', 10, 3200.00, 4500.00, 1, '2026-05-01', 'Dell Brasil'),
('Mouse Gamer', 'Mouse RGB USB', 25, 80.00, 150.00, 1, '2026-05-03', 'Redragon'),
('Arroz 5kg', 'Pacote de arroz branco', 40, 18.00, 28.00, 2, '2026-05-02', 'Tio João'),
('Detergente', 'Detergente neutro 500ml', 60, 2.50, 4.50, 3, '2026-05-04', 'Ypê'),
('Camiseta Polo', 'Camiseta masculina polo', 15, 35.00, 70.00, 4, '2026-05-05', 'Hering');
