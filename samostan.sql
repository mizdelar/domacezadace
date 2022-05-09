drop database if exists samostan;
create database samostan;
use samostan;

create table samostan(
    svecenik varchar(50),
    posao varchar(50),
    nadredjenisvecenik varchar(50)
);