SELECT*FROM produto

UPDATE produto
SET categoria_id=1 -- Aqui é onde vai mudar
WHERE id=1; -- Aqui procura pelo id que vai ser mudado a caract. acima

UPDATE produto 
SET 
    categoria_id = 2
WHERE
    nome LIKE 'M%';

UPDATE produto 
SET 
    categoria_id = 3
WHERE
    preco >= 500;

UPDATE produto 
SET 
    estoque = estoque + 20
WHERE
    id = 1;

UPDATE produto 
SET 
    nome = 'pc usado - notebook',
    descricao = 'Notebook com SSD e 16GB de RAM',
    estoque = 15,
    categoria_id = 1
WHERE
    id = 4;

delete from produto where id = 1

INSERT into produto()
VALUE(default, 'telefoneX', 'telefone legal', 50.00, 200, 1 );
