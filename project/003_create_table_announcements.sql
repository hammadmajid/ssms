USE DigitalBulletinBoard;

CREATE TABLE Announcements (
    announcement_id INT IDENTITY(1,1) PRIMARY KEY,
    title NVARCHAR(200) NOT NULL,
    content NVARCHAR(MAX) NOT NULL,
    created_at DATETIME DEFAULT GETDATE(),
    faculty_id INT NOT NULL,
    category_id INT NULL,
    FOREIGN KEY (faculty_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id) ON DELETE SET NULL
);
