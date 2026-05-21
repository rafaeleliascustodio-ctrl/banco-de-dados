USE estoque_comercial;

SELECT id_setor, COUNT(*) AS quantidade_itens
FROM itens_estoque
GROUP BY id_setor;

SELECT id_setor, AVG(preco_venda_item) AS media_preco
FROM itens_estoque
GROUP BY id_setor;

SELECT id_setor,
MAX(preco_venda_item) AS preco_maximo,
MIN(preco_venda_item) AS preco_minimo
FROM itens_estoque
GROUP BY id_setor;

SELECT id_setor,
SUM(quantidade_item * preco_venda_item) AS total_estoque
FROM itens_estoque
GROUP BY id_setor;

SELECT id_paciente,
       data_consulta,
       SUM(valor)
FROM Consultas
GROUPBY id_paciente;