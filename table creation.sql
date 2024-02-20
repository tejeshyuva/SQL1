CREATE SCHEMA lms;

CREATE TABLE lms.lib(
 memberId INT PRIMARY KEY,
   firstName VARCHAR(20),
   lastName VARCHAR(30),
   emailId VARCHAR(30),
   phoneNo BIGINT(15)
   );
   
CREATE TABLE lms.book(
bookId INT,
title VARCHAR(30),
author VARCHAR(30),
price BIGINT(30),
genre varchar(30)
);

INSERT INTO lms.book (bookId, title, author, price, genre) VALUES 
(1, 'To Kill a Mockingbird', 'Harper Lee', 1500, 'Fiction'),
(2, '1984', 'George Orwell', 1200, 'Science Fiction'),
(3, 'The Great Gatsby', 'F. Scott Fitzgerald', 1800, 'Fiction'),
(4, 'The Catcher in the Rye', 'J.D. Salinger', 1300, 'Fiction'),
(5, 'Animal Farm', 'George Orwell', 1000, 'Satire');


	
    INSERT INTO lms.lib (memberId, firstName, lastName, emailId, phoneNo)
VALUES
   (1, 'John', 'Doe', 'john.doe@example.com', 1234567890),
   (2, 'Jane', 'Smith', 'jane@example.com', 9876543210),
   (3, 'Alice', 'Johnson', 'alice@example.com', 5551234567);

   ALTER TABLE lms.lib
   ADD PLACE VARCHAR(40);
Insert into lms.lib(  Place) VALUES (4,' HOUSTON');

select * from lms.book;

   select * from  lms.lib;
   
DROP TABLE LMS.LIB;