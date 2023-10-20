create table Ajakava(
Ajakava_ID int primary key identity(1,1),
Sündmus varchar(25),
Algusaeg datetime,
Lõpuaeg datetime);

create table Toohive(
Toohive_ID int primary key identity(1,1),
Toohive varchar(25));

create table Osakonna(
Osakonna_ID int primary key identity(1,1),
Osakonna_nimi varchar(25),
Kirjeldus varchar(50),
Asukoht varchar(50));

create table Ravim(
Meditsiini_ID int primary key identity(1,1),
Ravimi_nimi varchar(20),
Annustamine int,
Korvalmõjud varchar(50));

create table Tootajad(
Personali_ID int primary key identity(1,1),
Nimi varchar(20),
Perekonnanimi varchar(20),
Spetsialiseerumine int,
FOREIGN KEY (Spetsialiseerumine) REFERENCES Toohive(Toohive_ID), 
Too_algus time,
Too_lopp time,
Kontaktinfo varchar(10));

create table Patsient(
Patsiendi_ID int primary key identity(1,1),
Perekonnanimi varchar(20),
Nimi varchar(20),
Sünnikuupäev date,
Diagnoos varchar(50),
Haiguse_ajalugu varchar(50),
vastuvõtukuupäev date,
väljalaskekuupäev date,
Osakonna int,
FOREIGN KEY (Osakonna) REFERENCES Osakonna(Osakonna_ID));

create table Ravi(
Ravi_ID int primary key identity(1,1),
Patsiendi int,
FOREIGN KEY (Patsiendi) REFERENCES Patsient(Patsiendi_ID), 
Arsti int,
FOREIGN KEY (Arsti) REFERENCES Ravim(Meditsiini_ID), 
Määratud_ravimid int,
FOREIGN KEY (Määratud_ravimid) REFERENCES Tootajad(Personali_ID), 
Ravi_kestus date,
Ravi_tulemused varchar(20));

create table terapeudi_konsultatsioon(
konsultatsioon_ID int primary key identity(1,1),
Patsiendi int,
FOREIGN KEY (Patsiendi) REFERENCES Patsient(Patsiendi_ID), 
Arsti int,
FOREIGN KEY (Arsti) REFERENCES Tootajad(Personali_ID), 
konsultatsioon_kellaaeg datetime,
põhjuse varchar(50));

create table Psühhoteraapia_seanss(
Seansi_ID int primary key identity(1,1),
Patsiendi int,
FOREIGN KEY (Patsiendi) REFERENCES Patsient(Patsiendi_ID), 
Psühhoterapeudi int,
FOREIGN KEY (Psühhoterapeudi) REFERENCES Tootajad(Personali_ID), 
Seansi_kuupaev datetime,
Seansi_kirjeldus varchar(50),
Patsiendi_areng varchar(50));
