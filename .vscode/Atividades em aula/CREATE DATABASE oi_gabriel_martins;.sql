CREATE DATABASE oi_gabriel_martins;
use oi_gabriel_martins;

create TABLE saudacao(
    oi int primary key auto_increment,
    como_vai int(15)
);

insert into saudacao (como_vai) values ('tudo bem?');