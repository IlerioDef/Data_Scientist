DROP TABLE IF EXISTS Fav_films;
CREATE TABLE
Fav_films (
	id serial PRIMARY KEY,
	name VARCHAR (355) NOT NULL,
	country VARCHAR (355) NOT NULL,
	Earnings NUMERIC (15,2), -- до 15 знаков, 2 знака после запятой
	Date_premiered DATE
);

INSERT INTO
Fav_films 
VALUES 
(1, 'Excision', 'USA', 2757.0, '2012-02-11'::date),
(2, 'Defendor', 'USA', 44462.0, '2010-05-13'::date),
(3, 'The Tracey Fragments', 'Canada', '52000.0', '2008-02-21'::date),
(4, 'The Neon Demon', 'USA', '1333124.0', '2016-06-24'::date),
(5, 'Only God Forgives', 'USA', '9743738.0', '2013-08-18'::date);

DROP TABLE IF EXISTS Persons;
CREATE TABLE
Persons (
	id serial PRIMARY KEY,
	name VARCHAR (355) NOT NULL,
	last_name VARCHAR (355) NOT NULL
);

INSERT INTO
persons
VALUES
(1, 'Annalynne', 'Mccord'),
(2, 'Woody', 'Harelson'),
(3, 'Ellen', 'Page'),
(4, 'Elle', 'Fanning'),
(5, 'Ryan', 'Gosling');

СREATE TABLE
persons2content (
	id_person VARCHAR (355),
	id_content VARCHAR (355),
	person_type VARCHAR (355)
); -- сколько ни пытался, мне не удалось параллельно запихать в эту таблицу значения