# c:\xampp\mysql\bin\mysql -uroot < c:\users\mzdel\documents\github\mizdelar\domacezadace\osnovnaskola.sql


drop database if exists osnovnaskola;
create database osnovnaskola;
use osnovnaskola;

create table djecjaradionica(
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    brojdjeceuradionici int,
    djecjivrticradionice varchar(50)

);

create table dijete(
    sifra int not null primary key auto_increment,
    osoba int not null,
    uzrast int
);

create table uciteljica(
    sifra int not null primary key auto_increment,
    osoba int not null,
    strucnasprema varchar(50) not null,
    visinaplace decimal(18,2) not null

);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib char(11),
    datumrodjenja datetime
);

alter table dijete add foreign key (osoba) references osoba(sifra);
alter table uciteljica add foreign key (osoba) references osoba(sifra);


