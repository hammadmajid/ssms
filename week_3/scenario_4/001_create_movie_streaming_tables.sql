-- Movie Streaming Service
-- A streaming platform has movies and TV shows. Movies have actors, directors, and
-- genres. Users subscribe to plans (basic, premium, family). Users can watch
-- movies and give ratings/reviews. The system tracks watch history, favorite
-- lists, and parental controls for family accounts.

USE MovieStreamingDB;

CREATE TABLE Plans (
    PlanID INT PRIMARY KEY IDENTITY(1,1),
    PlanName NVARCHAR(50) NOT NULL,
    MonthlyFee DECIMAL(8,2) NOT NULL
);

CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    UserName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL UNIQUE,
    IsFamilyAccount BIT NOT NULL DEFAULT 0,
    PlanID INT NOT NULL,
    FOREIGN KEY (PlanID) REFERENCES Plans(PlanID)
);

CREATE TABLE Genres (
    GenreID INT PRIMARY KEY IDENTITY(1,1),
    GenreName NVARCHAR(50) NOT NULL
);

CREATE TABLE Directors (
    DirectorID INT PRIMARY KEY IDENTITY(1,1),
    DirectorName NVARCHAR(100) NOT NULL
);

CREATE TABLE Actors (
    ActorID INT PRIMARY KEY IDENTITY(1,1),
    ActorName NVARCHAR(100) NOT NULL
);

CREATE TABLE Movies (
    MovieID INT PRIMARY KEY IDENTITY(1,1),
    Title NVARCHAR(200) NOT NULL,
    ReleaseYear INT NOT NULL,
    GenreID INT NOT NULL,
    DirectorID INT NOT NULL,
    FOREIGN KEY (GenreID) REFERENCES Genres(GenreID),
    FOREIGN KEY (DirectorID) REFERENCES Directors(DirectorID)
);

CREATE TABLE MovieActors (
    MovieID INT NOT NULL,
    ActorID INT NOT NULL,
    PRIMARY KEY (MovieID, ActorID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    FOREIGN KEY (ActorID) REFERENCES Actors(ActorID)
);

CREATE TABLE WatchHistory (
    HistoryID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT NOT NULL,
    MovieID INT NOT NULL,
    WatchDate DATETIME NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);

CREATE TABLE Ratings (
    RatingID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT NOT NULL,
    MovieID INT NOT NULL,
    Rating INT CHECK (Rating BETWEEN 1 AND 5),
    Review NVARCHAR(500),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);

CREATE TABLE Favorites (
    FavoriteID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT NOT NULL,
    MovieID INT NOT NULL,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID)
);

CREATE TABLE ParentalControls (
    ControlID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT NOT NULL,
    MaxAllowedRating INT CHECK (MaxAllowedRating BETWEEN 1 AND 5),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);
