create database librarymanagement;
use librarymanagement;

CREATE TABLE library_member (
    member_id INT PRIMARY KEY auto_increment,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    email_id VARCHAR(40),
    phone_no BIGINT,
    membership_level VARCHAR(10),
    address_id INT);

INSERT INTO library_member (
	first_name, last_name, email_id, phone_no, membership_level, address_id)
    VALUE ("Alex", "Hales", "hasles.alex@gmail.com", 9876543210, "Level 2", 1),
    ("David", "Warner", "warner.david@gmail.com", 1632764293, "Level 1", 2),
    ("James", "Maddison", "maddison.james@gmail.com", 8631561548, "Level 3", 3),
    ("John", "Tyler", "tyler.john@gmail.com", 7891234333, "Level 1", 4),
    ("Andrew", "Jackson", "jackson.andrew@gmail.com", 8974114892, "Level 4", 5),
    ("Wilson", "Woodrow", "woodrow.wilson@gmail.com", 9434183182, "Level 5", 6),
    ("Calvin", "Coolidge", "coolidge.calvin@gmail.com", 8425253834, "Level 1", 7),
    ("Andrew", "Johnson", "johnson.andrew@gmail.com", 7234515613, "Level 3", 8),
    ("Chester", "Arthur", "arthur.chester@gmail.com", 9146841148, "Level 4", 9),
    ("Grover", "Cleveland", "cleveland.grover@gmail.com", 7145814761, "Level 4", 10);


CREATE TABLE address (
    address_id INT PRIMARY KEY auto_increment,
    line1 VARCHAR(30),
    line2 VARCHAR(30),
    city VARCHAR(20),
    state VARCHAR(2),
    zip INT
);

INSERT INTO address (
	line1, line2, city, state, zip) value
    ("address1", "address lane 1", "Houston", "TX", 77058),
("address2", "address lane 2", "LongIsland", "NY", 10005),
("address3", "address lane 3", "Irvine", "CA", 71235),
("address4", "address lane 4", "Irvine", "CA", 71237),
("address5", "address lane 5", "Fairfax", "VA", 75678),
("address6", "address lane 6", "Atlanta", "GA", 75675),
("address7", "address lane 7", "Kansas City", "MO", 61243),
("address8", "address lane 8", "Kansas City", "KS", 61276),
("address9", "address lane 9", "McKinney", "TX", 75021),
("address10", "address lane 10", "Plano", "TX", 76342);

CREATE TABLE book (
    book_id INT PRIMARY KEY auto_increment,
    title VARCHAR(45),
    author_name VARCHAR(50),
    year_published INT,
    quantity INT
);

INSERT INTO book(title, author_name, year_published, quantity) 
values ("Java", "Sun microsysytems", "2018", "5"),
("python", "PSF", "2016", "8"),
("AWS","Amazon", "2018", "13"),
("Sql", "Sql author", "2019", "20"),
("Kafka", "Apache", "2017", "15"),
("Java", "Sun microsysytems", "2019", "10");

CREATE TABLE book_isbn (
    isbn BIGINT PRIMARY KEY,
    book_id INT,
    FOREIGN KEY (book_id) REFERENCES book(book_id)
);

INSERT INTO book_isbn(isbn, book_id) 
value("123734","1"), ("234154","2"),("459678","3"),("645987","4"),
("832567","5"),("967432","6");

CREATE TABLE checkout (
    id INT PRIMARY KEY auto_increment,
    isbn BIGINT,
    member_id INT,
    checkout_date DATETIME,
    due_date DATETIME,
    is_returned BOOLEAN,
    FOREIGN KEY (isbn) REFERENCES book_isbn(isbn),
    FOREIGN KEY (member_id) REFERENCES library_member(member_id)
);

insert into checkout (isbn, member_id, checkout_date, due_Date, is_returned) 
value ("123734","1","2023-11-06", "2023-12-01","0"),
("234154","2","2023-11-06", "2023-12-01","1"),
("459678","3","2023-10-06", "2023-11-01","1"),
("645987","4","2023-9-06", "2023-10-01","0"),
("832567","5","2023-8-06", "2023-9-01","1"),
("967432","6","2023-7-06", "2023-8-01","1");

select * from library_member;
select * from address;
SELECT * from book;
SELECT * from book_isbn;
select * from checkout;