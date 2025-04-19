CREATE DATABASE DatabaseFinal
USE DatabaseFinal
DROP DATABASE DatabaseFinal


CREATE TABLE Users(
    username VARCHAR(100) PRIMARY KEY,
    PasswordHash VARCHAR(255) NOT NULL,
    Role VARCHAR(20) NOT NULL,
    ProfileImage VARBINARY(MAX) DEFAULT NULL
)
CREATE TABLE Learner (
                         LearnerID INT PRIMARY KEY,
                         first_name VARCHAR(100),
                         last_name VARCHAR(100),
                         gender BIT,
                         birth_date DATETIME,
                         country VARCHAR(100),
                         cultural_background VARCHAR(100),
                         username VARCHAR(100) NOT NULL UNIQUE,
                         FOREIGN KEY (username) REFERENCES Users(username) ON DELETE CASCADE
);
-- Step 1: Drop the existing LearnerID column
ALTER TABLE Learner DROP COLUMN LearnerID;

-- Step 2: Add LearnerID as an `IDENTITY` column
ALTER TABLE Learner ADD LearnerID INT IDENTITY(1,1) PRIMARY KEY;


CREATE TABLE Skills (
                        LearnerID INT,
                        skill VARCHAR(100),
                        PRIMARY KEY (LearnerID, skill),
                        FOREIGN KEY (LearnerID) REFERENCES Learner(LearnerID)
                            ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE LearningPreference (
                                    LearnerID INT,
                                    preference VARCHAR(100),
                                    PRIMARY KEY (LearnerID, preference),
                                    FOREIGN KEY (LearnerID) REFERENCES Learner(LearnerID)
                                        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE PersonalizationProfiles (
                                         LearnerID INT,
                                         ProfileID INT ,
                                         Preferred_content_type VARCHAR(100),
                                         emotional_state VARCHAR(100),
                                         personality_type VARCHAR(100),
                                         PRIMARY KEY (LearnerID, ProfileID),
                                         FOREIGN KEY (LearnerID) REFERENCES Learner(LearnerID)
                                             ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE HealthCondition (
                                 LearnerID INT,
                                 ProfileID INT,
                                 condition VARCHAR(100),
                                 PRIMARY KEY (LearnerID, ProfileID, condition),
                                 FOREIGN KEY (LearnerID, ProfileID) REFERENCES PersonalizationProfiles(LearnerID, ProfileID)
                                     ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Course (
                        CourseID INT PRIMARY KEY,
                        Title VARCHAR(100),
                        learning_objective VARCHAR(255),
                        credit_points INT,
                        difficulty_level VARCHAR(50),
                        description TEXT
);

CREATE TABLE CoursePrerequisite (    
                                    CourseID INT,
                                    Prereq INT,
                                    PRIMARY KEY (CourseID, Prereq),
                                    FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
                                        ON UPDATE CASCADE ON DELETE CASCADE,

);

CREATE TABLE Modules (
                         ModuleID INT,
                         CourseID INT,
                         Title VARCHAR(100),
                         difficulty VARCHAR(50),
                         contentURL TEXT,
                         PRIMARY KEY (ModuleID, CourseID),
                         FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
                             ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Target_traits (
                               ModuleID INT,
                               CourseID INT,
                               Trait VARCHAR(100),
                               PRIMARY KEY (ModuleID, CourseID, Trait),
                               FOREIGN KEY (ModuleID, CourseID) REFERENCES Modules(ModuleID, CourseID)
                                   ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE ModuleContent (
                               ModuleID INT,
                               CourseID INT,
                               content_type VARCHAR(100),
                               PRIMARY KEY (ModuleID, CourseID, content_type),
                               FOREIGN KEY (ModuleID, CourseID) REFERENCES Modules(ModuleID, CourseID)
                                   ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE ContentLibrary (
                                ID INT PRIMARY KEY,
                                ModuleID INT,
                                CourseID INT,
                                Title VARCHAR(100),
                                description TEXT,
                                metadata TEXT,
                                type VARCHAR(50),
                                content_URL TEXT,
                                FOREIGN KEY (ModuleID, CourseID) REFERENCES Modules(ModuleID, CourseID)
                                    ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Assessments (
                             ID INT PRIMARY KEY,
                             ModuleID INT,
                             CourseID INT,
                             type VARCHAR(100),
                             total_marks INT,
                             passing_marks INT,
                             criteria TEXT,
                             weightage DECIMAL(5, 2),
                             description TEXT,
                             title VARCHAR(100),
                             FOREIGN KEY (ModuleID, CourseID) REFERENCES Modules(ModuleID, CourseID)
                                 ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE TakenAssessment (
                                 AssessmentID INT,
                                 LearnerID INT,
                                 scoredPoint INT,
                                 PRIMARY KEY (AssessmentID, LearnerID),
                                 FOREIGN KEY (LearnerID) REFERENCES Learner(LearnerID)
                                     ON UPDATE CASCADE ON DELETE CASCADE,
                                 FOREIGN KEY (AssessmentID) REFERENCES Assessments(ID)
                                     ON UPDATE CASCADE ON DELETE CASCADE
);
CREATE TABLE Learning_activities (
                                     ActivityID INT IDENTITY PRIMARY KEY,
                                     ModuleID INT,
                                     CourseID INT,
                                     activity_type VARCHAR(100),
                                     instruction_details TEXT,
                                     Max_points INT,
                                     FOREIGN KEY (ModuleID, CourseID) REFERENCES Modules(ModuleID, CourseID)
                                         ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE Interaction_log ( 
                                 LogID INT PRIMARY KEY,
                                 activity_ID INT,
                                 LearnerID INT,
                                 Duration INT,
                                 Timestamp DATETIME,
                                 action_type VARCHAR(100),
                                 FOREIGN KEY (activity_ID) REFERENCES Learning_activities(ActivityID)
                                     ON UPDATE CASCADE ON DELETE CASCADE,
                                 FOREIGN KEY (LearnerID) REFERENCES Learner(LearnerID)
                                     ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Emotional_feedback (
                                    FeedbackID INT PRIMARY KEY,
                                    LearnerID INT,
                                    activityID INT,
                                    timestamp DATETIME,
                                    emotional_state VARCHAR(100),
                                    FOREIGN KEY (LearnerID) REFERENCES Learner(LearnerID)
                                        ON UPDATE CASCADE ON DELETE CASCADE,
                                    FOREIGN KEY (activityID) REFERENCES Learning_activities(ActivityID)
                                        ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Learning_path (
                               pathID INT IDENTITY PRIMARY KEY,
                               LearnerID INT,
                               ProfileID INT,
                               completion_status VARCHAR(100),
                               custom_content TEXT,
                               adaptive_rules TEXT,
                               FOREIGN KEY (LearnerID, ProfileID) REFERENCES PersonalizationProfiles(LearnerID, ProfileID)
                                   ON UPDATE CASCADE ON DELETE CASCADE
);

    CREATE TABLE Instructor (
                                InstructorID INT PRIMARY KEY,
                                name VARCHAR(100),
                                latest_qualification VARCHAR(100),
                                expertise_area VARCHAR(100),
                                email VARCHAR(100),
                                 username VARCHAR(100) NOT NULL UNIQUE,
                         FOREIGN KEY (username) REFERENCES Users(username) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Pathreview (
                            InstructorID INT,
                            PathID INT,
                            review TEXT,
                            PRIMARY KEY (InstructorID, PathID),
                            FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
                                ON UPDATE CASCADE ON DELETE CASCADE,
                            FOREIGN KEY (PathID) REFERENCES Learning_path(pathID)
                                   --ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE Emotionalfeedback_review (
                                          FeedbackID INT,
                                          InstructorID INT,
                                          review TEXT,
                                          PRIMARY KEY (FeedbackID, InstructorID),
                                          FOREIGN KEY (FeedbackID) REFERENCES Emotional_feedback(FeedbackID)
                                              ON UPDATE CASCADE ON DELETE CASCADE,
                                          FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
                                              --ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Course_enrollment (
                                   EnrollmentID INT PRIMARY KEY,
                                   CourseID INT,
                                   LearnerID INT,
                                   completion_date DATE,
                                   enrollment_date DATE,
                                   status VARCHAR(100),
                                   FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
                                       ON UPDATE CASCADE ON DELETE CASCADE,
                                   FOREIGN KEY (LearnerID) REFERENCES Learner(LearnerID)
                                       ON UPDATE CASCADE ON DELETE CASCADE
);






CREATE TABLE Teaches (
                         InstructorID INT,
                         CourseID INT,
                         PRIMARY KEY (InstructorID, CourseID),
                         FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
                             ON UPDATE CASCADE ON DELETE CASCADE,
                         FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
                             ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Leaderboard (
                             BoardID INT PRIMARY KEY,
                             season VARCHAR(100)
);

CREATE TABLE Ranking (
                         BoardID INT,
                         LearnerID INT,
                         CourseID INT,
                         rank INT,
                         total_points INT,
                         PRIMARY KEY (BoardID, LearnerID, CourseID),
                         FOREIGN KEY (BoardID) REFERENCES Leaderboard(BoardID)
                             ON UPDATE CASCADE ON DELETE CASCADE,
                         FOREIGN KEY (LearnerID) REFERENCES Learner(LearnerID)
                             ON UPDATE CASCADE ON DELETE CASCADE,
                         FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
                             ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Learning_goal (
                               ID INT PRIMARY KEY,
                               status VARCHAR(100),
                               deadline DATE,
                               description TEXT
);

CREATE TABLE LearnersGoals (
                               GoalID INT,
                               LearnerID INT,
                               PRIMARY KEY (GoalID, LearnerID),
                               FOREIGN KEY (GoalID) REFERENCES Learning_goal(ID)
                                   ON UPDATE CASCADE ON DELETE CASCADE,
                               FOREIGN KEY (LearnerID) REFERENCES Learner(LearnerID)
                                   ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Survey (
                        ID INT PRIMARY KEY,
                        Title VARCHAR(100)
);

CREATE TABLE SurveyQuestions (
                                 SurveyID INT,
                                 Question VARCHAR(255),
                                 PRIMARY KEY (SurveyID, Question),
                                 FOREIGN KEY (SurveyID) REFERENCES Survey(ID)
                                     ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE FilledSurvey (
                              SurveyID INT,
                              Question VARCHAR(255),
                              LearnerID INT,
                              Answer TEXT,
                              PRIMARY KEY (SurveyID, Question, LearnerID),
                              FOREIGN KEY (SurveyID, Question) REFERENCES SurveyQuestions(SurveyID, Question)
                                  ON UPDATE CASCADE ON DELETE CASCADE,
                              FOREIGN KEY (LearnerID) REFERENCES Learner(LearnerID)
                                  ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Notification (
                              ID INT PRIMARY KEY,
                              timestamp DATETIME,
                              message TEXT,
                              urgency_level VARCHAR(50),
                              ReadStatus BIT
);

CREATE TABLE ReceivedNotification (
                                      NotificationID INT,
                                      LearnerID INT,
                                      PRIMARY KEY (NotificationID, LearnerID),
                                      FOREIGN KEY (NotificationID) REFERENCES Notification(ID)
                                          ON UPDATE CASCADE ON DELETE CASCADE,
                                      FOREIGN KEY (LearnerID) REFERENCES Learner(LearnerID)
                                          ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Badge (
                       BadgeID INT PRIMARY KEY,
                       title VARCHAR(100),
                       description TEXT,
                       criteria TEXT,
                       points INT
);

CREATE TABLE SkillProgression ( 
                                  ID INT PRIMARY KEY,
                                  proficiency_level VARCHAR(50),
                                  LearnerID INT,
                                  skill_name VARCHAR(100),
                                  timestamp DATETIME,
                                  FOREIGN KEY (LearnerID , skill_name) REFERENCES Skills(LearnerID , skill)
                                      ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Achievement (
                             AchievementID INT IDENTITY PRIMARY KEY,
                             LearnerID INT,
                             BadgeID INT,
                             description TEXT,
                             date_earned DATE,
                             type VARCHAR(50),
                             FOREIGN KEY (LearnerID) REFERENCES Learner(LearnerID)
                                 ON UPDATE CASCADE ON DELETE CASCADE,
                             FOREIGN KEY (BadgeID) REFERENCES Badge(BadgeID)
                                 ON UPDATE CASCADE ON DELETE CASCADE
);


CREATE TABLE Reward (
                        RewardID INT PRIMARY KEY,
                        value DECIMAL(10, 2),
                        description TEXT,
                        type VARCHAR(100)
);

CREATE TABLE Quest (
                       QuestID INT IDENTITY PRIMARY KEY,
                       difficulty_level VARCHAR(50),
                       criteria TEXT,
                       description TEXT,
                       title VARCHAR(100)
);




CREATE TABLE Skill_Mastery (
                               QuestID INT,
                               skill VARCHAR(100),
                               PRIMARY KEY (QuestID, skill),
                               FOREIGN KEY (QuestID) REFERENCES Quest(QuestID)
                                   ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Collaborative (
                               QuestID INT PRIMARY KEY,
                               deadline DATE,
                               max_num_participants INT,
                               FOREIGN KEY (QuestID) REFERENCES Quest(QuestID)
                                   ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE LearnersCollaboration (
                                       LearnerID INT,
                                       QuestID INT,
                                       completion_
                                       VARCHAR(50),
                                       PRIMARY KEY (LearnerID, QuestID),
                                       FOREIGN KEY (LearnerID) REFERENCES Learner(LearnerID)
                                           ON UPDATE CASCADE ON DELETE CASCADE,
                                       FOREIGN KEY (QuestID) REFERENCES Collaborative(QuestID)
                                           ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE LearnersMastery (  
                                 LearnerID INT,
                                 QuestID INT,
                                 skill VARCHAR(100),
                                 completion_status VARCHAR(50),
                                 PRIMARY KEY (LearnerID, QuestID),
                                 FOREIGN KEY (LearnerID) REFERENCES Learner(LearnerID)
                                     ON UPDATE CASCADE ON DELETE CASCADE,
                                 FOREIGN KEY (QuestID,skill) REFERENCES Skill_Mastery(QuestID , skill)
                                     ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE Discussion_forum (
                                  forumID INT IDENTITY PRIMARY KEY,
                                  ModuleID INT,
                                  CourseID INT,
                                  title VARCHAR(100),
                                  last_active DATETIME,
                                  timestamp DATETIME,
                                  description TEXT,
                                  FOREIGN KEY (ModuleID, CourseID) REFERENCES Modules(ModuleID, CourseID)
                                      ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE LearnerDiscussion (
                                   ForumID INT,
                                   LearnerID INT,
                                   Post TEXT,
                                   time DATETIME,
                                   PRIMARY KEY (ForumID, LearnerID),
                                   FOREIGN KEY (ForumID) REFERENCES Discussion_forum(forumID)
                                       ON UPDATE CASCADE ON DELETE CASCADE,
                                   FOREIGN KEY (LearnerID) REFERENCES Learner(LearnerID)
                                       ON UPDATE CASCADE ON DELETE CASCADE
);



CREATE TABLE QuestReward (
                             RewardID INT,
                             QuestID INT,
                             LearnerID INT,
                             Time_earned DATETIME,
                             PRIMARY KEY (RewardID, QuestID, LearnerID),
                             FOREIGN KEY (RewardID) REFERENCES Reward(RewardID)
                                 ON UPDATE CASCADE ON DELETE CASCADE,
                             FOREIGN KEY (QuestID) REFERENCES Quest(QuestID)
                                 ON UPDATE CASCADE ON DELETE CASCADE,
                             FOREIGN KEY (LearnerID) REFERENCES Learner(LearnerID)
                                 ON UPDATE CASCADE ON DELETE CASCADE
);



ALTER TABLE Course_enrollment
ALTER COLUMN completion_date datetime;
select * from Course_enrollment

ALTER TABLE Course_enrollment
ALTER COLUMN enrollment_date datetime;
select * from Course_enrollment


ALTER TABLE Quest
ALTER COLUMN criteria varchar(50);

DROP DATABASE DatabaseFinal

-- criteria TEXT


