create database db_escola;
use db_escola;
create table tb_alunos (id bigint auto_increment,nome varchar(255),idade int,nota int,turma varchar(255),primary key(id));
select * from tb_alunos;
insert into tb_alunos (nome,idade,nota,turma) values ("Sandro",17,5,"5c"),("Luis",18,7,"6b"),("Marcio",16,8,"4d");
select* from tb_alunos where nota > 7;
select* from tb_alunos where nota< 7;
update tb_alunos set nota = 3 where id = 3;
select* from tb_alunos;
drop table tb_alunos;