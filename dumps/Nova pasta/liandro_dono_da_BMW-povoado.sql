USE liandro_dono_da_BMW;

INSERT INTO cliente (nome_cliente, email_cliente) VALUES 
('Liandro Souza de Carvalho', 'liandro@bmw.com'),
('Ana Abreu', 'ana.abreu@email.com'),
('Matheus jardim', 'matheus.vendas@gmail.com'),
('Rafael Matosso', 'rafael.matosso@outlook.com');

INSERT INTO produto (nome_produto, preco_produto) VALUES 
('Chaveiro BMW M Sport', 150.00),
('Capa de Retrovisor Carbono', 450.50),
('Tapete Personalizado', 320.00),
('Filtro de Óleo Premium', 89.90),
('Boné BMW Motorsport', 120.00);

INSERT INTO venda (data_venda, id_cliente) VALUES 
('2026-10-16', 1),
('2026-06-22', 2),
('2026-05-26', 3),
('2026-09-06', 1);

INSERT INTO item_venda (id_venda, id_produto, quantidade_item, preco_unitario) VALUES 
(1, 1, 1, 150.00),
(1, 5, 1, 120.00);

INSERT INTO item_venda (id_venda, id_produto, quantidade_item, preco_unitario) VALUES 
(2, 2, 2, 450.50);

INSERT INTO item_venda (id_venda, id_produto, quantidade_item, preco_unitario) VALUES 
(3, 4, 1, 89.90);

INSERT INTO item_venda (id_venda, id_produto, quantidade_item, preco_unitario) VALUES 
(4, 3, 1, 320.00);
