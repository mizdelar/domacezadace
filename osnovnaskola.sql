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
    uzrast int not null
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

insert into djecjaradionica(naziv,brojdjeceuradionici,djecjivrticradionice)
values ('Tratincica',5,'Maslacak');

insert into osoba (ime,prezime,oib,datumrodjenja)
values ('Pero','Peric',11111111111,'2022-12-12');

insert into uciteljica (osoba,strucnasprema,visinaplace)
values (1,'vss',5666.88);

insert into osoba (ime,prezime,oib,datumrodjenja)
values ('Marko','Markic',22222222222,'2012-12-12');



insert into uciteljica (osoba,strucnasprema,visinaplace)
values (2,'sss',3232.99);

