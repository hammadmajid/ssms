USE LibraryDB;

CREATE TABLE Issued (
    IssueID INT PRIMARY KEY,
    MemberID INT FOREIGN KEY REFERENCES Members(MemberID),
    BookID INT FOREIGN KEY REFERENCES Books(BookID),
    IssueDate DATE
);