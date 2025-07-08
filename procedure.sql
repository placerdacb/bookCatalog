-- Creating a procedure to add a new book
CREATE OR REPLACE PROCEDURE add_book (
    p_book_id   IN books.book_id%TYPE,
    p_title     IN books.title%TYPE,
    p_genre     IN books.genre%TYPE,
    p_author_id IN books.author_id%TYPE,
    p_year      IN books.year%TYPE,
    p_language  IN books.language%TYPE
) AS 
BEGIN
INSERT INTO books (book_id, title, genre, author_id, year, language)
VALUES (p_book_id, p_title, p_genre, p_author_id, p_year, p_language);

END;
/
