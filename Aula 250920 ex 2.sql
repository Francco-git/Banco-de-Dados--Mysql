create database db_ecommerce;

use db_ecommerce;

create table tb_categoria
	(id bigint auto_increment,marca varchar(100),serie int,primary key(id));
create table tb_produto
	(id bigint auto_increment,nome varchar(100),cor varchar(100),modelo varchar(100),valor int,
    categoria_id bigint,primary key(id),foreign key(categoria_id)references tb_categoria(id));
    
    select * from tb_categoria;
    
    select * from tb_produto;
    
insert into tb_categoria (marca,serie) values 
	("Nike",45789),
    ("Adidas",41895),
    ("Rebook",17265);
insert into tb_produto (nome,cor,modelo,valor) values
	("Tenis","Verde","Nike Star","1000"),
    ("Celular","Azul","Xiaomi","3500"),
    ("Televisão","Preta","Samsung","1750");
    
select * from tb_produto where valor> 2000;

select * from tb_produto where valor>1000 and valor<2000;

select * from tb_produto where nome like 'c%';

    
    
