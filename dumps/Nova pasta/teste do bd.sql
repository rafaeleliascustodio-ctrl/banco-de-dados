#populando meu banco de dados
#lojinha MA78

#comando insert into
-- populando tabela cliente
-- insert into cliente(em ordem o nome das colunas) values
-- (valores atribuidos a cada registro, em ordem),
-- (),
-- ();
insert into cliente(nome_cliente, sobrenome_cliente, cpf_cliente, telefone_cliente, email_cliente, cep_cliente, cidade_cliente)
values
('virgínia', 'do sul', '12345678901', '40028922', 'virginia@hotmail.com','1234' , 'eua'),
('Ricardo', 'Oliveira', '98765432100', '11988887777', 'ricardo.oli@gmail.com', '5678', 'brasil'),
('Mariana', 'Silva', '45612378955', '21977776666', 'mari.silva@outlook.com', '9012', 'portugal'),
('Lucas', 'Mendes', '32165498711', '31966665555', 'lucasmendes@uol.com.br', '3456', 'espanha'),
('Beatriz', 'Santos', '15975345688', '41955554444', 'bia.santos@yahoo.com', '7890', 'canada');

insert into produto(nome_produto, descricao_produto, preco_produto, categoria_produto, marca_produto, codigo_barras_produto, data_validade_produto, peso_produto, status_produto)
values('Refrigerante Cola', 'Bebida gaseificada sabor cola 2L', 8.50, 'Bebidas', 'Coca-Cola', '7894900011517', '2026-12-31', 2.000, 'Disponivel') ;
