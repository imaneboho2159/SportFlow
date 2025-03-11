create database SPORTFLOW;
use SPORTFLOW;

create table ADMIN (
                       nom  varchar(90),
                       email varchar(200),
                       password varchar(100)
);
create table MEMBER (
                        id_Member int primary key auto_increment not null,
                        nom  varchar(90),
                        email varchar(200),
                        password varchar(100),
                        date_De_naissance varchar(11),
                        sport_prateque varchar(50)
);
create table ENTRAINEUR (
                            id_Entraineur int primary key auto_increment not null,
                            nom varchar(90),
                            email varchar(200),
                            password varchar(100),
                            specialite varchar (200)
);
create table SEANCE(
                       id_Member int ,
                       id_Entraineur int ,
                       Date date,
                       heur time,
                       foreign key (id_Member) references MEMBER(id_Member),
                       foreign key (id_Entraineur) references ENTRAINEUR(id_Entraineur)

);