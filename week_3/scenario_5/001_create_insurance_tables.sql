-- Insurance Company Database
-- An insurance company provides different policies (health, car, life). Customers
-- purchase policies, and each policy may cover multiple beneficiaries. Claims are
-- submitted by customers, and each claim is reviewed by an employee. The company
-- also tracks agents who sell policies and commissions earned by each agent.

USE InsuranceDB;

CREATE TABLE PolicyTypes (
    PolicyTypeID INT PRIMARY KEY IDENTITY(1,1),
    PolicyTypeName NVARCHAR(50) NOT NULL
);

CREATE TABLE Agents (
    AgentID INT PRIMARY KEY IDENTITY(1,1),
    AgentName NVARCHAR(100) NOT NULL,
    Contact NVARCHAR(50),
    CommissionRate DECIMAL(5,2) NOT NULL
);

CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    CustomerName NVARCHAR(100) NOT NULL,
    Contact NVARCHAR(50)
);

CREATE TABLE Policies (
    PolicyID INT PRIMARY KEY IDENTITY(1,1),
    PolicyNumber NVARCHAR(50) NOT NULL UNIQUE,
    PolicyTypeID INT NOT NULL,
    CustomerID INT NOT NULL,
    AgentID INT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    PremiumAmount DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (PolicyTypeID) REFERENCES PolicyTypes(PolicyTypeID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (AgentID) REFERENCES Agents(AgentID)
);

CREATE TABLE Beneficiaries (
    BeneficiaryID INT PRIMARY KEY IDENTITY(1,1),
    PolicyID INT NOT NULL,
    BeneficiaryName NVARCHAR(100) NOT NULL,
    Relationship NVARCHAR(50),
    FOREIGN KEY (PolicyID) REFERENCES Policies(PolicyID)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY IDENTITY(1,1),
    EmployeeName NVARCHAR(100) NOT NULL,
    Department NVARCHAR(50)
);

CREATE TABLE Claims (
    ClaimID INT PRIMARY KEY IDENTITY(1,1),
    PolicyID INT NOT NULL,
    CustomerID INT NOT NULL,
    EmployeeID INT NOT NULL,
    ClaimDate DATE NOT NULL,
    ClaimAmount DECIMAL(10,2) NOT NULL,
    Status NVARCHAR(50) NOT NULL CHECK (Status IN ('Pending','Approved','Rejected')),
    FOREIGN KEY (PolicyID) REFERENCES Policies(PolicyID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

CREATE TABLE Commissions (
    CommissionID INT PRIMARY KEY IDENTITY(1,1),
    AgentID INT NOT NULL,
    PolicyID INT NOT NULL,
    CommissionAmount DECIMAL(10,2) NOT NULL,
    PaymentDate DATE NOT NULL,
    FOREIGN KEY (AgentID) REFERENCES Agents(AgentID),
    FOREIGN KEY (PolicyID) REFERENCES Policies(PolicyID)
);
