drop database if exists muzej;
create database muzej;
use muzej;

create table muzej(
    izlozba varchar(50),
    djelo varchar(50),
    kustos varchar(50),
    sponzor varchar(50)
);