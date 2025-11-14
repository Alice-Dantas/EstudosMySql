/* CRIAÇÃO DO BANCO E TABELAS */

create database EmpresaVendas;
use EmpresaVendas;

create table Clientes (
cliente_id int not null primary key auto_increment,
nome varchar(100) not null,
email varchar(100) not null unique,
cidade varchar(50)
);

create table Produtos (
produto_id int not null primary key auto_increment,
nome_produto varchar(100) not null,
preco decimal(10,2) not null
);

create table Pedidos (
pedido_id int not null primary key auto_increment,
cliente_id int,
data_pedido date,
foreign key (cliente_id) references Clientes(cliente_id)
);

create table Pedido_Itens (
pedido_item_id int not null primary key auto_increment,
pedido_id int,
foreign key (pedido_id) references Pedidos (pedido_id),
produto_id int,
foreign key (produto_id) references Produtos (produto_id),
quantidade int);


/* INSERÇÃO DE DADOS */

insert into Clientes (nome, email, cidade)
values ('João Silva', 'joao.silva@email.com', 'São Paulo'),
	   ('Maria Santos', 'maria.santos@email.com', 'Rio de Janeiro'),
       ('Pedro Almeida', 'pedro.almeida@email.com', 'Belo Horizonte'),
       ('Ana Costa', 'ana.costa@email.com', 'Salvador'),
       ('Lucas Ferreira', 'lucas.ferreira@email.com', 'Porto Alegre');
       
insert into Produtos (nome_produto, preco)
values ('Notebook Gamer', 5500.00),
	   ('Mouse sem fio', 150.75),
       ('Teclado Mecânico RGB', 350.00),
       ('Monitor Ultrawide 29', 1800.50),
       ('Headset Gamer 7.1', 499.90);
       
       
/* CRIANDO RELACIONAMENTOS DE VENDA */

insert into Pedidos (cliente_id, data_pedido)
values (1, curdate()),
	   (2, '2025-11-10'),
       (5, '2025-11-11'),
       (1, '2025-11-12');
       
insert into Pedido_Itens (pedido_id, produto_id, quantidade)
values (1, 1, 1),
	   (2, 2, 1),
       (2, 3, 1),
       (3, 4, 2),
       (4, 5, 1);
       
/* CORRIGINDO VÁRIAS DATAS PARA SETEMBRO EM UM ÚNICO UPDATE */

update Pedidos
set data_pedido=case
	when pedido_id=2 then '2025-09-10'
    when pedido_id=3 then '2025-09-11'
    when pedido_id=4 then '2025-09-12'
end
where pedido_id in (2, 3, 4);

-- UPDATE Pedidos
--  → Diz ao banco que queremos alterar registros da tabela Pedidos.

-- SET data_pedido = CASE
--  → Escolhe qual valor a coluna data_pedido vai receber.
--     WHEN = condição (quando for esse ID...)
--     THEN = valor que será aplicado para aquela condição
--     END  = fecha o CASE

-- WHERE pedido_id IN (2, 3, 4)
--  → Filtra quais linhas da tabela serão modificadas.


/* BUSCANDO DADOS COM SELECT E WHERE */

select nome, email
from Clientes
where cidade='São Paulo';

select nome_produto, preco
from Produtos
where preco>500.00;

select pedido_id, cliente_id
from Pedidos
where data_pedido='2025-09-10';

select email
from Clientes
where nome='Pedro Almeida';

select nome_produto, preco
from Produtos
where (preco>100) and (preco<400);


/* COMBINANDO TABELAS COM JOIN */

select c.nome, p.pedido_id, p.data_pedido
from Clientes c
join Pedidos p on c.cliente_id=p.cliente_id;

select pe.pedido_id, pei.quantidade, pr.nome_produto, pr.preco
from Pedidos pe
join Pedido_Itens pei
join Produtos pr
on pe.pedido_id=pei.pedido_id and pei.produto_id=pr.produto_id;

SELECT pr.nome_produto
FROM produtos pr
JOIN pedido_itens pei
JOIN pedidos pe
JOIN clientes c 
ON pr.produto_id = pei.produto_id and pei.pedido_id = pe.pedido_id and c.cliente_id = pe.cliente_id
WHERE c.nome = 'João Silva';


/* MODIFICANDO TABELAS COM ALTER TABLE */

alter table Clientes
add column telefone varchar(20);

update Clientes
set telefone='(11) 98765-4321'
where cliente_id=1;

alter table Produtos
modify nome_produto varchar(150);
