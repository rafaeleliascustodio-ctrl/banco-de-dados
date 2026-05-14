create database zoológico;
use zoológico;

create table animais (
    id int primary key auto_increment,
    nome varchar(255) not null,
    especie varchar(255) not null,
    idade int not null
);
create TABLE funcionarios (
    id int primary key auto_increment,
    nome varchar(255) not null,
    cargo varchar(255) not null
);
create TABLE visitas (
    id int primary key auto_increment,
    nome varchar(255) not null,
    data_visita date not null
);
create TABLE alimentacao (
    id int primary key auto_increment,
    animal_id int not null,
    funcionario_id int not null,
    data_alimentacao date not null,
    FOREIGN KEY (animal_id) REFERENCES animais(id),
    FOREIGN KEY (funcionario_id) REFERENCES funcionarios(id)
);