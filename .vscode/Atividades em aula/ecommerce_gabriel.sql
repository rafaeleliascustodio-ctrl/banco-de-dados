-- 1. Consultar todos os produtos
SELECT * FROM produto;

-- 2. Atualizar a categoria do produto com id = 1 para 1
UPDATE produto
SET categoria_id = 1
WHERE id = 1;

-- 3. Atualizar a categoria de produtos cujo nome começa com 'M' para 2
UPDATE produto
SET categoria_id = 2
WHERE nome LIKE 'M%';

-- 4. Atualizar a categoria de produtos com preço maior ou igual a 500 para 3
UPDATE produto
SET categoria_id = 3
WHERE preco >= 500;

-- 5. Adicionar 20 unidades ao estoque do produto com id = 1
UPDATE produto
SET estoque = estoque + 20
WHERE id = 1;

-- 6. Reduzir o preço do produto com id = 2 em 10%
UPDATE produto
SET preco = preco * 0.9
WHERE id = 2;

-- 7. Atualizar a descrição do produto com id = 3 para 'Monitor Full HD de 24 polegadas'
UPDATE produto
SET descricao = 'Monitor Full HD de 24 polegadas'
WHERE id = 3;

-- 8. Aumentar o preço de todos os produtos em 5%
UPDATE produto
SET preco = preco * 1.05;

-- 9. Atualizar a categoria de produtos cujo nome contém 'Notebook' para 4
UPDATE produto
SET categoria_id = 4
WHERE nome LIKE '%Notebook%';

-- 10. Reduzir o estoque do produto com id = 4 em 5 unidades
UPDATE produto
SET estoque = estoque - 5
WHERE id = 4;