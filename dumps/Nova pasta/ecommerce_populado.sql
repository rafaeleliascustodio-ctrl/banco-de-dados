USE ecommerce;

-- Inserindo categorias
INSERT INTO categoria (nome) VALUES
('Periféricos'),
('Computadores'),
('Monitores');

-- Inserindo produtos
INSERT INTO produto (nome, descricao, preco, estoque, categoria_id) VALUES
('Mouse Gamer', 'Mouse RGB', 149.90, 50, 1),
('Teclado Mecânico', 'Teclado gamer', 299.90, 30, 1),
('Monitor 24"', 'Monitor Full HD', 899.90, 20, 3),
('Notebook', 'Notebook i5 16GB RAM', 3500.00, 10, 2);

-- Inserindo clientes
INSERT INTO cliente (nome, email, telefone, endereco) VALUES
('João Silva', 'joao@gmail.com', '47999990001', 'Rua A, Centro'),
('Maria Souza', 'maria@gmail.com', '47999990002', 'Rua B, Centro'),
('Carlos Lima', 'carlos@gmail.com', '47999990003', 'Rua C, Centro');

-- Inserindo pedidos
INSERT INTO pedido (cliente_id, total, status) VALUES
(1, 449.80, 'Processando'),
(2, 899.90, 'Enviado'),
(3, 3500.00, 'Pendente');

-- Inserindo itens dos pedidos
INSERT INTO pedido_item (pedido_id, produto_id, quantidade, preco_unitario) VALUES
(1, 1, 1, 149.90),
(1, 2, 1, 299.90),
(2, 3, 1, 899.90),
(3, 4, 1, 3500.00);

-- Inserindo movimentações de estoque
INSERT INTO ItensEstoque 
(produto_id, quantidade_entrada, quantidade_saida, tipo_movimentacao) VALUES
(1, 50, 0, 'Entrada'),
(2, 30, 0, 'Entrada'),
(3, 20, 0, 'Entrada'),
(4, 10, 0, 'Entrada'),
(1, 0, 1, 'Saida'),
(2, 0, 1, 'Saida');

-- Inserindo setores
INSERT INTO SetorItem (nome, descricao) VALUES
('Informática', 'Setor de produtos de informática'),
('Periféricos', 'Setor de acessórios e periféricos'),
('Monitores', 'Setor de telas e monitores');