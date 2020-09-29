create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria
	(id bigint auto_increment not null,Tipo varchar(50),tempo varchar(50),primary key(id));
create table tb_produto
	(id bigint auto_increment ,nome varchar(50),plataforma varchar (50),preço float,validade date,tempo varchar(50),
    categoria_id bigint,primary key(id),foreign key(categoria_id)references tb_categoria(id));
    
select * from tb_categoria;

select * from tb_produto;

insert into tb_categoria (tipo,tempo) values
	("Online","uma semana"),
    ("Online","um mes"),
    ("Online","tres semanas");
    
insert into tb_produto (nome,plataforma,preço,validade,tempo) values
	("Curso Online","java",29.00,20200819,"um mes"),
    ("Curso Online","mysql",55.00,20200914,"uma semana"),
    ("Curso Online","portugol",100.00,20201012,"um mes"),
    ("Curso Online","eclipse",15.00,20200703,"tres semanas");
    
select * from tb_produto where preço >50;

select * from tb_produto where preço >3 and preço<110;

select* from tb_produto where nome like '%c%';

select*from tb_produto
inner join tb_categoria on tb_produto.tamanho = tb_categoria.tamanho;

select tb_produto.nome, tb_produto.validade, tb_categoria.tempo from tb_produto
inner join tb_categoria on tb_produto.id = tb_categoria.id;

drop table tb_produto;
drop table tb_categoria;
