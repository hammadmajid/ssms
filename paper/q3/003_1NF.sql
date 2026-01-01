USE NormalizedDB;

CREATE TABLE Registration_1NF (
	MemberID VARCHAR(5) KEY,
	MemberName VARCHAR(256),
	ClassID VARCHAR(100),
	ClassName VARCHAR(100),
	InstructorName VARCHAR(256),
	WeeklyHours INT,
);
