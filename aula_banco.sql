use master
GO

drop database LOJA;
create database LOJA;
GO

use LOJA;

create table cliente(
idc integer,
nome varchar(30)not null ,
primary key (idc)
)

create table produto(
idp integer,
nomeproduto varchar(30),
primary key (idp)
)

create table vendas(
idv integer,
data date,
valor integer,
idc integer,
idp integer,
primary key (idv),
foreign key (idc) references cliente,
foreign key (idp) references produto
)

create table produtovendido(
idpv integer,
data date,
idv integer,
primary key (idpv),
foreign key (idv) references vendas
)

insert cliente
(idc, nome) values (123, 'Maria');

insert produto
(idp, nomeproduto) values (231, 'sapato');

insert vendas
(idv, data, valor, idc, idp) values (255, '2020/03/02', 300, 123, 231);

insert produtovendido
(idpv,data, idv) values (555, '2020/03/02', 255);

select * 
from cliente;
select * 
from produto;
select * 
from vendas;
select *
from produtovendido;