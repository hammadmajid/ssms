USE NormalizedDB;

CREATE TABLE Registration_1NF (
	MemberID INT PRIMARY KEY,
	MemberName VARCHAR(256),
	ClassID INT,
	ClassName VARCHAR(100),
	InstructorName VARCHAR(256),
	WeeklyHours INT,
);
