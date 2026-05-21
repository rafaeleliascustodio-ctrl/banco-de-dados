UPDATE produto
SET
    descricao='Notebook com SSD e 16GB de RAM',
    estoque=15
WHERE id=4;

UPDATE produto
SET
    nome = 'pc usado - notebook',
    descricao='Notebook com SSD e 16GB de RAM',
    estoque=15,
    categoria_id = 1
WHERE id=4;

SELECT*FROM produto;