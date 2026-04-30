#comentariosa
#criar banco exemplo
#criacao de banco de dados
/*
LOJINHA MA 78
DATA: 22/04/2026
FEITO POR: RAFAEL ELIAS CUSTODIO
*/
create database lojinhaMA78;
use lojinhaMA78;-- comando para usar um bd especifico
SHOW databases;-- mostrar banco atuais
-- criando uma tabela
CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100),
    sobrenome_cliente VARCHAR(100),
    cpf_cliente VARCHAR(11) UNIQUE,
    telefone_cliente VARCHAR(20) UNIQUE,
    email_cliente VARCHAR(80) UNIQUE,
    cidade_cliente VARCHAR(50),
    cep_cliente VARCHAR(10)
);
CREATE TABLE produto (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(100) NOT NULL,
    descricao_produto TEXT NOT NULL,
    preco_produto DECIMAL(5 , 2 ) NOT NULL,
    categoria_produto VARCHAR(20) NOT NULL,
    marca_produto VARCHAR(20) NOT NULL,
    codigo_barras_produto VARCHAR(50) NOT NULL,
    data_validade_produto DATE DEFAULT '2026-01-01',
    peso_produto DECIMAL(5 , 3 ) NOT NULL,
    status_produto ENUM('Disponível', 'Indisponível')
);

CREATE TABLE fornecedor (
    idfornecedor INT PRIMARY KEY AUTO_INCREMENT,
    nome_fornecedor VARCHAR(100) NOT NULL,
    cnpj_fornecedor VARCHAR(20) NOT NULL UNIQUE,
    telefone_fornedor VARCHAR(20) NOT NULL,
    email_fornecedor VARCHAR(100) NOT NULL,
    status_fornecedor ENUM('ativo', 'inativo', 'bloqueado')
);

CREATE TABLE venda (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    data_hora_venda DATETIME NOT NULL,
    valor_total DECIMAL(5 , 2 ),
    forma_pagamento VARCHAR(30) NOT NULL,
    desconto_venda DECIMAL(5 , 3 ) NOT NULL,
    id_cliente INT,
    status_venda VARCHAR(20) NOT NULL,
    observacoes_venda TEXT,
    caixa_venda INT NOT NULL,
    FOREIGN KEY (id_cliente)
        REFERENCES cliente (id_cliente)
);

CREATE TABLE iten_venda (
    id_item_venda INT PRIMARY KEY AUTO_INCREMENT,
    id_venda INT,
    id_produto INT,
    quantidade_item INT NOT NULL,
    preco_item DECIMAL(5 , 2 ) NOT NULL,
    subtotal_item DECIMAL(5 , 2 ) NOT NULL,
    imposto_item DECIMAL(5 , 2 ) NOT NULL,
    observacao_item TEXT,
    FOREIGN KEY (id_venda)
        REFERENCES venda (id_venda),
    FOREIGN KEY (id_produto)
        REFERENCES produto (id_produto),
    UNIQUE (id_venda , id_produto)
);

CREATE TABLE estoque (
    id_estoque INT PRIMARY KEY AUTO_INCREMENT,
    id_produto INT,
    quantidade_estoque INT NOT NULL,
    quantidade_minima_estoque INT NOT NULL,
    localizacao_estoque VARCHAR(30) NOT NULL,
    data_hora_entrada DATETIME NOT NULL,
    data_hora_saida DATETIME NOT NULL,
    lote_estoque VARCHAR(20) NOT NULL,
    validade DATE NOT NULL,
    status_estoque VARCHAR(20),
    FOREIGN KEY (id_produto)
        REFERENCES produto (id_produto)
);
CREATE TABLE pagamento (
    id_pagamento INT PRIMARY KEY AUTO_INCREMENT,
    id_venda INT,
    tipo_pagamento VARCHAR(20) NOT NULL,
    valor_pagamento DECIMAL(5 , 2 ) NOT NULL,
    data_hora_pagamento DATETIME NOT NULL,
    parcelas_pagamento INT NOT NULL,
    imposto_pagamento DECIMAL(5 , 2 ) NOT NULL,
    bandeira_pagamento VARCHAR(20) DEFAULT 'pagamento sem cartão',
    observacao_pagamento TEXT,
    FOREIGN KEY (id_venda)
        REFERENCES venda (id_venda)
);
