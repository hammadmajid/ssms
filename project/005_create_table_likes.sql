USE DigitalBulletinBoard;

CREATE TABLE Likes (
    like_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT NOT NULL,
    announcement_id INT NOT NULL,
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (announcement_id) REFERENCES Announcements(announcement_id) ON DELETE NO ACTION,
    CONSTRAINT UQ_User_Announcement_Like UNIQUE (user_id, announcement_id)
);
