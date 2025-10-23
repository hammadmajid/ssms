CREATE DATABASE MovieActorDB;

GO

USE MovieActorDB;

CREATE TABLE Movies (
    MovieID INT IDENTITY(1,1) PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    ReleaseYear INT CHECK (ReleaseYear > 1880),
    Genre VARCHAR(50)
);

CREATE TABLE Actors (
    ActorID INT IDENTITY(1,1) PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    BirthDate DATE
);

CREATE TABLE MovieActors (
    MovieID INT NOT NULL,
    ActorID INT NOT NULL,
    PRIMARY KEY (MovieID, ActorID),
    FOREIGN KEY (MovieID) REFERENCES Movies(MovieID),
    FOREIGN KEY (ActorID) REFERENCES Actors(ActorID)
);
