USE UniDB;

INSERT INTO Buildings(BuildingID, BuildingName, Location)
VALUES (1, 'Admin', 'West Campus'), (2, 'Academia', 'North Campus');

INSERT INTO Department(DeptID, DeptName, BuildingID)
VALUES (1, 'CS', 1), (2, 'ASO', 2), (3, 'PHY', 2);

INSERT INTO Professors(ProfID, ProfName, DeptID)
VALUES (1, 'Ali', 1), (2, 'Saad', 2);
