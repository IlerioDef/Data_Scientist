Select 'ФИО: Шумков Никита Олегович, дз2';
--1.1 SELECT , LIMIT - выбрать 10 записей из таблицы ratings (Для всех дальнейших запросов выбирать по 10 записей, если не указано иное)
Select * from ratings
limit 10;
--1.2 WHERE, LIKE - выбрать из таблицы links всё записи, у которых imdbid оканчивается на "42", а поле movieid между 100 и 1000
(select * from links where imdbid like '%42') INTERSECT (select *from links where movieid >100) 
INTERSECT 
(select * from links where movieid <1000)
limit 30; 
--2.1 INNER JOIN выбрать из таблицы links все imdbId, которым ставили рейтинг 5
select imdbid from links 
inner join ratings 
on links.movieid=ratings.movieid where rating=5 limit 10; 
--3.1 COUNT() Посчитать число фильмов без оценок
COUNT (imdbdid) from links
outer join ratings on
links.movieid=ratings.movieid
 where rating is null limit 10; -- проверил select * from ratings where rating is null limit 10, показал, что пустых значений нет, значит фильмов без оценок нет. Вроде бы.
--3.2 GROUP BY, HAVING вывести top-10 пользователей, у который средний рейтинг выше 3.5
SELECT
    userId,
    AVG(rating) as avg_rating,
    Count(rating) as Rate_Numbers
FROM public.ratings
GROUP BY userId
HAVING AVG(rating) > 3.5
ORDER BY Rate_Numbers Desc
LIMIT 10;
--4.1 Подзапросы: достать любые 10 imbdId из links у которых средний рейтинг больше 3.5.
SELECT imdbid, rating
FROM links
INNER JOIN ratings
ON links.movieid=ratings.movieid
WHERE rating > (SELECT AVG(rating) FROM public.ratings HAVING AVG(rating) >3.5) limit 10;

