USE LibraryDB2;

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    CategoryName NVARCHAR(100) NOT NULL
);

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY IDENTITY(1,1),
    AuthorName NVARCHAR(100) NOT NULL
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(200) NOT NULL,
    CategoryID INT NOT NULL,
    IsEBook BIT NOT NULL DEFAULT 0,
    FileURL NVARCHAR(300) NULL,
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

CREATE TABLE BookAuthors (
    BookID INT NOT NULL,
    AuthorID INT NOT NULL,
    PRIMARY KEY (BookID, AuthorID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

CREATE TABLE Members (
    MemberID INT PRIMARY KEY IDENTITY(1,1),
    MemberName NVARCHAR(100) NOT NULL,
    Contact NVARCHAR(50),
    IsPremium BIT NOT NULL DEFAULT 0,
    MaxBorrowLimit AS (CASE WHEN IsPremium = 1 THEN 10 ELSE 5 END)
);

CREATE TABLE Borrowings (
    BorrowingID INT PRIMARY KEY IDENTITY(1,1),
    MemberID INT NOT NULL,
    BookID INT NOT NULL,
    BorrowDate DATE NOT NULL,
    DueDate DATE NOT NULL,
    ReturnDate DATE NULL,
    Fine DECIMAL(8,2) NULL,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

CREATE TABLE Downloads (
    DownloadID INT PRIMARY KEY IDENTITY(1,1),
    MemberID INT NOT NULL,
    BookID INT NOT NULL,
    DownloadDate DATE NOT NULL,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);
