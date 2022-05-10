drop database if exists postolar;
create database postolar;
use postolar;

create table obuca(
    velicina varchar(50),
    materijal varchar(50),
    cijena varchar(50),
    proizvodjac varchar(50),
    nacinizrade varchar(50),
    brojdolazakanapopravak varchar(50)
);

create table korisnik(
    brojkomadaobucepokorisniku varchar(50),
    ime varchar(50),
    prezime varchar(50),
    brojdolazakakodpostolara varchar(50)
);

create table segrt(
    vrstapopravakakojeradi varchar(50),
    brojsegrtapopostolaru varchar(50),
    godineiskustvasegrta varchar(50)
);