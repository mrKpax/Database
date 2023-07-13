# Creazione database
CREATE DATABASE database;
USE databaseFIGC;

# Creazione tabelle
CREATE TABLE Tabella (
  Chiave VARCHAR(3) PRIMARY KEY,
  Numero INT NOT NULL,
  Unico INT UNIQUE,
  ChiaveEsterna INT NOT NULL,
  FOREIGN KEY ChiaveEsterna REFERENCES Tabella2(Codice)
      ON UPDATE CASCADE/NO ACTION/RESTRICT
      ON DELETE CASCADE/SET NULL/RESTRICT
)

CREATE TABLE Tabella2 (
  Codice INT,
  Nome VARCHAR(20) NOT NULL,
  Anni INT NOT NULL,
  CHECK (Anni >= 18),
  CHECK (Nome IN ('Francesco', 'Marco')),
  PRIMARY KEY(Codice)
)

# Modifica degli schemi
ALTER TABLE tabella ADD attributo INT
ALTER TABLE tabella DROP attributo CASCADE/RESTRICT
ALTER TABLE tabella ALTER attributo DROP/SET DEFAULT ...
