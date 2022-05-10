drop database if exists samostan;
create database samostan;
use samostan;

create table svecenik(
    ime varchar(50),
    prezime varchar(50),
    oib varchar(50),
    visinaplace varchar(50),
    brojsvecenikaposamostanu varchar(50),
    brojnadredjenihsvecenikaposveceniku varchar(50)
);

create table posao(
    duljinatrajanjaposla varchar(50),
    brojsvecenikapoposlu varchar(50),
    kategorijatezineposla varchar(50)
    );

    create table nadredjenisvecenik(
        ime varchar(50),
        prezime varchar(50),
        oib varchar(50),
        brojsvecenikaponadredjenomsveceniku varchar(50)
    );