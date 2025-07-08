-- Create a view with all the information realated to the titles and its authors.
CREATE OR REPLACE VIEW book_info AS
SELECT  b.BOOK_ID, 
        b.TITLE, 
        b.AUTHOR_ID, 
        a.AUTHOR_NAME,
        b.YEAR as "1st Edition Year", 
        b.LANGUAGE as "Publication Language",
        a.COUNTRY as "Author Country"
FROM BOOKS b
INNER JOIN AUTHORS a
ON b.AUTHOR_ID = a.AUTHOR_ID
ORDER BY a.AUTHOR_NAME;
