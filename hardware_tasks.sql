-- 1 
SELECT sum(amount) FROM db_422d44.hardware;
-- 2
SELECT title FROM db_422d44.hardware
WHERE amount = 0;
-- 3
SELECT avg(price) FROM db_422d44.hardware
WHERE title like 'Монитор%';
-- 4
SELECT title FROM db_422d44.hardware
where title like 'Клавиатура%'
order by price;
-- 5
SELECT tag, count(*) FROM db_422d44.hardware
WHERE tag IS NOT NULL
group by tag 
order by tag desc;
-- 6
SELECT count(*) FROM db_422d44.hardware
where tag like 'discount';
-- 7
SELECT title, price FROM db_422d44.hardware
where tag like 'new'
order by price desc
limit 1;
-- 8
INSERT INTO `db_422d44`.`hardware` (`title`, `price`, `amount`, `tag`) VALUES ('Ноутбук Lenovo 2BXKQ7E9XD', '54500.00', '1', 'new');
-- 9
DELETE FROM db_422d44.hardware
WHERE title = 'Очки PS VR 2'
and
id = 18;

