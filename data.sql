-- SQL command to insert data into the new library tables
-- Authors Table
INSERT INTO authors(author_name, country) VALUES ('Haruki Murakami', 'Japan');
INSERT INTO authors(author_name, country) VALUES ('Paulo Coelho', 'Brazil');
INSERT INTO authors(author_name, country) VALUES ('Clarice Lispector', 'Brazil');
INSERT INTO authors(author_name, country) VALUES ('George Orwell', 'UK');

-- Books Table
INSERT ALL
    INTO books (book_id, title, genre, author_id, year, language)
    VALUES (30201, '1984', 'Literature', 1030, '1949', 'English')
    
    INTO books (book_id, title, genre, author_id, year, language)
    VALUES (30202, 'Kafka on the Shore', 'Literature', 1000, '2002', 'English')

    INTO books (book_id, title, genre, author_id, year, language)
    VALUES (30203, 'O alquimista', 'Fiction', 1010, '1988', 'Portuguese')

    INTO books (book_id, title, genre, author_id, year, language)
    VALUES (30204, 'The Alchemist', 'Fiction',1010, '1988', 'English')

    INTO books (book_id, title, genre, author_id, year, language)
    VALUES (30205, 'The Hour of the Star', 'Literature', 1020, '1977', 'English')

    INTO books (book_id, title, genre, author_id, year, language)
    VALUES (30206, 'Agua Viva', 'Poetry', 1020, '1973', 'Portuguese')

SELECT * FROM dual;
