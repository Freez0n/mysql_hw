-- 1.
SELECT 
    COUNT(*)
FROM
    movies
        JOIN
    companies ON movies.companies_id = companies.id
WHERE
    companies.title = 'Universal Pictures'
;
-- 2.
SELECT 
    COUNT(*)
FROM
    movies
        JOIN
    directors ON movies.directors_id = directors.id
WHERE
    directors.full_name = 'Фрэнсис Форд Коппола'
;
-- 3.
SELECT 
    COUNT(*)
FROM
    movies
WHERE
    year >= YEAR(CURDATE()) - 20;
-- 4.
SELECT DISTINCT
    genres.title
FROM
    genres
        JOIN
    movies ON movies.genres_id = genres.id
        JOIN
    directors ON directors.id = movies.directors_id
WHERE
    directors.full_name = 'Стивен Спилберг'
-- 5.
SELECT 
    movies.title, genres.title, directors.full_name
FROM
    movies
        JOIN
    genres ON movies.genres_id = genres.id
        JOIN
    directors ON movies.directors_id = directors.id
ORDER BY movies.budget DESC
LIMIT 5;
-- 6.
SELECT 
    directors.full_name, COUNT(movies.id)
FROM
    directors
        JOIN
    movies ON movies.directors_id = directors.id
GROUP BY directors.full_name
ORDER BY COUNT(movies.id) DESC
LIMIT 1;
-- 7.
SELECT 
    companies_id, SUM(budget)
FROM
    movies
GROUP BY companies_id
ORDER BY SUM(budget) DESC
LIMIT 1;
SELECT 
    movies.title, genres.title
FROM
    movies
        JOIN
    genres ON movies.genres_id = genres.id
WHERE
    companies_id = 4
ORDER BY movies.title;
-- 8.
SELECT 
    AVG(budget)
FROM
    movies
        JOIN
    companies ON movies.companies_id = companies.id
WHERE
    companies.title = 'Warner Bros.';
-- 9.
SELECT 
    genres.title, COUNT(movies.id), AVG(movies.budget)
FROM
    genres
        JOIN
    movies ON genres.id = movies.genres_id
GROUP BY genres.title
ORDER BY COUNT(movies.id) DESC;	
-- 10.
DELETE movies FROM movies
        INNER JOIN
    genres ON movies.genres_id = genres.id 
WHERE
    movies.title = 'Дикие истории'
    AND genres.title = 'Комедия';