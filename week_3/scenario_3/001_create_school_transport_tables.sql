-- School Transport System
-- A school operates buses. Each bus has a driver and a route with multiple stops. Students
-- are assigned to buses depending on their location. The system keeps track of
-- bus capacity and students using each bus daily. Each driver reports to a
-- transport supervisor.

USE SchoolTransportDB;

CREATE TABLE Supervisors (
    SupervisorID INT PRIMARY KEY IDENTITY(1,1),
    SupervisorName NVARCHAR(100) NOT NULL,
    Contact NVARCHAR(50)
);

CREATE TABLE Drivers (
    DriverID INT PRIMARY KEY IDENTITY(1,1),
    DriverName NVARCHAR(100) NOT NULL,
    Contact NVARCHAR(50),
    SupervisorID INT NOT NULL,
    FOREIGN KEY (SupervisorID) REFERENCES Supervisors(SupervisorID)
);

CREATE TABLE Routes (
    RouteID INT PRIMARY KEY IDENTITY(1,1),
    RouteName NVARCHAR(100) NOT NULL
);

CREATE TABLE Stops (
    StopID INT PRIMARY KEY IDENTITY(1,1),
    StopName NVARCHAR(100) NOT NULL,
    RouteID INT NOT NULL,
    StopOrder INT NOT NULL,
    FOREIGN KEY (RouteID) REFERENCES Routes(RouteID)
);

CREATE TABLE Buses (
    BusID INT PRIMARY KEY IDENTITY(1,1),
    BusNumber NVARCHAR(20) NOT NULL UNIQUE,
    Capacity INT NOT NULL,
    DriverID INT NOT NULL,
    RouteID INT NOT NULL,
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID),
    FOREIGN KEY (RouteID) REFERENCES Routes(RouteID)
);

CREATE TABLE Students (
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    StudentName NVARCHAR(100) NOT NULL,
    Class NVARCHAR(50),
    StopID INT NOT NULL,
    FOREIGN KEY (StopID) REFERENCES Stops(StopID)
);

CREATE TABLE BusAssignments (
    AssignmentID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT NOT NULL,
    BusID INT NOT NULL,
    AssignmentDate DATE NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (BusID) REFERENCES Buses(BusID)
);

CREATE TABLE DailyUsage (
    UsageID INT PRIMARY KEY IDENTITY(1,1),
    BusID INT NOT NULL,
    StudentID INT NOT NULL,
    DateUsed DATE NOT NULL,
    FOREIGN KEY (BusID) REFERENCES Buses(BusID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);
