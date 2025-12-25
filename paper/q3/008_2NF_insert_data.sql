USE NormalizedDB;

INSERT INTO Class(ClassID, ClassName, InstructorName, WeeklyHours)
VALUES ('C10', 'YOGA', 'Sarah', 5);

INSERT INTO Members(MemberID, MemberName)
VALUES ('M001', 'John Doe');

INSERT INTO Registration(RegistrationID, ClassID, MemberID) 
VALUES (1, 'C10', 'M001');