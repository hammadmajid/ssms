USE DigitalBulletinBoard;

CREATE TABLE Subscriptions (
    subscription_id INT IDENTITY(1,1) PRIMARY KEY,
    user_id INT NOT NULL,
    category_id INT NOT NULL,
    notify_enabled BIT DEFAULT 1,
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (user_id) REFERENCES Users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id) ON DELETE CASCADE,
    CONSTRAINT UQ_User_Subscription UNIQUE (user_id, category_id)
);
