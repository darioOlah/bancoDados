USE movies_db;

SELECT title AS titulo FROM series;

SELECT * FROM series;

SELECT title FROM movies
WHERE rating > 3 AND awards > 1 AND '1988-01-01' < release_date < '2009-12-31'
ORDER BY title DESC;

SELECT title FROM movies
WHERE rating > 3 AND awards > 1 BETWEEN '1988-01-01' AND '2009-12-31'
ORDER BY title DESC;

SELECT title FROM movies
WHERE rating > 3 AND awards > 1 AND release_date > '1988-01-01' < '2009-12-31'
ORDER BY title DESC
LIMIT 3
OFFSET 9;

SELECT title FROM episodes
ORDER BY rating DESC
LIMIT 3;

SELECT first_name, last_name FROM actors;

SELECT first_name AS nome, last_name AS sobrenome FROM actors;

SELECT * FROM movies;

SELECT title AS titulo FROM series WHERE title LIKE 'Supernatural';

SELECT title FROM movies WHERE title LIKE '_a%';

SELECT title FROM movies WHERE title LIKE '%Toy Story%';

SELECT title FROM movies WHERE title LIKE '%St%y';
