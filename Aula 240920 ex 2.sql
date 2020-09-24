create database db_produtos;
use db_produtos;
create table tb_produtos (id bigint auto_increment,nome varchar(255),preço int,marca varchar(255),serie int, primary key(id));
select *from tb_produtos;
insert into tb_produtos (nome,preço,marca,serie) values ("Celular",2000,"Xiaomi",28457),("Televisao",3500,"Samsung",28894),("Maquina de Lavar",5000,"Brastemp",28143),
("Video Game",4000,"Playstation",27167),("Geladeira",6000,"Samsung",27417),("Fone de Ouvido",150,"Aplle",16548),("Webcam",250,"Gorax",18642),("Computador",1600,"Dell",45879);
select *from tb_produtos where preço >500;
select *from tb_produtos where preço <500;
Update tb_ set preço = 2000 where id=4;