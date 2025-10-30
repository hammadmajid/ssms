USE DigitalBulletinBoard;

CREATE TABLE Categories (
    category_id INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100) UNIQUE NOT NULL,
    description NVARCHAR(255) NULL,
    created_at DATETIME DEFAULT GETDATE()
);
