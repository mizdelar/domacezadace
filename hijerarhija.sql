# c:\xampp\mysql\bin\mysql -uroot < c:\users\mzdel\documents\github\mizdelar\domacezadace\hijerarhija.sql

drop database if exists hijerarhija;
create database hijerarhija;
use hijerarhija;

create table zaposlenik(
    sifra int not null primary key auto_increment,
    ime varchar(20) not null,
    prezime varchar(20) not null,
    placa decimal(18,2) not null,
    oib char(11) not null,
    nadredjeni int not null
);

alter table zaposlenik add foreign key (nadredjeni) references zaposlenik(sifra);
