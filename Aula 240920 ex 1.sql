create database db_RH;
use db_Rh;
drop table tb_funcionarios;
create table tb_funcionarios(id bigint auto_increment,nome varchar(255),idade int,salario int, cargo varchar(255),primary key(id));
select*from tb_funcionarios;
insert into tb_funcionarios(nome,idade,salario,cargo) values ("Alex",19,3000,"Dev Pleno"),("Weslley",25,2500,"Dev Senior"),
("Matheus",22,1000,"Dev Junior"),("Vitoria",21,1500,"Contabilidade"),("Maria",23,1045,"Faxineira");
select*from tb_funcionarios where salario >2000;
select*from tb_funcionarios where salario <2000;
update tb_funcionarios set salario = 3000 where cargo="Faxineira";
ALTER TABLE tb_funcionarios ADD PRIMARY KEY(id);
UPDATE tb_funcionarios SET salario=2000 WHERE nome="Maria";