DROP TABLE IF EXISTS AIRPORTS;
CREATE TABLE AIRPORTS (
AIRPORT_ID INT NOT NULL,
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
AIRLINE_ID INTEGER NOT NULL,
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
(5, 'British_Airways', 279, 1, 0),
(6, 'S7', 92, 0, 0),
(7, 'CAT_AVIATION', 7, 0, 1),
(8, 'Emirates', 272, 1, 0),
(9, 'RwandAir', 12, 0, 0),
(10, 'Cubana', 24, 0, 0),

Drop table if exists AC_Brands;
Create table AC_Brands (
BRAND_ID integer,
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
PLANE_ID integer,
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

Create Table FLEETS( 
AIRLINE_ID INTEGER (30), 
PLANE_ID INTEGER (30), 
PLANES_NUMBER INTEGER (30) 
); 

(2, 5, 46),
(2, 6, 19),
(2, 7, 11),
(2, 8, 4),
(2, 9, 44),
(2, 10, 0),
(3, 1, 11),
(3, 2, 14),
(3, 3, 12),
(3, 4, 11),
(3, 5, 21),
(3, 6, 1),
(3, 7, 4),
(3, 8, 22),
(3, 9, 30),
(3, 10, 0),
(4, 1, 0),
(4, 2, 12),
(4, 3, 0),
(4, 4, 1),
(4, 5, 0),
(4, 6, 13),
(4, 7, 0),
(4, 8, 0),
(4, 9, 0),
(4, 10, 11),
(5, 1, 12),
(5, 2, 13),
(5, 3, 76),
(5, 4, 34),
(5, 5, 44),
(5, 6, 12),
(5, 7, 18),
(5, 8, 11),
(5, 9, 59),
(5, 10, 0),
(6, 1, 0),
(6, 2, 0),
(6, 3, 31),
(6, 4, 0),
(6, 5, 0),
(6, 6, 1),
(6, 7, 0),
(6, 8, 38),
(6, 9, 22),
(6, 10, 0),
(7, 1, 1),
(7, 2, 1),
(7, 3, 0),
(7, 4, 1),
(7, 5, 0),
(7, 6, 2),
(7, 7, 0),
(7, 8, 0),
(7, 9, 0),
(7, 10, 9),
(8, 1, 21),
(8, 2, 25),
(8, 3, 38),
(8, 4, 33),
(8, 5, 54),
(8, 6, 12),
(8, 7, 27),
(8, 8, 1),
(8, 9, 61),
(8, 10, 0),
(9, 1, 2),
(9, 2, 2),
(9, 3, 0),
(9, 4, 1),
(9, 5, 0),
(9, 6, 7),
(9, 7, 0),
(9, 8, 0),
(9, 9, 0),
(9, 10, 0),
(10, 1, 5),
(10, 2, 1),
(10, 3, 0),
(10, 4,	4),
(10, 5,	0),
(10, 6,	8),
(10, 7,	0),
(10, 8,	5),
(10, 9,	1),
(10, 10, 0);
-- выбрать аэропорты, способные принять а380

SELECT AIRPORT_ID FROM AIRPORTS
WHERE Able_to_accomodate_A380=1


-- выбрать авиалинии, не использующие самолеты производства РФ

SELECT AIRLINE_ID FROM AIRLINES
INNER JOIN AC_Brands
ON AIRLINE_ID=BRAND_ID WHERE Country_of_manufacture!='Russia'


-- выбрать авиалинии, использующие самолеты с maiden flight в 20 веке

SELECT AIRLINE_ID FROM AIRLINES
INNER JOIN PLANES
ON AIRPLINE_ID=PLANE_ID WHERE Year_of_Maiden_Flight<2000


-- выбрать авиалинии, не использующие Falcon X7

SELECT AIRLINE_ID FROM AIRLINES
WHERE Dassault_Falcon_7X !=1


--Посчитать кол-во самолетов вместимостью до 20 человек у каждой компании
SELECT SUM(PLANES_NUMBER) FROM FLEETS
INNER JOIN PLANES
ON PLANE_ID=PLANE_ID WHERE Pas_Capacity<21
GROUP BY AIRLINE_ID


--Средняя дальность полета у самолетов, которые выпущены после 2000 года 
SELECT AVG(Range) FROM PLANES
WHERE Year_of_Maiden_Flight>1999


--Средняя дальность полетов у каждой авиакомпании
SELECT AVG(Range) FROM PLANES
INNER JOIN AIRLINES
ON PLANE_ID=AIRLINE_ID GROUP BY AIRLINE_ID


--Общая сумма дальностей всего флота компании
SELECT SUM(Range) FROM PLANES
INNER JOIN FLEETS
ON PLANE_ID=PLANE_ID GROUP BY AIRLINE_ID


--Посчитать самолеты в каждом флоте, у которых больше 20 пассажиров
SELECT COUNT(PLANE_ID) FROM FLEETS
INNER JOIN PLANES
ON PLANE_ID=PLANE_ID WHERE Pas_Capacity<20
GROUP BY AIRLINE_ID
