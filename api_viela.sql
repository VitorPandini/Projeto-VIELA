-- CREATE DATABASE viela;

CREATE TABLE tb_setores(id_setor int not null  primary key,
setor varchar(100)
);

CREATE TABLE tb_categorias(id_categoria int not null primary key,
categoria varchar(50)
);

CREATE TABLE tb_produtos(id_produto int not null primary key,
id_categoria int, 
produto varchar(100), 
valor_unitario decimal(10,2),
Foreign Key (id_categoria) references tb_categorias(id_categoria)
);



CREATE TABLE tb_funcionarios(id_matricula int not null  primary key,
nome varchar(50),
sobrenome varchar(150),
id_setor int,
CONSTRAINT FK_setorFunc FOREIGN KEY (id_setor) REFERENCES tb_setores(id_setor)
);

CREATE TABLE tb_itens_vendas(id_item int not null  primary key,
id_produto int,
id_matricula int,
quantidade int,
valor decimal(10,2),
CONSTRAINT FK_prodItens FOREIGN KEY (id_produto) REFERENCES tb_produtos(id_produto),
CONSTRAINT FK_matItens FOREIGN KEY (id_matricula) REFERENCES tb_funcionarios(id_matricula)
);

CREATE TABLE tb_vendas(id_venda int not null  primary key,
data_venda date,
valor_total decimal(10,2),
id_matricula int,
CONSTRAINT FK_matVendas FOREIGN KEY (id_matricula) REFERENCES tb_funcionarios(id_matricula)
);

CREATE TABLE tb_saldo(id_saldo int not null  primary key,
id_matricula int,
data_saldo date,
saldo decimal(10,2),
debito decimal(10,2),
saldo_disponivel decimal(10,2),
CONSTRAINT FK_matSaldos FOREIGN KEY (id_matricula) REFERENCES tb_funcionarios(id_matricula)
);

SELECT * from tb_produtos