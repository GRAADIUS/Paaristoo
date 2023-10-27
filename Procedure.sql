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
