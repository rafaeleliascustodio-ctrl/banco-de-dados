-- buscar por produto dentro da venda
-- QUERY - select - leitura
-- * todas as colunas
-- select nomes de tables (filtra)
SELECT 
    id_produto, preco_unitario
FROM
    item_venda
WHERE
    id_venda = 1 AND id_produto = 1;
-- psquisando por nome
SELECT 
    iv.preco_unitario, p.nome_produto
FROM
    item_venda AS iv
        JOIN
    produto AS p ON iv.id_produto = p.id_produto
WHERE
    iv.id_venda = 1
        AND p.nome_produto LIKE '%Chaveiro BMW M Sport%';
-- buscando todas as vendas de um cliente
SELECT 
    *
FROM
    venda
WHERE
    id_cliente = 1;
-- buscar produto mais vendido
SELECT 
    p.nome_produto, SUM(iv.quantidade_item) AS total_vendido
FROM
    item_venda AS iv
        JOIN
    produto p ON p.id_produto = iv.id_produto
GROUP BY p.nome_produto;