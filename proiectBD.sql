--Crearea Tabelelor

--Client:
create table client(
id_client number(3) primary key,
nume varchar2(20),
prenume varchar2(20),
nr_tel char(10),
mail varchar2(30),
adresa varchar2(30)
);

--Comand?:
create table comanda(
id_comanda number(3) primary key,
id_client number(3),
status_comanda varchar2(20),
metoda_plata varchar2(20),
constraint fk_client foreign key(id_client) references client(id_client)
);

--Produs:
create table produs(
id_produs number(3) primary key,
nume varchar2(20),
descriere varchar2(50),
pret number(4)
);

--Rand_Comanda:
create table rand_comanda(
id_produs number(3),
id_comanda number(3),
cantitate number(3),
pret number(4),
constraint fk_produs foreign key(id_produs) references produs(id_produs),
constraint fk_comanda foreign key(id_comanda) references comanda(id_comanda)
);

--Modificarea tabelului: ad?ugarea ?i ?tergerea unei noi coloane
alter table rand_comanda
add tip_livrare varchar2(20);
alter table rand_comanda
drop column tip_livrare;

--Ad?ugarea coloanei Tip_Livrare:
alter table rand_comanda
add tip_livrare varchar2(20);

--?tergerea coloanei Tip_Livrare:
alter table rand_comanda
drop column tip_livrare;

--Redenumirea tabelului:
rename rand_comanda to rand_comandaaa;
rename rand_comandaaa to rand_comanda;


--Ad?ugarea unei noi constrângeri:
alter table rand_comanda
add constraint comanda_min check(pret>800);


--Renuntarea la o constrangere:
alter table rand_comanda
drop constraint comanda_min;

--Modificarea unei propriet??i dintr-un tabel:
alter table rand_comanda
modify pret number(5);

--Inserarea în tabele

--Client:
insert into client(id_client, nume, prenume,nr_tel,mail, adresa) 
values('1','Popescu','Ion','0782047163', 'popion@yahoo.com','str. Patriei 
nr.18');
insert into client(id_client, nume, prenume,nr_tel,mail, adresa) 
values('2','Lupu','Andreea','0788402735', 'andreealupu@gmail.com','str. Iancului 
nr.77');
insert into client(id_client, nume, prenume,nr_tel,mail, adresa) 
values('3','Maftei','Ioana','0772880193', 'ioanamaftei@yahoo.com','str. 
Foisorului nr.2');
insert into client(id_client, nume, prenume,nr_tel,mail, adresa)
values('4','Andrei','Mihai','0760932619', 'mihaiandrei@outlook.com','bd. Dacia 
nr. 7');
insert into client(id_client, nume, prenume,nr_tel,mail, adresa) 
values('5','Vintila','Cristian','0783926615', 'cristianv@yahoo.com','str. Muncii 
nr 18');
insert into client(id_client, nume, prenume,nr_tel,mail, adresa) 
values('6','Viorica','Madalina','0783771634', 
'madalinaviorica@outlook.com','Calea Victoriei nr 2');
insert into client(id_client, nume, prenume,nr_tel,mail, adresa) 
values('7','Dinu','Andrei','0783425780', 'andreidinuu@yahoo.com','str. Parisului 
nr.22');
insert into client(id_client, nume, prenume,nr_tel,mail, adresa) 
values('8','Nicu','Anton','0773920572', 'antonnicu@gmail.com','str. Vartejului nr 
3');
insert into client(id_client, nume, prenume,nr_tel,mail, adresa) 
values('9','Jianu','Georgiana','0773809267', 'jianugeorgiana@hotmail.com','str. 
Gorjului nr.66');
insert into client(id_client, nume, prenume,nr_tel,mail, adresa) 
values('10','Furtuna','Rares','0793728193', 'raresfurtuna@yahoo.com','str. 
Domenii nr 19');

--Comand?:
insert into comanda(id_comanda, id_client, metoda_plata) values (1, 4,'plasata', 
'card');
insert into comanda(id_comanda, id_client, metoda_plata) values (2, 
7,'livrata','card');
insert into comanda(id_comanda, id_client, metoda_plata) values (3, 2,'livrata', 
'cash');
insert into comanda(id_comanda, id_client, metoda_plata) values (4, 2, 
'plasata','cash');
insert into comanda(id_comanda, id_client, metoda_plata) values (5, 6,'plasata', 
'card');
insert into comanda(id_comanda, id_client, metoda_plata) values (6, 9,'livrata', 
'card');
insert into comanda(id_comanda, id_client, metoda_plata) values (7, 1,'plasata', 
'card');
insert into comanda(id_comanda, id_client, metoda_plata) values (8, 3,'plasata', 
'cash');
insert into comanda(id_comanda, id_client, metoda_plata) values (9, 1,'plasata', 
'card');
insert into comanda(id_comanda, id_client, metoda_plata) values (10, 5,'livrata', 
'card');

--Produs:
insert into produs(id_produs, nume, descriere, pret) values ('1', 'Jante Japan 
Racing','Jante Japan Racing JR11,D: 15, L: 7,Culoare: Negru', 750);
insert into produs(id_produs, nume, descriere, pret) values ('2', 'Janta aliaj OZ 
5 STAR, D:16, L:7, Culoare: Gri', 610);
insert into produs(id_produs, nume, descriere, pret) values ('3', 'Janta aliaj 
BBS FI_R, D:19,L:7, Culoare: Gri', 930);
insert into produs(id_produs, nume, descriere, pret) values ('4', 'Janta Vossen 
VFS 5, D:18, L:7, Culoare:Gri', 850);
insert into produs(id_produs, nume, descriere, pret) values ('5', 'Volan 
Sparco','Volan Sparco R345,piele intoarsa,Culoare:Gri', 880);
insert into produs(id_produs, nume, descriere, pret) values ('6', 'Filtru Aer 
K&N','Filtru Aer Sport K&n Culoare: visinie', 240);
insert into produs(id_produs, nume, descriere, pret) values ('7', 'Scaun 
Sparco','Scaun Sport Sparco Tip Scoica, Culoare:Albastru', 990);
insert into produs(id_produs, nume, descriere, pret) values ('8', 'Scaun 
Sparco','Scaun Sport SParco Tip Scoica, Culoare:Verde', 990);
insert into produs(id_produs, nume, descriere, pret) values ('9', 'Scaun Sport 
SParco Tip Scoica, Culoare:Rosu', 990);
insert into produs(id_produs, nume, descriere, pret) values ('10', 'Evacuare 
Sport finala', 792);

--Rand_Comanda:
insert into rand_comanda(id_produs, id_comanda, cantitate, pret) values (1, 
1,4,2300);
insert into rand_comanda(id_produs, id_comanda, cantitate, pret) values (1, 
3,1,230);
insert into rand_comanda(id_produs, id_comanda, cantitate, pret) values (8, 
6,4,802);
insert into rand_comanda(id_produs, id_comanda, cantitate, pret) values (9, 
3,4,1980);
insert into rand_comanda(id_produs, id_comanda, cantitate, pret) values (4, 
4,4,3400);
insert into rand_comanda(id_produs, id_comanda, cantitate, pret) values (4, 
5,4,3400);
insert into rand_comanda(id_produs, id_comanda, cantitate, pret) values (8, 
6,4,802);
insert into rand_comanda(id_produs, id_comanda, cantitate, pret) values (5, 
7,4,880);
insert into rand_comanda(id_produs, id_comanda, cantitate, pret) values (9, 
8,4,802);
insert into rand_comanda(id_produs, id_comanda, cantitate, pret) values (5, 
9,4,1760);
insert into rand_comanda(id_produs, id_comanda, cantitate, pret) values (8, 
10,4,802);

--Actualizarea Înregistr?rilor
--Actualizarea pretului a produsului cu id=10 din tabelul produs
update produs
set pret=800
where id_produs= 10;

--Stergerea si recuperarea unei tabele:
drop table rand_comanda;
flashback table rand_comanda to before drop;

--Exemple de interog?ri

--Union:
select nume
from client 
where initcap(nume)='Lupu'
union all 
select nume 
from produs
where initcap(nume)='Evacuare Sport';

--Intersect:
select nume, prenume
from client
intersect
select nume, prenume 
from client;

select nume, pret
from produs
intersect
select nume, pret 
from produs;

--Minus:
select* from produs
where pret between 0 and 700
minus
select* from produs
where pret in(701, 999);

--Decode: 
select id_produs, pret,
pret* decode(id_produs,1, 1.2, 2, 1.2, 3, 1.2, 4, 1.2, 5, 1.2) scumpire_jante
from produs;

--Case:
select id_produs, pret, nume, case
when pret>800 and id_produs<6 then 'Jante premium'
when pret between 300 and 799 and id_produs<6 then 'Jante standard'
else 'nu e janta'
end tip_janta
from produs;

--Subcereri:
update produs
set pret =pret*0.99
where pret in (select pret from produs where id_produs=10);
update rand_comanda
set pret=pret*0.9
where pret in(select pret from rand_comanda where id_produs=8);

--Single row functions:
select id_client, nume, prenume from client where nume like 'A%';

select id_produs, nume, pret from produs where nume like '%Sparco%';

--Functii de grup:
select MIN(pret), MAX(pret) from produs;

select MIN(pret), MAX(pret) from rand_comanda;

select MIN(cantitate), MAX(cantitate) from rand_comanda;

--Jonctiuni:
select c.id_client, c.nume, c.prenume, co.status_comanda
from client c, comanda co
where c.id_client=co.id_client;


select p.id_produs, p.nume, p.pret, c.cantitate
from produs p, rand_comanda c
where p.id_produs=c.id_produs
and p.pret>500
order by pret;


--Vederi:
create or replace view modif_nume_3
as select* from client
where id_client=3;
update modif_nume_3
set nume='Marcu';


--Indecsi:
select* from produs 
where pret between 500 and 1000;
create index idx_pret_prod on produs(pret);


select* from rand_comanda
where pret between 1500 and 5000;
create index idx_comenzi_mari on rand_comanda(pret);

--Sinonime:
create synonym r_c for rand_comanda;
select* from user_synonyms;


--Secvente:
create sequence s_c start with 11 increment by 1 maxvalue 20;
insert into client values(s_c.nextval, '&nume','&pren','&nrtel','&mail','&adr');