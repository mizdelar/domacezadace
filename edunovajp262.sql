# c:\xampp\mysql\bin\mysql -uroot < c:\users\mzdel\documents\github\mizdelar\domacezadace\edunovajp262.sql

drop database if exists edunovajp262;
create database edunovajp262;
use edunovajp262;

create table smjer(
    sifra int not null primary key auto_increment,
    naziv varchar(50) not null,
    trajanje int null,
    cijena decimal(18,2) not null,
    upisnina decimal(18,2) not null,
    certificiran boolean

);

create table grupa(
    sifra int not null primary key auto_increment,
    naziv varchar(20) not null,
    smjer int not null,
    datumpocetka datetime,
    maksimalnoplaznika int,
    predavac int

);

create table clan(
    sifra int not null primary key auto_increment,
    grupa int not null,
    polaznik int not null
);

create table predavac(
    sifra int not null primary key auto_increment,
    osoba int not null,
    iban varchar(50)

);

create table polaznik(
    sifra int not null primary key auto_increment,
    osoba int not null,
    brojugovora varchar(20)
);

create table osoba(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    oib char(11),
    email varchar(20)
);

alter table grupa add foreign key (smjer) references smjer(sifra);
alter table grupa add foreign key (predavac) references predavac(sifra);
alter table clan add foreign key (polaznik) references polaznik(sifra);
alter table clan add foreign key (grupa) references grupa(sifra);
alter table predavac add foreign key (osoba) references osoba(sifra);
alter table polaznik add foreign key (osoba) references osoba(sifra); 



insert into smjer (naziv,cijena,upisnina)
values ('Java programiranje',5999.99,500);

insert into grupa (naziv,smjer)
values ('JP26',1)