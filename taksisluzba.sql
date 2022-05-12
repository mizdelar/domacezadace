drop database if exists taksisluzba;
create database taksisluzba;
use taksisluzba;

create table taksisluzba(
    vozilo varchar(50),
    vozac varchar(50),
    putnik varchar(50),
    voznja varchar(50)
);