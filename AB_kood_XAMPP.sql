CREATE TABLE Ajakava (
  Ajakava_ID INT AUTO_INCREMENT PRIMARY KEY,
  Sundmus VARCHAR(25),
  Algusaeg DATETIME,
  Lopuaeg DATETIME
);

CREATE TABLE Toohive (
  Toohive_ID INT AUTO_INCREMENT PRIMARY KEY,
  Toohive VARCHAR(25)
);

CREATE TABLE Osakonna (
  Osakonna_ID INT AUTO_INCREMENT PRIMARY KEY,
  Osakonna_nimi VARCHAR(75),
  Asukoht VARCHAR(50)
);

CREATE TABLE Ravim (
  Meditsiini_ID INT AUTO_INCREMENT PRIMARY KEY,
  Ravimi_nimi VARCHAR(20),
  Eesmark VARCHAR(20),
  Korvalmoud VARCHAR(100)
);

CREATE TABLE Tootajad (
  Personali_ID INT AUTO_INCREMENT PRIMARY KEY,
  Nimi VARCHAR(20),
  Perekonnanimi VARCHAR(20),
  Spetsialiseerumine INT,
  Too_algus VARCHAR(100),
  Kontaktinfo VARCHAR(15),
  Toohive_ID INT,
  FOREIGN KEY (Toohive_ID) REFERENCES Toohive(Toohive_ID)
);

CREATE TABLE Patsient (
  Patsiendi_ID INT AUTO_INCREMENT PRIMARY KEY,
  Perekonnanimi VARCHAR(20),
  Nimi VARCHAR(20),
  Synnikuupaev DATE,
  Diagnoos VARCHAR(50),
  Haiguse_ajalugu VARCHAR(50),
  Vastuvoetukuupaev DATE,
  Valjalaskekuupaev DATE,
  Osakonna_ID INT,
  FOREIGN KEY (Osakonna_ID) REFERENCES Osakonna(Osakonna_ID)
);

CREATE TABLE Ravi (
  Ravi_ID INT AUTO_INCREMENT PRIMARY KEY,
  Patsiendi INT,
  FOREIGN KEY (Patsiendi) REFERENCES Patsient(Patsiendi_ID),
  Arsti INT,
  FOREIGN KEY (Arsti) REFERENCES Ravim(Meditsiini_ID),
  Maaratud_ravimid INT,
  FOREIGN KEY (Maaratud_ravimid) REFERENCES Tootajad(Personali_ID),
  Ravi_kestus DATE,
  Ravi_tulemused VARCHAR(20)
);

CREATE TABLE Terapeudi_konsultatsioon (
  Konsultatsioon_ID INT AUTO_INCREMENT PRIMARY KEY,
  Patsiendi INT,
  FOREIGN KEY (Patsiendi) REFERENCES Patsient(Patsiendi_ID),
  Arsti INT,
  FOREIGN KEY (Arsti) REFERENCES Tootajad(Personali_ID),
  Konsultatsioon_kellaaeg DATETIME,
  Pohjuse VARCHAR(50)
);

CREATE TABLE Psuhhoteraapia_seanss (
  Seansi_ID INT AUTO_INCREMENT PRIMARY KEY,
  Patsiendi INT,
  FOREIGN KEY (Patsiendi) REFERENCES Patsient(Patsiendi_ID),
  Psuhhoterapeudi INT,
  FOREIGN KEY (Psuhhoterapeudi) REFERENCES Tootajad(Personali_ID),
  Seansi_kuupaev DATETIME,
  Seansi_kirjeldus VARCHAR(50),
  Patsiendi_areng VARCHAR(50)
);
