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

insert into mjesto (naziv ) values
('Osijek'),
('Darda'),
('Beli Manastir'),
('Valpovo'),
('Belisce'),
('Bizovac'),
('Vinkovci'),
('Rokovci'),
('Andrijasevci'),
('Cerna'),
('Otok'),
('Ivankovo');

insert into opcina (naziv) values
('Antunovac'),
('Bilje'), 
('Bizovac'),
('Čeminac'), ('Čepin'),
('Darda');



insert into zupanija (naziv) values
('Osječko-baranjska'),
('Vukovarsko-srijemska'),
('Sisačko-moslavačka'),
('Ličko-senjska'),
('Zagrebacka'),
('Krapinsko-zagorska');

#select * from mjesto;

update mjesto set naziv='Legograd'
where sifra=1;
update mjesto set naziv='Losi vozaci'
where sifra=3;
update mjesto set naziv='Sveti Rok'
where sifra=8;

select * from mjesto;

