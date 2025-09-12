create database mercado;
use mercado;

create table produto (
id_produto int not null auto_increment primary key,
nome varchar(100),
preco decimal (12,2),
estoque int
);

insert into produto (nome, preco, estoque)
values ('tablet', 1000.00, 100);

update produto 
set preco=50, nome='mousepad'
where id_produto=1;

create table produto_venda (
id int not null auto_increment primary key,
preco_id int not null,
foreign key (preco_id) references produto(id_produto)
);

create table produto_bkp (
id_produto int not null auto_increment primary key,
nome varchar(100),
preco decimal (12,2),
estoque int
);

insert into produto_bkp (nome, preco, estoque)
select nome, preco, estoque
from produto;

select * from produto;
select * from produto_bkp;

create table cliente (
id int not null primary key auto_increment,
nome varchar (100),
cidade varchar(100)
);

create table pedidos (
id int not null primary key auto_increment,
valor_total decimal (12,00),
id_cliente int not null,
foreign key (id_cliente) references cliente(id)
);

insert into cliente (nome, cidade)
values ('Ana', 'São Paulo'), ('Bruno', 'Rio de Janeiro'), ('Carla', 'Belo Horizonte');

select *
from cliente;

insert into pedidos (valor_total, id_cliente)
values (150, 1), (200, 1), (75, 1);

select *
from pedidos;

select c.nome, p.valor_total
