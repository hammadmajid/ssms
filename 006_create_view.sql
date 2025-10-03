CREATE VIEW IssuedBooks AS
SELECT m.Name AS MemberName, b.Title AS BookTitle, i.IssueDate
FROM Issued i
JOIN Members m ON i.MemberID = m.MemberID
JOIN Books b ON i.BookID = b.BookID;

GO

SELECT * FROM IssuedBooks;