use Dept;

CREATE TABLE Department (
	DepartmentID INT PRIMARY KEY,
	DepartmentName VARCHAR(100) NOT NULL,
	DptLocation VARCHAR(100),
);

CREATE TABLE Employee (
	EnployeeID INT PRIMARY KEY,
	Employeeuane VARCHAR(100) NOT NULL,
	Department1D INT,
	Salary DECIMAL(10, 2),
	HireDate DATE,
	FOREIGN KEY (Department1D) REFERENCES Department(DepartmentID),
);