-- 1) Quantidade de itens por setor
SELECT SetorItem, COUNT(*) AS quantidade_itens
FROM ItensEstoque
GROUP BY SetorItem;

-- 2) Média do valor do produto por setor
SELECT SetorItem, AVG(precoVendaItem) AS media_preco
FROM ItensEstoque
GROUP BY SetorItem;

-- 3) Valor máximo e mínimo por setor
SELECT SetorItem, MAX(precoVendaItem) AS preco_maximo, MIN(precoVendaItem) AS preco_minimo
FROM ItensEstoque
GROUP BY SetorItem;

