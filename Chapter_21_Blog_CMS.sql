CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(100) UNIQUE NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL,
    Role ENUM('admin','author','subscriber') NOT NULL,
    RegistrationDate DATETIME DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE Posts (
    PostID INT PRIMARY KEY AUTO_INCREMENT,
    AuthorID INT,
    Title VARCHAR(255) NOT NULL,
    Content TEXT NOT NULL,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    UpdatedAt DATETIME,
    Status ENUM('published','draft','archived') NOT NULL,
    FOREIGN KEY (AuthorID) REFERENCES Users(UserID)
);

CREATE TABLE Comments (
    CommentID INT PRIMARY KEY AUTO_INCREMENT,
    PostID INT,
    UserID INT,
    Content TEXT NOT NULL,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP,
    ParentCommentID INT,
    FOREIGN KEY (PostID) REFERENCES Posts(PostID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    FOREIGN KEY (ParentCommentID) REFERENCES Comments(CommentID)
);