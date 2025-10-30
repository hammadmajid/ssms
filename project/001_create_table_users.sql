USE DigitalBulletinBoard;

CREATE TABLE Users (
    user_id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    email NVARCHAR(150) UNIQUE NOT NULL,
    role NVARCHAR(20) CHECK (role IN ('faculty', 'student')) NOT NULL,
    password_hash NVARCHAR(255) NOT NULL,
    created_at DATETIME DEFAULT GETDATE()
);
