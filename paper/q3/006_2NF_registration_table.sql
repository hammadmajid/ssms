USE NormalizedDB;

CREATE TABLE Registration (
	RegistrationID INT PRIMARY KEY,
	MemberID VARCHAR(100),
    ClassID VARCHAR(100),
	CONSTRAINT fk_Member FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    CONSTRAINT fk_ClassRef FOREIGN KEY (ClassID) REFERENCES Class(ClassID)
);