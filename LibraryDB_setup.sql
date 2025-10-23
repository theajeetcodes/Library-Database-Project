create database LibraryDB;
USE LibraryDB;

CREATE TABLE Authors(
AuthorID int primary key,
Name varchar(100),
Country varchar(50)
);

create table Books(
BookID int primary key,
Title varchar(100),
AuthorID int,
Genre varchar(50),
foreign key (AuthorID) REFERENCES Authors(AuthorID)
);

CREATE TABLE Borrowers(
BorrowerID int primary key,
Name varchar(100),
Contact varchar(50)
);

CREATE TABLE Loans(
LoanID int primary key,
BookID int,
BorrowerID int,
LoanDate DATE,
ReturnDATE DATE,
FOREIGN KEY (BookID) references Books(BookID),
FOREIGN KEY (BorrowerID) references Borrowers(BorrowerID)
);

insert into Authors values(1,'J.K. Rowling', 'UK');
INSERT INTO Authors values(2,'Cheatan Bhagat', 'India');

insert into Books values(1,'Harry Potter', 1, 'Fantasy');
insert into Books values(2,'2 States', 2, 'Romance');

insert into Borrowers values(1, 'Ajeet yadav', '1234567890');
insert into Borrowers values(2, 'Rohan Singh', '0987654321');

insert into Loans values(1, 1, 1, '2025-10-18', '2025-10-25');