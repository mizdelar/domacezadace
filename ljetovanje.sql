# c:\xampp\mysql\bin\mysql - uroot < c:\users\mzdel\documents\github\mizdelar\domacezadace\ljetovanje.sql

drop database if exists kamp;
create database kamp;
use kamp;

create table apartman(
    sifra int not null primary key auto_increment,
    kategorija varchar(50),
    velicina decimal (18,2) not null,
    cijena decimal (18,2) not null,
    naziv varchar(50),
    plaza int not null,
    turist int not null

);

create table turist(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar (50),
    oib char(11),
    zemljporijekla varchar(50),
    prijevoznosredstvo varchar(50)

);

create table djelatnik(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar (50),
    oib char(11),
    osoba int not null,
    visinaplace decimal (18,2) not null,
    strucnasprema varchar(50)
);

create table plaza(
    sifra int not null primary key auto_increment,
    kategorija varchar(50),
    velicina decimal (18,2) not null,
    vrsta varchar (50),
    placanje boolean
);

create table termin(
    datumdolaska datetime,
    datumodlaska datetime
);



alter table apartman add foreign key (turist) references turist(sifra);
alter table apartman add foreign key (plaza) references plaza(sifra);
