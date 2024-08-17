create database de;
use de;

create table pessoas(
id int auto_increment primary key,
nome varchar(200),
rg varchar(20),
cpf varchar(20)
);

insert into pessoas set nome="iza", rg="446546567", cpf="75644747474";

select * from pessoas;

update pessoas set nome="isa" where id=1;

insert into pessoas set nome="Cereno", rg="446577789677", cpf="756456727474";

insert into pessoas set nome="irinel", rg="44626182567", cpf="75871739747474";

delete from pessoas where id=1;

insert into pessoas set nome="joão", rg="4465753423677", cpf="75645634243527474";

insert into pessoas set nome="pitou", rg="44656489677", cpf="756566727474";

truncate table pessoas;

insert into pessoas set nome="Cereno", rg="446577789677", cpf="756456727474";

update pessoas set nome="Cereno" where id=1;

create table telefone(
id int auto_increment primary key,
numero varchar(200),
pessoa_id int,
foreign key (pessoa_id) references pessoas(id)
);

insert into telefone set numero="66757575", pessoa_id="1";
insert into telefone set numero="667556345", pessoa_id="2";
insert into telefone set numero="667557565", pessoa_id="3";
insert into telefone set numero="667556775", pessoa_id="4";
insert into telefone set numero="6546754575", pessoa_id="5";

select pessoas.id, pessoas.nome, telefone.numero
 from pessoas
 
left join telefone on telefone.pessoa_id= pessoas.id;

create table emails(
id int auto_increment primary key,
email varchar(20),
pessoas_id int
);

insert into emails set email="matheusdegois@gmail.com" ,pessoas_id=1;

insert into emails set email="matheusdgois@gmail.com" ,pessoas_id=1;

insert into emails set email="matheusgois@gmail.com" ,pessoas_id=2;

insert into emails set email="matheugois@gmail.com" ,pessoas_id=2;

insert into emails set email="mathegois@gmail.com" ,pessoas_id=3;

insert into emails set email="mathgois@gmail.com" ,pessoas_id=3;

insert into emails set email="matgois@gmail.com" ,pessoas_id=4;

insert into emails set email="magois@gmail.com" ,pessoas_id=4;

insert into emails set email="mgois@gmail.com" ,pessoas_id=5;

insert into emails set email="gois@gmail.com" ,pessoas_id=5;

select pessoas.id, pessoas.nome, telefone.numero, emails.email
 from pessoas
left join telefone on telefone.pessoa_id = pessoas.id
left join emails on emails.pessoas_id = pessoas.id;

select * from emails;