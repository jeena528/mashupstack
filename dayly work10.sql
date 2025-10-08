CREATE DATABASE OnlineBookStoreDB;


USE OnlineBookStoreDB;


CREATE TABLE authors (
    author_id INT AUTO_INCREMENT PRIMARY KEY,   
    author_name VARCHAR(100) NOT NULL,          
    email VARCHAR(100) UNIQUE NOT NULL          
);


CREATE TABLE books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,     
    book_title VARCHAR(150) NOT NULL,           
    author_id INT NOT NULL,                     
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);


INSERT INTO authors (author_name, email) VALUES
('Chetan Bhagat', 'chetan@example.com'),
('J.K. Rowling', 'jkrowling@example.com'),
('George R.R. Martin', 'george@example.com'),
('Arundhati Roy', 'arundhati@example.com'),
('Dan Brown', 'danbrown@example.com');


INSERT INTO books (book_title, author_id) VALUES
('Five Point Someone', 1),
('2 States', 1),
('Harry Potter and the Philosopher''s Stone', 2),
('Harry Potter and the Chamber of Secrets', 2),
('A Game of Thrones', 3),
('A Clash of Kings', 3),
('The God of Small Things', 4),
('The Da Vinci Code', 5),
('Angels and Demons', 5);


SELECT * FROM authors;
SELECT * FROM books;
SELECT 
    b.book_id,
    b.book_title,
    a.author_name,
    a.email
FROM books b
JOIN authors a ON b.author_id = a.author_id;