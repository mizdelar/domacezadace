drop database if exists urar;
create database urar;
use urar;

create table sat(
    materijal varchar(50),
    proizvodjac varchar(50),
    brojpopravakaposatu varchar(50),
    nacinprikazavremena varchar(50)
);
create table korisnik(
    ime varchar(50),
    prezime varchar(50),
    brojsatovapokorisniku varchar(50),
    brojdolazakauraru varchar(50)
);

create table segrt(
    popravcisegrta varchar(50),
    brojsegrtapopostolaru varchar(50),
    godineiskustvasegrta varchar(50)
);
create table popravak(
    duljinatrajanjapopravka varchar(50),
    kategorijatezinepopravka varchar(50),
    vrstapopravka varchar(50),
    serviserpopravak varchar(50)
);