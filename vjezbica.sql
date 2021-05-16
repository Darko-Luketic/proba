drop database if exists vjezbica;
create database vjezbica;
use vjezbica;


create table zupan(
sifra int not null primary key auto_increment,
ime varchar(30),
prezime varchar(50)
);


create table zupanija(
sifra int not null primary key auto_increment,
naziv varchar(50),
zupan int
);


create table opcina(
sifra int not null primary key auto_increment,
zupanija int,
naziv varchar(50)
);

create table mjesto(
sifra int not null primary key auto_increment,
opcina int, 
naziv varchar(50)
);


alter table zupanija add foreign key (zupan) references zupan(sifra);
alter table opcina add foreign key (zupanija) references zupanija(sifra);
alter table mjesto add foreign key (opcina) references opcina(sifra);

insert into zupan (ime,prezime) values
('trt','mrt'),
('stojko','stojkic'),
('stena','black');

insert into zupanija (naziv,zupan ) values
('Osječko-baranjska',1),
('Vukovarsko-srijemska',2),
('Sisačko-moslavačka',3),
('Ličko-senjska',null),
('Zagrebacka',null),
('Krapinsko-zagorska',null);


insert into opcina (naziv,zupanija ) values
('Antunovac',1),
('Bilje',2), 
('Bizovac',1),
('Čeminac',3),
('Čepin',1),
('Darda',3);

insert into mjesto (naziv,opcina ) values
('Osijek',1),
('Darda',2),
('Beli Manastir',3),
('Valpovo',null),
('Belisce',null),
('Bizovac',null),
('Vinkovci',null),
('Rokovci',null),
('Andrijasevci',null),
('Cerna',null),
('Otok',null),
('Ivankovo',null);




#select * from mjesto;

update mjesto set naziv='Legograd'
where sifra=1;
update mjesto set naziv='Losi vozaci'
where sifra=3;
update mjesto set naziv='Sveti Rok'
where sifra=8;

select * from mjesto;
select * from opcina;


