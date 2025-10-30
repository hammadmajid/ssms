USE DigitalBulletinBoard;

CREATE TABLE Comments (
    comment_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT NOT NULL,
    announcement_id INT NOT NULL,
    content NVARCHAR(500) NOT NULL,
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (announcement_id) REFERENCES Announcements(announcement_id) ON DELETE NO ACTION
);
