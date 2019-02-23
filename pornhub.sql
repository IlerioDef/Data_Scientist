DROP TABLE IF EXISTS AIRPORTS;
CREATE TABLE AIRPORTS (
id INT NOT NULL,
City VARCHAR (355) NOT NULL,
IATA_code VARCHAR (355) NOT NULL,
Able_to_accomodate_A380 INTEGER NOT NULL -- 1 - yes, 0-no
);
INSERT INTO AIRPORTS
VALUES
(1, 'Novosibirsk', 'OVB', 1),
(2, 'Dubai', 'DXB', 1),
(3, 'London', 'LYX', 0),
(4, 'Burnie', 'BWT', 0),
(5, 'Beijing', 'PEK', 1),
(6, 'Semarang', 'SRG', 0),
(7, 'Punta_Cana', 'PUJ', 1),
(8, 'Havana', 'HAV', 0),
(9, 'Kigali', 'KGL', 0),
(10, 'Houston', 'IAH', 1);

DROP TABLE IF EXISTS AIRLINES;
CREATE TABLE AIRLINES (
id INTEGER NOT NULL,
NAME VARCHAR (355) NOT NULL,
FLEET_VOLUME INT NOT NULL,
Airbus_A380 INT NOT NULL, -- 1 - yes, 0-no
Dassault_Falcon_7X INT NOT NULL -- 1 - yes, 0-no
);
INSERT INTO AIRLINES
VALUES
(1, 'Air_France', 212, 1, 0),
(2, 'Lufthansa', 287, 1, 0),
(3, 'Qantas', 126, 1, 0),
(4, 'JET_AVIATION', 37, 0, 1),
(5, 'CLAY_LACY', 53, 0, 1),
(6, 'British_Airways', 279, 1, 0),
(7, 'S7', 92, 0, 0),
(8, 'CAT_AVIATION', 7, 0, 1),
(9, 'Emirates', 272, 1, 0),
(10, 'Asiana_Airlines', 73, 1, 0),
(11, 'RwandAir', 12, 0, 0),
(12, 'Cubana', 24, 0, 0),
(13, 'Aviastar', 8, 0, 0),
(14, 'ULTRAAIR', 5, 0, 1),
(15, 'Malaysia_Airlines', 77, 1, 0),
(16, 'Korean_Air', 178, 1, 0),
(17, 'China_Southern_Airlines', 590, 1, 0),
(18, 'All_Nippon_Airways', 272, 1, 0),
(19, 'PAWA_Dominicana', 7, 0, 0),
(20, 'Aerolineas_MAS', 3, 0, 0);

Drop table if exists AC_Brands;
Create table AC_Brands (
id integer,
Manufacturer VARCHAR (50),
Country_of_manufacture VARCHAR (50));

Insert into AC_Brands values 
(1, 'Bombardier', 'Canada'),
(2, 'Airbus', 'France'),
(3, 'Boeing', 'USA'),
(4, 'Cessna', 'USA'),
(5, 'IL', 'Russia'),
(6, 'Embraer', 'Brazil'),
(7, 'Dassault', 'France');

-- Bombardier, Boeing, Tupolev, Sukhoy, Embraer, Cessna, Airbus


Drop table if exists Planes;
Create Table Planes (
id integer,
Manufacturer VARCHAR (350),
Model VARCHAR (350),
Pas_Capacity Numeric (30,0),
Range Numeric (30,0),
Year_of_Maiden_Flight integer
);

Insert into Planes values
 (1, 'Embraer', '110 Bandeirante', 18, 1964, 1968),
 (2, 'Bombardier', 'Phenom 300', 6, 3650, 2008),
 (3, 'Bombardier', 'CRJ700', 66, 2553, 1999),
 (4, 'Bombardier', 'Learjet 70/75', 9, 3778, 2013),
 (5, 'Airbus', 'A220', 133, 5460, 2013),
 (6, 'Cessna', 'Citationjet/M@', 10, 4010, 1991),
 (7, 'Airbus', 'A380-800', 853, 14800, 2005),
 (8, 'IL', '96-400', 436, 12000, 1988),
 (9, 'Boeing', '777', 414, 13936, 1994),
 (10, 'Dassault', 'Falcon 7X', 16, 11945, 2005);


-- 110 Bandeirante Embraer Capacity: 18 passengers Range: 1,964 km (1,060 nm, 1,220 mi) YearOfMaidenFlight 1968
-- Embraer Phenom 300 Capacity: 6 passengers Range: 3,650 km  2008
--Bombardier CRJ700 66 to 78  2,553 km  - 1999
-- Bombardier Learjet 70/75 Capacity: 8 + 1 passengers Range: 2,040 nmi (2,348 mi; 3,778 km) 2013
--Airbus A220 133 pas 5,460 km  2013 ('Embraer', '110 Bandeirante', 18, 1964, 1968),
 ('Bombardier', 'Phenom 300', 6, 3650, 2008),
 ('Bombardier', 'CRJ700', 66, 2553, 1999),
 ('Bombardier', 'Learjet 70/75', 9, 3778, 2013),
 ('Airbus', 'A220', 133, 5460, 2013),
 ('Cessna', 'Citationjet/M@', 10, 4010, 1991),
 ('Airbus', 'A380-800', 853, 14800, 2005),
 ('IL', '96-400', 436, 12000, 1988),
 ('Boeing', '777', 414, 13936, 1994),
 ('Dassault', 'Falcon 7X', 16, 11945, 2005);
