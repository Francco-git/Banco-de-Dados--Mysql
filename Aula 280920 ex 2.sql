create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria
	(id bigint auto_increment not null,marca varchar(50),tamanho varchar(50),primary key(id));
create table tb_produto
	(id bigint auto_increment ,nome varchar(50),cores varchar (50),preço float,validade date,tamanho varchar(50),
    categoria_id bigint,primary key(id),foreign key(categoria_id)references tb_categoria(id));
    
select * from tb_categoria;

select * from tb_produto;

insert into tb_categoria (marca,tamanho) values
	("Suvinil","Grande"),
    ("Coral","Pequena"),
    ("Metalatex","Medio");
    
insert into tb_produto (nome,cores,preço,validade,tamanho) values
	("Suvinil","Azul",29.00,20200819,"Grande"),
    ("Argamassa","Cinza",55.00,20200914,"Pequena"),
    ("Ceramica","Branco",100.00,20201012,"Medio"),
    ("Solda","Preta",15.00,20200703,"Grande");
    
select * from tb_produto where preço >50;

select * from tb_produto where preço >3 and preço<110;

select* from tb_produto where nome like '%c%';

select*from tb_produto
inner join tb_categoria on tb_produto.tamanho = tb_categoria.tamanho;

select tb_produto.nome, tb_produto.validade, tb_categoria.marca from tb_produto
inner join tb_categoria on tb_produto.id = tb_categoria.id;

drop table tb_produto;
drop table tb_categoria;




