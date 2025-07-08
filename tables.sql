-- SQL command to create database tables for a library
CREATE TABLE authors (
    author_id NUMBER NOT NULL,
    author_name VARCHAR2(100) NOT NULL,
    country VARCHAR2(50),

    CONSTRAINT PK_Authors PRIMARY KEY (author_id)
);

CREATE TABLE books (
    book_id NUMBER NOT NULL PRIMARY KEY,
    title VARCHAR2(100) NOT NULL,
    author_id NUMBER NOT NULL, 
    year NUMBER(4),
    language VARCHAR(50),

    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-- Include a new column into a existing table
ALTER TABLE books
    ADD genre VARCHAR2(50);

-- Adding the auto generation property to the author_id column, since the table already exist
-- Sequence
CREATE SEQUENCE seq_authors_id 
    START WITH 1000 
    INCREMENT BY 10
    NOCACHE;

-- Trigger
CREATE OR REPLACE TRIGGER trg_authors_b 
    BEFORE INSERT ON authors
    FOR EACH ROW
    WHEN (NEW.author_id IS NULL)
    BEGIN
        SELECT seq_authors_id.NEXTVAL 
        INTO :NEW.author_id FROM dual;
    END;
    /
