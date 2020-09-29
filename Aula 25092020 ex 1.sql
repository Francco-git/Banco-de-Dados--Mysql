create database db_RH2;

use db_RH2;

create table tb_cargo 
	(id bigint auto_increment,comissao int,departamento varchar(100),primary key(id));
create table tb_funcionario 
	(id bigint auto_increment,nome varchar(100),idade int,turno varchar(100),
	salario int,cargo_id bigint,primary key(id),foreign key(cargo_id)references tb_cargo(id));

select * from tb_cargo;

select * from tb_funcionario;

insert into tb_cargo (comissao,departamento) values 
	(150,"contabilidade"),
    (300,"Embalagem");
insert into tb_funcionario (nome,idade,turno,salario) values 
	("Izadora",20,"manha",1500),
    ("Rubinho",25,"diurno",3000),
    ("Carolina",22,"diurno",2000);
    
select * from tb_funcionario where salario> 2000;

select * from tb_funcionario where salario> 1000 and salario <2000;

select * from tb_funcionario where nome like 'c%';

drop table tb_cargo;
drop table tb_funcionario;


