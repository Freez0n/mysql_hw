-- 1.
SELECT name FROM authors
JOIN authors_books ON authors.id = authors_books.authors_id
GROUP BY name
ORDER BY COUNT(books_id) DESC
LIMIT 1;
-- 2.
SELECT title, year FROM books
WHERE year IS NOT NULL
ORDER BY year ASC
LIMIT 5;
-- 3.
SELECT COUNT(*) FROM books
JOIN shelves ON books.shelves_id = shelves.id
WHERE shelves.title = 'Полка в кабинете';
-- 4.
SELECT books.title, authors.name, books.year
FROM books 
JOIN authors_books ON books.id = authors_books.books_id
JOIN authors ON authors_books.authors_id = authors.id
JOIN shelves ON books.shelves_id = shelves.id
WHERE shelves.title = 'Полка в спальне';
-- 5.
SELECT books.title, books.year
FROM books
JOIN authors_books ON books.id = authors_books.books_id
JOIN authors ON authors_books.authors_id = authors.id
WHERE authors.name = 'Лев Толстой';
-- 6.
SELECT books.title
FROM books
JOIN authors_books ON books.id = authors_books.books_id
JOIN authors ON authors_books.authors_id = authors.id
WHERE authors.name LIKE 'А%';
-- 7. 
SELECT books.id, books.title, authors.name 
FROM books
JOIN authors_books ON books.id = authors_books.books_id
JOIN authors ON authors_books.authors_id = authors.id
JOIN shelves ON books.shelves_id = shelves.id
WHERE shelves.title LIKE '%верхняя%' OR shelves.title LIKE '%нижняя%';
-- 8.
SELECT books.id
FROM books
JOIN authors_books ON books.id = authors_books.books_id
JOIN authors ON authors_books.authors_id = authors.id
WHERE books.title = 'Божественная комедия'
AND authors.name = 'Данте Алигьери';
SELECT id FROM friends WHERE name = 'Иванов Иван';
UPDATE books SET friends_id = 1 WHERE id = 9;
-- 9.
INSERT INTO `db_422d44`.`books` (`title`, `year`, `shelves_id`) VALUES ('Краткие ответы на большие вопросы', '2020', '1');
INSERT INTO `db_422d44`.`authors` (`name`) VALUES ('Стивен Хокинг');
INSERT INTO `db_422d44`.`authors_books` (`books_id`, `authors_id`) VALUES ('176', '145');


