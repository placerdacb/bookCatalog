-- See the tables content:
SELECT * 
FROM AUTHORS
ORDER BY AUTHOR_ID;

SELECT * 
FROM BOOKS
ORDER BY BOOK_ID;

-- Select all the books in the database from a specific author
SELECT *
FROM BOOKS
WHERE AUTHOR_ID = 1020;

-- Select the books and its Author's informations
SELECT * FROM book_info;

-- Books publish after 00's
SELECT title, year 
FROM books 
WHERE year > 2000;
