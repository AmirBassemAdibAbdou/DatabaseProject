CREATE TABLE Users(
    username VARCHAR(100) PRIMARY KEY,
    PasswordHash VARCHAR(255) NOT NULL,
    Role VARCHAR(20) NOT NULL,
    ProfileImage VARBINARY(MAX) DEFAULT NULL
)
ALTER TABLE Learner
ADD CONSTRAINT FK_Learner_User
FOREIGN KEY (LearnerID) REFERENCES Users(UserID) ON DELETE CASCADE;


DROP TABLE Users
DROP TABLE Learner
DROP TABLE Instructor

CREATE TABLE Learner (
                         LearnerID INT PRIMARY KEY,
                         first_name VARCHAR(100),
                         last_name VARCHAR(100),
                         gender BIT,
                         birth_date DATETIME,
                         country VARCHAR(100),
                         cultural_background VARCHAR(100),
                         username VARCHAR(100) NOT NULL UNIQUE,
                         FOREIGN KEY (username) REFERENCES Users(username) ON DELETE CASCADE ON UPDATE CASCADE
);
CREATE TABLE Instructor (
                                InstructorID INT PRIMARY KEY,
                                name VARCHAR(100),
                                latest_qualification VARCHAR(100),
                                expertise_area VARCHAR(100),
                                email VARCHAR(100),
                                 username VARCHAR(100) NOT NULL UNIQUE,
                         FOREIGN KEY (username) REFERENCES Users(username) ON DELETE CASCADE ON UPDATE CASCADE
);

USE DatabaseFinal
GO
CREATE PROCEDURE GetUserIfValid
    @Username VARCHAR(100),
    @PasswordHash VARCHAR(255)
AS
BEGIN
    -- Check if the username and password hash exist
    SELECT username, Role, ProfileImage
    FROM Users
    WHERE username = @Username AND PasswordHash = @PasswordHash;
    
    -- If no matching record is found, return NULL
    IF @@ROWCOUNT = 0
    BEGIN
        SELECT NULL AS username, NULL AS Role, NULL AS ProfileImage;
    END
END;
GO

