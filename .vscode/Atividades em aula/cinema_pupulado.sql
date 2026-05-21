-- 1. Populando Categorias
INSERT INTO categoria (descricao_cat) VALUES 
('Ação'), ('Comédia'), ('Terror'), ('Ficção Científica'), ('Animação');

-- 2. Populando Filmes
INSERT INTO filme (nome_filme, faixa_etaria, duracao_filme, status_filme, id_categoria_filme) VALUES 
('Vingadores', 12, 180, 'Em cartaz', 1),
('Minions', 0, 90, 'Em cartaz', 5),
('Invocação do Mal', 16, 110, 'Fora cartaz', 3),
('Interestelar', 10, 169, 'Em cartaz', 4);

-- 3. Populando Salas
INSERT INTO sala (descricao_sala, tipo_sala, capacidade_sala, vip_sala) VALUES 
('Sala Master 01', 'Imax', 300, TRUE),
('Sala Padrão 02', '2D', 150, FALSE),
('Sala Realista 03', '3D', 100, FALSE);

-- 4. Populando Clientes
INSERT INTO cliente (nome_cliente, cpf_cliente, email_cliente, statuts_cliente) VALUES 
('João Silva', '123.456.789-01', 'joao@email.com', 'Ativo'),
('Maria Oliveira', '987.654.321-02', 'maria@email.com', 'Ativo'),
('Carlos Souza', '456.123.789-03', 'carlos@email.com', 'inativo');

-- 5. Populando Tipos de Ingresso
INSERT INTO tipo_ingresso (descrição_ingresso, valor_ingresso) VALUES 
('Inteira', 40.00),
('Meia-entrada', 20.00),
('Promocional', 15.00);

-- 6. Criando Sessões
INSERT INTO sessao (data_hora_sessao, id_sala, id_filme, status_sessao) VALUES 
('2024-05-20 19:00:00', 1, 1, 'Aberta'),
('2024-05-20 21:00:00', 2, 2, 'Aberta'),
('2024-05-21 15:00:00', 3, 4, 'Aberta');

-- 7. Criando Pedidos
INSERT INTO pedido (id_cliente, status_pedido) VALUES 
(1, 'pago'),
(2, 'aberto');

-- 8. Gerando Ingressos
INSERT INTO ingresso (id_pedido, id_sessao, id_tipo_ingresso, valor_pago, status_ingresso) VALUES 
(1, 1, 1, 40.00, 'Pago'),
(1, 1, 2, 20.00, 'Pago'),
(2, 2, 2, 20.00, 'Reservado');
