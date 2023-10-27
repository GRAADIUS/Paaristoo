CREATE PROCEDURE Add_Patsient
  @perenimi varchar(20),
  @nimi varchar(20),
  @sünnipäev date,
  @diagnoos varchar(50),
  @vastuvõtukuupäev date,
  @väljalaskekuupäev date,
  @Osakonna_ID int
AS
  INSERT INTO Patsient(Perekonnanimi, Nimi, Sünnikuupäev, Diagnoos, vastuvõtukuupäev, väljalaskekuupäev, Osakonna) 
  VALUES (@perenimi, @nimi, @sünnipäev, @diagnoos, @vastuvõtukuupäev, @väljalaskekuupäev, @Osakonna_ID);

EXEC Add_Patsient @perenimi = 'Gregotov', @nimi = 'Marjhus',
@sünnipäev = '1980-02-25', @diagnoos = 'Skisofreenia',
@vastuvõtukuupäev = '2020-05-16', @väljalaskekuupäev = '2021-07-21',
@Osakonna_ID = 1;
select * from Patsient;


CREATE PROCEDURE Konsultatioon
  @Patsiendi int,
  @Asti int,
  @konsultatsioon_kellaaeg datetime,
  @põhjuse varchar(50)
AS
INSERT INTO terapeudi_konsultatsioon(Patsiendi, Arsti, konsultatsioon_kellaaeg, põhjuse) 
VALUES (@Patsiendi, @Asti, @konsultatsioon_kellaaeg, @põhjuse);

EXEC Konsultatioon @Patsiendi = 4, @Asti = 3, @konsultatsioon_kellaaeg = '2023-10-25 09:00:00', @põhjuse = 'Ärevus'
select * from terapeudi_konsultatsioon;
