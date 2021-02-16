CREATE TABLE FILMY (
    ID_FILMU INT PRIMARY KEY,
    TYTUL VARCHAR(32) NOT NULL,
    GATUNEK VARCHAR(16) NOT NULL,
    REZYSER VARCHAR(32) NOT NULL,
    CZAS_TRWANIA NUMERIC (3,0) NOT NULL,
    OCENA NUMERIC (2,1) NOT NULL,
    ILOSC_GLOSOW NUMERIC (5,0)
	)

CREATE TABLE SEANSE (
    ID_SEANSU INT PRIMARY KEY,
    ID_FILMU INT REFERENCES FILMY(ID_FILMU),
    DATA_SEANSU DATE NOT NULL,
    CENA NUMERIC (4,2) NOT NULL
);
CREATE TABLE DANE_OSOBOWE (
    EMAIL VARCHAR(32) PRIMARY KEY,
    IMIE VARCHAR(12) NOT NULL,
    NAZWISKO VARCHAR(16) NOT NULL,
    NUMER_TEL NUMERIC (9,0) NOT NULL
);

CREATE TABLE KLIENCI (
    ID_KLIENTA INT PRIMARY KEY,
    EMAIL VARCHAR(32) REFERENCES DANE_OSOBOWE(EMAIL),
    HASLO VARCHAR(32) NOT NULL
);

CREATE TABLE ZAMOWIENIA (
    ID_ZAMOWIENIA INT PRIMARY KEY,
    ID_KLIENTA INT REFERENCES KLIENCI(ID_KLIENTA),
    ID_SEANSU INT REFERENCES SEANSE(ID_SEANSU),
);

CREATE SEQUENCE SeanseIDSequence
start with 1
increment by 1
minvalue 0
maxvalue 99999;

CREATE SEQUENCE ZamowieniaIDSequence
start with 1
increment by 1
minvalue 0
maxvalue 99999;

CREATE SEQUENCE FilmyIDSequence
start with 1
increment by 1
minvalue 0
maxvalue 99999;

CREATE SEQUENCE KlienciIDSequence
start with 1
increment by 1
minvalue 0
maxvalue 99999;

INSERT INTO FILMY VALUES (NEXT VALUE FOR FilmyIDSequence,'Zielona Mila', 'Dramat', 'Frank Darabont', 188, 8.6, 1);
INSERT INTO FILMY VALUES (NEXT VALUE FOR FilmyIDSequence,'Skazani Na Shawshank', 'Dramat', 'Frank Darabont', 142, 8.8, 1);
INSERT INTO FILMY VALUES (NEXT VALUE FOR FilmyIDSequence,'Forrest Gump', 'Dramat', 'Robert Zemeckis', 142, 8.5, 1);
INSERT INTO FILMY VALUES (NEXT VALUE FOR FilmyIDSequence,'Leon Zawodowiec', 'Kryminał', 'Luc Besson', 142, 8.1, 1);
INSERT INTO FILMY VALUES (NEXT VALUE FOR FilmyIDSequence,'Requiem dla Snu', 'Dramat', 'Darren Aronofsky', 102, 7.8, 1);
INSERT INTO FILMY VALUES (NEXT VALUE FOR FilmyIDSequence,'Aquaman', 'Kryminal', 'Luc Besson', 110, 8.1, 1);
INSERT INTO FILMY VALUES (NEXT VALUE FOR FilmyIDSequence,'Matrix', 'Sci-Fi', 'Lilly Wachowski', 136, 7.6, 1);
INSERT INTO FILMY VALUES (NEXT VALUE FOR FilmyIDSequence,'Milczenie Owiec', 'Thriller', 'Jonathan Demme', 118, 8.2, 1);
INSERT INTO FILMY VALUES (NEXT VALUE FOR FilmyIDSequence,'Avatar', 'Sci-Fi', 'James Cameron', 162, 7.4, 1);
INSERT INTO FILMY VALUES (NEXT VALUE FOR FilmyIDSequence,'Gladiator', 'Historyczny', 'Ridley Scott', 155, 8.1, 1);
INSERT INTO FILMY VALUES (NEXT VALUE FOR FilmyIDSequence,'Shrek', 'Familijny', 'Vicky Jenson', 90, 7.8, 1);
INSERT INTO FILMY VALUES (NEXT VALUE FOR FilmyIDSequence,'Szeregowiec Ryan', 'Wojenny', 'Steven Spielberg', 170, 8.1, 1);
INSERT INTO FILMY VALUES (NEXT VALUE FOR FilmyIDSequence,'Titanic', 'Katastroficzny', 'James Cameron', 194, 7.3, 1);
INSERT INTO FILMY VALUES (NEXT VALUE FOR FilmyIDSequence,'Nietykalni', 'Biograficzny', ' Éric Toledano' , 112, 8.7, 1);

INSERT INTO KLIENCI VALUES (NEXT VALUE FOR KlienciIDSequence, 'ElaZajac@jourrapide.com', 'Kasztan123');
INSERT INTO KLIENCI VALUES (NEXT VALUE FOR KlienciIDSequence, 'ZygfrydKucharski@rhyta.com', 'Monika1998');
INSERT INTO KLIENCI VALUES (NEXT VALUE FOR KlienciIDSequence, 'AnielaKowalska@teleworm.us', '05052000');
INSERT INTO KLIENCI VALUES (NEXT VALUE FOR KlienciIDSequence, 'WitoldOstrowski@jourrapide.com', 'Sk8b4ss');
INSERT INTO KLIENCI VALUES (NEXT VALUE FOR KlienciIDSequence, 'KrzysztofKowalski@teleworm.us', 'Gucio2009');
INSERT INTO KLIENCI VALUES (NEXT VALUE FOR KlienciIDSequence, 'DominikaAdamczyk@armyspy.com', 'Malpeczka123');
INSERT INTO KLIENCI VALUES (NEXT VALUE FOR KlienciIDSequence, 'MarzenaKaczmarek@armyspy.com', 'Hahahaha');
INSERT INTO KLIENCI VALUES (NEXT VALUE FOR KlienciIDSequence, 'AntoniJablonski@teleworm.us', 'niemamhasla');
INSERT INTO KLIENCI VALUES (NEXT VALUE FOR KlienciIDSequence, 'NataszaWysocka@jourrapide.com', 'KAcabeJ');




  
