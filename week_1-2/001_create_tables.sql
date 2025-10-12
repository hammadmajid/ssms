USE LibraryDB;

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title NVARCHAR(100),
    Author NVARCHAR(100)
);

CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Contact NVARCHAR(50)
);