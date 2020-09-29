create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria
	(id bigint auto_increment not null,marca varchar(50),tamanho varchar(50),primary key(id));
create table tb_produto
	(id bigint auto_increment ,nome varchar(50),peso float,preço float,validade date,tamanho varchar(50),
    categoria_id bigint,primary key(id),foreign key(categoria_id)references tb_categoria(id));
    
select * from tb_categoria;

select * from tb_produto;

insert into tb_categoria (marca,tamanho) values
	("Seara","Grande"),
    ("Sadia","Pequena"),
    ("Perdigão","Medio");
    
insert into tb_produto (nome,peso,preço,validade,tamanho) values
	("Alcatra",1.500,29.00,20200819,"Grande"),
    ("Maminha",1.000,55.00,20200914,"Pequena"),
    ("Picanha",3.000,100.00,20201012,"Medio"),
    ("linguiça",0.500,15.00,20200703,"Grande");
    
select * from tb_produto where preço >50;

select * from tb_produto where preço >3 and preço<110;

select* from tb_produto where nome like '%c%';

select*from tb_produto
inner join tb_categoria on tb_produto.tamanho = tb_categoria.tamanho;

select tb_produto.nome, tb_produto.preço, tb_categoria.marca from tb_produto
inner join tb_categoria on tb_produto.id = tb_categoria.id;

drop table tb_produto;
drop table tb_categoria;

    