/*1-1          sa7*/





use DatabaseFinal
go
CREATE PROCEDURE ViewInfo 
    @LearnerID INT
AS
BEGIN
    SELECT * 
    FROM Learner
    WHERE LearnerID = @LearnerID;
END;


EXEC ViewInfo @LearnerID = 1


/*1-2    sa7*/
GO
CREATE PROCEDURE LearnerInfo
    @LearnerID INT
AS
BEGIN
    SELECT * 
    FROM PersonalizationProfiles
    WHERE LearnerID = @LearnerID;
END;

EXEC LearnerInfo @LearnerID =1

/*1-3     SA7  Sala7tha*/ --SA7
go
CREATE PROCEDURE EmotionalState
    @LearnerID INT,
    @emotional_state VARCHAR(50) OUTPUT
AS
BEGIN
    SELECT TOP 1 @emotional_state = emotional_state
    FROM Emotional_feedback
    WHERE LearnerID = @LearnerID
    ORDER BY timestamp DESC;
END;

DECLARE @emotionalstate VARCHAR(50)
EXEC EmotionalState @LearnerID = 3,@emotional_state = @emotionalstate OUTPUT
Print @emotionalstate






/*1-4   Sa7*/ 
go
CREATE PROCEDURE LogDetails
    @LearnerID INT
AS
BEGIN
    SELECT * 
    FROM Interaction_log
    WHERE LearnerID = @LearnerID
    ORDER BY Timestamp DESC;
END;

SELECT * FROM Interaction_log WHERE LearnerID = 1
EXEC LogDetails @LearnerID = 1;


/*1-5    SA7*/
go
CREATE PROCEDURE InstructorReview
    @InstructorID INT
AS
BEGIN
    SELECT ef.*
    FROM Emotional_feedback ef
    INNER JOIN Emotionalfeedback_review er ON ef.FeedbackID = er.FeedbackID
    WHERE er.InstructorID = @InstructorID;
END;

EXEC InstructorReview @InstructorID = 1

/*1-6      Sa7*/
go
CREATE PROCEDURE CourseRemove
    @courseID INT
AS
BEGIN
    DELETE FROM Course
    WHERE CourseID = @courseID;
END;

SELECT * FROM Course
EXEC CourseRemove  @courseID = 1 


/*1-7  Sa7*/

go
CREATE PROCEDURE Highestgrade
AS
BEGIN
    SELECT a.*
    FROM Assessments a
    WHERE total_marks = (
        SELECT MAX(total_marks)
        FROM Assessments
        WHERE CourseID = a.CourseID
    );
END;

EXEC Highestgrade



/*1-8     SA7*/ 
go
Create PROCEDURE InstructorCount
AS
BEGIN
    SELECT *
    FROM Course
    WHERE CourseID IN (
        SELECT CourseID
        FROM Teaches
        GROUP BY CourseID
        HAVING COUNT(InstructorID) > 1
    )
END;


EXEC InstructorCount


/*1-9   SA7*/
go
CREATE PROCEDURE ViewNot
    @LearnerID INT
AS
BEGIN
    SELECT n.*
    FROM Notification n
    INNER JOIN ReceivedNotification rn ON n.ID = rn.NotificationID
    WHERE rn.LearnerID = @LearnerID;
END;

EXEC ViewNot @LearnerID = 1


/*1-10 8alat*/ --Lazm insert ziadaaa
--Fel MS me4 bya5od formID bas e7na lazem nedeelo 3shan me4 identity
go
CREATE PROCEDURE CreateDiscussion1
    @ModuleID INT,
    @CourseID INT,
    @Title VARCHAR(50),
    @Description VARCHAR(50)
AS
BEGIN
    INSERT INTO Discussion_forum (ModuleID, CourseID, Title, last_active, timestamp, description)
    VALUES (@ModuleID, @CourseID, @Title, GETDATE(), GETDATE(), @Description);

    PRINT 'Discussion forum created successfully.';
END;

SELECT * FROM Discussion_forum
EXEC CreateDiscussion1 @ModuleID = 1, @CourseID = 1,@Title = 'TestInsertMethod', @Description = 'TestInsertMethod'

/*1-11 sa7*/
go
CREATE PROCEDURE RemoveBadge
    @BadgeID INT
AS
BEGIN
    DELETE FROM Badge
    WHERE BadgeID = @BadgeID;

    PRINT 'Badge removed successfully.';
END;

SELECT * FROM Badge
EXEC RemoveBadge @BadgeID = 1




  /*1-12 SA7*/
  GO 
  CREATE PROC CriteriaDelete
  @criteria varchar(50)
  AS 
  BEGIN
  DELETE FROM QUEST 
  WHERE  CAST(criteria AS VARCHAR(50)) = @criteria
  END;

  EXEC CriteriaDelete @criteria = 'Complete a machine learning project using TensorFlow'
  select * from Quest



/*1-13                    SA7*/ 
GO
CREATE PROC NotificationUpdate
  @LearnerID INT,
  @NotificationID INT,
  @ReadStatus BIT
AS
BEGIN
    IF @ReadStatus = 0
    BEGIN
        UPDATE ReceivedNotification
        SET @ReadStatus = 1
        WHERE LearnerID = @LearnerID AND NotificationID = @NotificationID;
    END
   ELSE
    BEGIN
        DELETE FROM ReceivedNotification
        WHERE LearnerID = @LearnerID AND NotificationID = @NotificationID;
    END
END;

EXEC NotificationUpdate @LearnerID = 1 , @NotificationID = 1 , @ReadStatus = 0;




/*1-14    sa7*/
GO
CREATE PROC EmotionalTrendAnalysis
 @CourseID int, @ModuleID int, @TimePeriod datetime
AS
BEGIN
        SELECT EF.emotional_state
        FROM Emotional_feedback EF
        INNER JOIN Learner L ON L.LearnerID = EF.LearnerID 
        INNER JOIN Course_enrollment CE ON CE.LearnerID = L.LearnerID 
        INNER JOIN Modules M ON M.CourseID = CE.CourseID AND M.CourseID = CE.CourseID
        WHERE CE.enrollment_date > @TimePeriod and CE.completion_date < @TimePeriod and CE.CourseID = @CourseID and M.ModuleID = @ModuleID
END;







/*2-1 sa7*/

GO
CREATE PROC ProfileUpdate 
@learnerID INT, @ProfileID INT , @PreferedContentType varchar(50) , @emotional_state varchar(50) , @PersonalityType varchar(50)
As 
BEGIN
    UPDATE PersonalizationProfiles
    SET
        Preferred_content_type = @PreferedContentType ,
        emotional_state = @emotional_state ,
        personality_type = @PersonalityType
        WHERE 
        LearnerID = @learnerID AND ProfileID = @ProfileID 
END;

EXEC PROFILEUPDATE 1 ,101 , 'NETWORKING' , 'SATISFIED' , 'INTROVERT'

SELECT * FROM PersonalizationProfiles

/*2-2 sa7 el7amdolelah*/ 
GO

CREATE PROC TotalPoints
@learnerID INT , @RewardType varchar(50)
AS 
BEGIN
    SELECT SUM(R.value) AS TotalPoints
    FROM REWARD R
    INNER JOIN QuestReward QR ON R.RewardID = QR.RewardID
    INNER JOIN LEARNER L ON QR.LearnerID = L.LearnerID
    WHERE L.LearnerID = @learnerID AND R.type = @RewardType
END;
EXEC Totalpoints @learnerID = 1, @RewardType = 'Gift Card';

/*2-3 SA7*/
GO

CREATE PROC EnrolledCourses
@LearnerID int
AS 
BEGIN
        SELECT  C.*
        FROM COURSE C 
        INNER JOIN Course_enrollment CE ON C.CourseID = CE.CourseID
        WHERE CE.LearnerID = @LearnerID
END;

EXEC EnrolledCourses @LearnerID = 2;




/*2-4*/ --SA7
GO
CREATE PROCEDURE Prerequisites
    @LearnerID INT,
    @CourseID INT
AS
BEGIN
    DECLARE @PrerequisiteCount INT;
    DECLARE @CompletedPrerequisiteCount INT;

    -- Count how many prerequisites the course has
    SELECT @PrerequisiteCount = COUNT(*)
    FROM CoursePrerequisite
    WHERE CourseID = @CourseID;

    -- Count how many of the prerequisites the learner has completed
    SELECT @CompletedPrerequisiteCount = COUNT(*)
    FROM CoursePrerequisite CP
    JOIN Course_enrollment CE ON CE.CourseID = CP.Prereq
    WHERE CP.CourseID = @CourseID
    AND CE.LearnerID = @LearnerID
    AND CE.status = 'Completed'; 


    IF @PrerequisiteCount = @CompletedPrerequisiteCount
    BEGIN
        PRINT 'All prerequisites are completed.';
    END
    ELSE
    BEGIN
        PRINT 'Not all prerequisites are completed.';
    END
END;


go
EXEC Prerequisites @LearnerID = 2, @CourseID = 2;




/*2-5*/
    


GO 

GO
CREATE PROC Moduletraits
@TargetTrait varchar(50), @courseID int
AS
BEGIN
    SELECT M.Title
    FROM Target_traits T
    INNER JOIN Modules M ON M.ModuleID = T.ModuleID 
    INNER JOIN COURSE C ON T.CourseID = C.CourseID
    WHERE C.CourseID = @courseID AND T.Trait = @TargetTrait AND M.CourseID = C.CourseID
 END




 
/*2-6 sa7*/
GO
CREATE PROC LeaderboardRank 
@LeaderboardID int
AS 
BEGIN
    SELECT l.first_name , l.last_name , R.rank
    FROM Learner l
    INNER JOIN Ranking R ON R.LearnerID = L .LearnerID 
    INNER JOIN Leaderboard LB ON LB.BoardID = R.BoardID
    WHERE LB.BoardID = @LeaderboardID
END
EXEC LeaderboardRank @LeaderboardID = 1;




--SELECT * FROM Emotional_feedback
--SELECT * FROM Learning_activities

/*PROCEDURE 7*/ -- sa7
go
CREATE PROC ActivityEmotionalFeedback
  @FeedBackID int ,@ActivityID int , @LearnerID int, @timestamp Time, @emotionalstate varchar(50)
AS 
BEGIN
    
    INSERT INTO Emotional_feedback(FeedbackID ,activityID , LearnerID , timestamp , emotional_state) VALUES( @FeedBackID , @ActivityID , @LearnerID , @timestamp , @emotionalstate)
    
END;



/*2-8*/

/*PROCEDURE 8*/ -- sa7
--DROP PROCEDURE IF EXISTS JoinQuest
GO
CREATE PROC JoinQuest
@LearnerID int , @QuestID int
AS 
BEGIN
   IF EXISTS (
        SELECT 1
        FROM Collaborative C
        INNER JOIN LearnersCollaboration LC ON C.QuestID = LC.QuestID
        WHERE C.QuestID = @QuestID
        GROUP BY C.QuestID, C.max_num_participants
        HAVING COUNT(LC.QuestID) < C.max_num_participants
        
    )
    BEGIN
        INSERT INTO LearnersCollaboration (LearnerID, QuestID,  completion_)
        VALUES (@LearnerID, @QuestID, 'COMPLETED');
     PRINT 'JOIN SUCCESSFULL'
    END
     ELSE 
     BEGIN
      PRINT 'JOIN FAILED 3ADADDD KEBEEEEEEEER'
      END
  END;
  

  EXEC JoinQuest @LearnerID = 7, @QuestID = 3;
  EXEC JoinQuest @LearnerID = 2, @QuestID = 3;
  EXEC JoinQuest @LearnerID = 2, @QuestID = 3;
  EXEC JoinQuest @LearnerID = 2, @QuestID = 3;
  EXEC JoinQuest @LearnerID = 2, @QuestID = 1;
  EXEC JoinQuest @LearnerID = 2, @QuestID = 1;
  EXEC JoinQuest @LearnerID = 2, @QuestID = 1;

  SELECT * FROM LearnersCollaboration


  





/*2-9 sa7*/
GO
CREATE PROC SkillsProfeciency
@LearnerID INT
AS
BEGIN
SELECT skill_name, proficiency_level
FROM SkillProgression
WHERE LearnerID = @LearnerID;
END;
EXEC SkillsProfeciency @LearnerID = 1;

/*2-10 sa7*/

GO
CREATE PROC Viewscore
@LearnerID INT,
@AssessmentID INT,
@score INT OUTPUT
AS
BEGIN
SELECT @score = scoredPoint
FROM TakenAssessment
WHERE LearnerID = @LearnerID AND AssessmentID = @AssessmentID;
END;

DECLARE @score INT;
EXEC Viewscore @LearnerID = 3, @AssessmentID = 3, @score = @score OUTPUT;
PRINT @score;
 

/*2-11 sa7*/
GO
CREATE PROC AssessmentsList
@CourseID INT,
@ModuleID INT , 
@LearnerID INT
AS
BEGIN
SELECT A.ID AS AssessmentID, A.title, T.scoredPoint AS Grade
FROM Assessments A
         INNER JOIN TakenAssessment T ON A.ID = T.AssessmentID
WHERE A.CourseID = @CourseID AND A.ModuleID = @ModuleID AND T.LearnerID = @LearnerID;
END;
EXEC AssessmentsList @CourseID = 1, @ModuleID = 1 , @LearnerID = 1

/*2-12 sa7*/ 
GO
CREATE PROCEDURE Courseregister
    @LearnerID INT,
    @CourseID INT
AS
BEGIN
    DECLARE @PrerequisiteCount INT;
    DECLARE @CompletedPrerequisiteCount INT;

    -- Count how many prerequisites the course has
    SELECT @PrerequisiteCount = COUNT(*)
    FROM CoursePrerequisite
    WHERE CourseID = @CourseID;

    -- Count how many of the prerequisites the learner has completed
    SELECT @CompletedPrerequisiteCount = COUNT(*)
    FROM CoursePrerequisite CP
    JOIN Course_enrollment CE ON CE.CourseID = CP.Prereq
    WHERE CP.CourseID = @CourseID
    AND CE.LearnerID = @LearnerID
    AND CE.status = 'Completed'; -- Assuming the status column indicates completion

    -- Check if prerequisites are met
    IF @PrerequisiteCount = @CompletedPrerequisiteCount
    BEGIN
        -- Check if the learner is already enrolled in the course
        IF NOT EXISTS (SELECT 1 FROM Course_enrollment WHERE LearnerID = @LearnerID AND CourseID = @CourseID)
        BEGIN
            -- Register the learner
            INSERT INTO Course_enrollment (LearnerID, CourseID, enrollment_date, status)
            VALUES (@LearnerID, @CourseID, GETDATE(), 'Enrolled');

            PRINT 'Registration successful. You are now enrolled in the course.';
        END
        ELSE
        BEGIN
            PRINT 'You are already enrolled in this course.';
        END
    END
    ELSE
    BEGIN
        PRINT 'You have not completed all the prerequisites for this course. Registration denied.';
    END
END;

EXEC CourseRegister @LearnerID = 2 , @CourseID = 2

/*2-13 sa7*/
GO
CREATE PROC Post
@LearnerID INT,
@DiscussionID INT,
@PostContent TEXT
AS
BEGIN
INSERT INTO LearnerDiscussion (ForumID, LearnerID, Post, time)
VALUES (@DiscussionID, @LearnerID, @PostContent, GETDATE());
END;
EXEC Post @LearnerID = 2, @DiscussionID = 4, @PostContent = 'This is my first post on the forum!';


/*2-14 sa7*/
GO
CREATE PROC AddGoal
@LearnerID INT,
@GoalID INT
AS
BEGIN
INSERT INTO LearnersGoals (GoalID, LearnerID)
VALUES (@GoalID, @LearnerID);
END;

EXEC AddGoal @LearnerID = 1, @GoalID = 2;



/*2-15 sa7*/
GO
CREATE PROC CurrentPath
@LearnerID INT
AS
BEGIN
SELECT pathID, completion_status
FROM Learning_path
WHERE LearnerID = @LearnerID;
END;
EXEC CurrentPath @LearnerID = 1;



/*2-16 sa7*/

GO
CREATE PROC QuestMembers
@LearnerID INT
AS
BEGIN
SELECT DISTINCT Q.QuestID, L.LearnerID
FROM Collaborative Q
         INNER JOIN LearnersCollaboration LC ON Q.QuestID = LC.QuestID
         INNER JOIN LearnersCollaboration L ON Q.QuestID = L.QuestID
WHERE LC.LearnerID = @LearnerID AND Q.deadline > GETDATE();
END;
EXEC QuestMembers @LearnerID = 1;


/*2-17 sa7*/
GO
CREATE PROC QuestProgress
@LearnerID INT
AS
BEGIN
SELECT Q.QuestID, Q.title, L.completion_status
FROM Quest Q INNER JOIN LearnersMastery L ON Q.QuestID = L.QuestID
WHERE L.LearnerID = @LearnerID;
END;
EXEC QuestProgress @LearnerID = 1;

/*2-18 sa7*/
GO
CREATE PROC GoalReminder
@LearnerID INT
AS
BEGIN
SELECT CONCAT('Reminder: Your learning goal with ID ', G.ID, ' is past its deadline of ', G.deadline) AS Reminder
FROM Learning_goal G INNER JOIN LearnersGoals LG ON G.ID = LG.GoalID
WHERE LG.LearnerID = @LearnerID AND G.deadline < GETDATE();
END;
EXEC GoalReminder @LearnerID = 1;



/*2-19 sa7*/
GO
CREATE PROC SkillProgressHistory
@LearnerID INT,
@Skill VARCHAR(50)
AS
BEGIN
SELECT proficiency_level, timestamp
FROM SkillProgression
WHERE LearnerID = @LearnerID AND skill_name = @Skill
ORDER BY timestamp ASC;
END;
EXEC SkillProgressHistory @LearnerID = 1, @Skill = 'Data Analysis';

/*2-20   8alat ,m7taga one input bs*/

GO
CREATE PROCEDURE AssessmentAnalysis
    @LearnerID INT
AS
BEGIN
    -- Select the breakdown of assessment scores for the specified learner
    SELECT 
        A.title AS AssessmentTitle,
        M.Title AS ModuleTitle,
        C.Title AS CourseTitle,
        TA.scoredPoint AS Score,
        A.total_marks AS TotalMarks,
        (CAST(TA.scoredPoint AS DECIMAL) / A.total_marks) * 100 AS Percentage,
        A.weightage AS AssessmentWeightage,
        (TA.scoredPoint * A.weightage) / 100 AS WeightedScore
    FROM 
        TakenAssessment TA
    INNER JOIN 
        Assessments A ON TA.AssessmentID = A.ID
    INNER JOIN 
        Modules M ON A.ModuleID = M.ModuleID AND A.CourseID = M.CourseID
    INNER JOIN 
        Course C ON A.CourseID = C.CourseID
    WHERE 
        TA.LearnerID = @LearnerID
    ORDER BY 
        C.Title, M.Title, A.title;
END;

    




/*2-21  s7*/
go
CREATE PROCEDURE LeaderboardFilter
    @LearnerID INT
AS
BEGIN
    SELECT 
        r.BoardID, 
        r.LearnerID, 
        r.CourseID, 
        r.Rank, 
        r.total_points
    FROM 
        Ranking r
    WHERE 
        r.LearnerID = @LearnerID
    ORDER BY 
        r.Rank DESC;
END;
exec LeaderboardFilter @LearnerID = 1

/*3-1  s7*/
go
CREATE PROCEDURE SkillLearners
    @SkillName VARCHAR(50)
AS
BEGIN
    SELECT 
        @SkillName AS SkillName,
        l.LearnerID,
        l.first_name,
        l.last_name
    FROM 
        Learner l
    INNER JOIN Skills s ON l.LearnerID = s.LearnerID
    WHERE 
        s.skill = @SkillName;
END;
exec SkillLearners @SkillName='Python'


/*3-2 8alat, SA7*/
go
CREATE PROCEDURE NewActivity
    @CourseID INT,
    @ModuleID INT,
    @ActivityType VARCHAR(50),
    @InstructionDetails VARCHAR(MAX),
    @MaxPoints INT
AS
BEGIN
    INSERT INTO Learning_Activities (CourseID, ModuleID, activity_type, instruction_details, Max_Points)
    VALUES (@CourseID, @ModuleID, @ActivityType, @InstructionDetails, @MaxPoints);
END;
EXEC NewActivity 
    @CourseID = 1, 
    @ModuleID = 2, 
    @ActivityType = 'Quiz', 
    @InstructionDetails = 'Complete the quiz on Chapter 3', 
    @MaxPoints = 100;
/*3-3 SA7*/
go
CREATE PROCEDURE NewAchievement
    @LearnerID INT,
    @BadgeID INT,
    @Description VARCHAR(MAX),
    @DateEarned DATE,
    @Type VARCHAR(50)
AS
BEGIN
    INSERT INTO Achievement (LearnerID, BadgeID, Description, date_earned, Type)
    VALUES (@LearnerID, @BadgeID, @Description, @DateEarned, @Type);
END;
EXEC NewAchievement 
    @LearnerID = 3, 
    @BadgeID = 3, 
    @Description = 'Completed Advanced Python Module', 
    @DateEarned = '2024-11-29', 
    @Type = 'Course Completion';





/*3-4 s7*/

go
CREATE PROCEDURE LearnerBadge
    @BadgeID INT
AS
BEGIN
    SELECT 
        l.LearnerID, 
        l.first_name, 
        l.last_name
    FROM 
        Learner l
    INNER JOIN Achievement a ON l.LearnerID = a.LearnerID
    WHERE 
        a.BadgeID = @BadgeID;
END;
EXEC LearnerBadge @BadgeID = 1






/*3-5 SA7 */
go
CREATE PROCEDURE NewPath
    @LearnerID INT,
    @ProfileID INT,
    @completion_status VARCHAR(50),
    @custom_content VARCHAR(MAX),
    @adaptiverules VARCHAR(MAX)
AS
BEGIN
    INSERT INTO Learning_path (LearnerID, ProfileID, completion_status, custom_content, adaptive_rules)
    VALUES (@LearnerID, @ProfileID, @completion_status, @custom_content, @adaptiverules);
END;
EXEC NewPath 
    @LearnerID = 1, 
    @ProfileID = 101, 
    @completion_status = 'In Progress', 
    @custom_content = 'Advanced Mathematics Module', 
    @adaptiverules = 'Complete prerequisites before access';



/*3-6 s7*/
go
CREATE PROCEDURE TakenCourses
    @LearnerID INT
AS
BEGIN
    SELECT 
        c.CourseID, 
        c.Title
    FROM 
        Learner l
    INNER JOIN Course_enrollment ce ON l.LearnerID = ce.LearnerID
    INNER JOIN Course c ON ce.CourseID = c.CourseID
    WHERE 
        l.LearnerID = @LearnerID;
END;
EXEC TakenCourses @LearnerID = 1;



/*3-7 SA7*/


GO 
CREATE PROCEDURE CollaborativeQuest
    @difficulty_level VARCHAR(50),
    @criteria VARCHAR(50),
    @description VARCHAR(50),
    @title VARCHAR(50),
    @Maxnumparticipants INT,
    @deadline DATETIME
AS
BEGIN
    -- Declare a variable to store the newly generated QuestID
    DECLARE @NewQuestID INT;

    -- Insert the quest details into the Quest table
    INSERT INTO Quest (difficulty_level, criteria, description, title)
    VALUES (@difficulty_level, @criteria, @description, @title);

    -- Retrieve the ID of the newly inserted quest
    SET @NewQuestID = SCOPE_IDENTITY();

    -- Insert the collaborative details into the Collaborative table
    INSERT INTO Collaborative (QuestID, deadline, max_num_participants)
    VALUES (@NewQuestID, @deadline, @Maxnumparticipants);
END;
EXEC CollaborativeQuest 
    @difficulty_level = 'Intermediate', 
    @criteria = 'Complete all challenges in sequence', 
    @description = 'Team-based problem-solving quest', 
    @title = 'Collaboration Challenge 2024', 
    @Maxnumparticipants = 10, 
    @deadline = '2024-12-31 23:59:59';






/*3-8 s7*/
go
CREATE PROCEDURE DeadlineUpdate
    @QuestID INT,
    @Deadline DATETIME
AS
BEGIN
    UPDATE Collaborative
    SET Deadline = @Deadline
    WHERE QuestID = @QuestID;
END;
EXEC DeadlineUpdate 
    @QuestID = 1, 
    @Deadline = '2024-12-15 23:59:59';




/*3-9 sala7taha */
go
CREATE PROCEDURE GradeUpdate
    @LearnerID INT,
    @AssessmentID INT,
    @points int
AS
BEGIN
    UPDATE TakenAssessment
    SET ScoredPoint = @points
    WHERE LearnerID = @LearnerID AND AssessmentID = @AssessmentID;

    PRINT 'Assessment grade updated successfully.';
END;
EXEC GradeUpdate 
    @LearnerID = 1, 
    @AssessmentID = 1,@points=10;







/*3-10 s7 bs law notification already mawgoda hatala3 error*/
GO
   CREATE PROCEDURE AssessmentNot
    @NotificationID INT,
    @timestamp DATETIME,
    @message VARCHAR(MAX),
    @urgencylevel VARCHAR(50),
    @LearnerID INT
AS
BEGIN
    BEGIN TRY
        -- Insert the notification into the Notification table
        INSERT INTO Notification (ID, timestamp, message, urgency_level, ReadStatus)
        VALUES (@NotificationID, @timestamp, @message, @urgencylevel, 0);

        -- Link the notification to the learner in the ReceivedNotification table
        INSERT INTO ReceivedNotification (NotificationID, LearnerID)
        VALUES (@NotificationID, @LearnerID);

        -- Return confirmation message
        PRINT 'Notification successfully sent to the learner.';
    END TRY
    BEGIN CATCH
        -- Handle any errors that occur
        PRINT 'An error occurred while sending the notification.';
    END CATCH
END;
EXEC AssessmentNot 
    @NotificationID = 9, 
    @timestamp = '2024-11-29 10:00:00', 
    @message = 'Your assessment results are now available.', 
    @urgencylevel = 'High', 
    @LearnerID = 1;


/*3-11 SA7*/
GO  
CREATE PROCEDURE NewGoal
    @GoalID INT,
    @status VARCHAR(MAX),
    @deadline DATETIME,
    @description VARCHAR(MAX)
AS
BEGIN
        INSERT INTO Learning_goal (ID, status, deadline, description)
       VALUES (@GoalID, @status, @deadline, @description);
END;


EXEC NewGoal @GoalID = 9, @status = 'test', @deadline = '2024-11-22 ', @description = 'test_desc';

SELECT * FROM Learning_goal

/*3-12 SA7*/
GO
CREATE PROC LearnersCoutrses
    @CourseID int,
    @InstructorID int
AS
BEGIN
SELECT DISTINCT 
        L.LearnerID,
        L.first_name,
        L.last_name,
        C.CourseID,
        C.Title AS CourseTitle
    FROM 
        Learner L
    INNER JOIN 
        Course_enrollment CE ON L.LearnerID = CE.LearnerID
    INNER JOIN 
        Course C ON CE.CourseID = C.CourseID
    INNER JOIN 
        Teaches T ON T.CourseID = C.CourseID
    WHERE 
        T.InstructorID = @InstructorID 
        AND C.CourseID = @CourseID;
END;

EXEC LearnersCoutrses @CourseID = 1, @InstructorID = 1;
/*3-13 SA7*/
GO
CREATE PROCEDURE LastActive
    @ForumID INT,
    @lastactive DATETIME OUTPUT
AS
BEGIN
    SELECT @lastactive = last_active
    FROM Discussion_forum
    WHERE forumID = @ForumID;
END;


-- Example Execution
DECLARE @lastactive DATETIME;

EXEC LastActive @ForumID = 1, @lastactive = @lastactive OUTPUT;
PRINT @LASTACTIVE


/*3-14 SA7*/

GO
GO
CREATE PROCEDURE CommonEmotiobnalState
    @state VARCHAR(MAX) OUTPUT -- Adjusted to handle multiple states
AS
BEGIN
    WITH EmotionCounts AS (
        SELECT 
            emotional_state,
            COUNT(*) AS occurrence_count
        FROM Emotional_feedback
        GROUP BY emotional_state
    ),
    MaxCount AS (
        SELECT 
            MAX(occurrence_count) AS max_count
        FROM EmotionCounts
    )
    SELECT 
        @state = STRING_AGG(emotional_state, ', ')
    FROM EmotionCounts
    WHERE occurrence_count = (SELECT max_count FROM MaxCount);
END;

DECLARE @commonState VARCHAR(MAX);

EXEC CommonEmotiobnalState @state = @commonState OUTPUT;
PRINT @COMMONSTATE



/*3-15  SA7*/
GO
CREATE PROCEDURE ModuleDifficulty
    @courseID INT
AS
BEGIN
    SELECT 
        ModuleID, Title,difficulty,contentURL
    FROM Modules
    WHERE CourseID = @courseID
    ORDER BY difficulty ASC;
END;
GO


EXEC ModuleDifficulty @courseID = 1;

GO
/*3-16 SA7*/
CREATE PROCEDURE Profeciencylevel
    @LearnerID INT,
    @skill VARCHAR(50) OUTPUT
AS
BEGIN
    -- Get the skill with the highest proficiency level for the learner
    SELECT TOP 1 
        @skill = skill_name
    FROM 
        SkillProgression
    WHERE 
        LearnerID = @LearnerID
    ORDER BY 
        proficiency_level DESC;  -- Assuming proficiency_level is ordered such that highest is first
END;

DECLARE @LearnerID INT = 1;  -- Example learner ID
DECLARE @skill VARCHAR(50);

EXEC Profeciencylevel @LearnerID, @skill OUTPUT;
PRINT @LEARNERID
PRINT @SKILL






/*3-17 SA7*/
GO
CREATE PROCEDURE ProficiencyUpdate
    @Skill VARCHAR(50),
    @LearnerId INT,
    @Level VARCHAR(50)
AS
BEGIN
    UPDATE SkillProgression
    SET proficiency_level = @Level
    WHERE skill_name = @Skill AND LearnerID = @LearnerId;
END;
GO


EXEC ProficiencyUpdate @Skill = 'Python', @LearnerId = 1, @Level = 'Expert';





/*3-18 SA7*/
GO
CREATE PROCEDURE LeastBadge
    @LearnerID INT OUTPUT
AS
BEGIN
    SELECT TOP 1 @LearnerID = LearnerID
    FROM Achievement
    GROUP BY LearnerID
    ORDER BY COUNT(BadgeID) ASC;
END;


-- Example Execution
DECLARE @LeastLearner INT;

EXEC LeastBadge @LearnerID = @LeastLearner OUTPUT;
PRINT @LEASTLEARNER

-- Output the result
SELECT @LeastLearner AS LearnerWithLeastBadges;

SELECT * FROM Achievement
    

SELECT * FROM Achievement

SELECT * FROM Badge;




/*3-19 SA7*/
GO
CREATE PROCEDURE PreferedType
    @type VARCHAR(50) OUTPUT
AS
BEGIN
    SELECT TOP 1 @type = Preferred_content_type
    FROM PersonalizationProfiles
    GROUP BY Preferred_content_type
    ORDER BY COUNT(Preferred_content_type) DESC;
END;

-- Execute the procedure
DECLARE @mostPreferredType VARCHAR(50);

EXEC PreferedType @type = @mostPreferredType OUTPUT;
PRINT @MOSTPREFERREDTYPE







/*3-20 SA7*/
GO
CREATE PROCEDURE AssessmentAnalytics
    @CourseID INT,
    @ModuleID INT
AS
BEGIN
    -- Check if specific ModuleID and CourseID were provided
    IF @ModuleID IS NOT NULL AND @CourseID IS NOT NULL
    BEGIN
        SELECT 
            M.ModuleID,
            M.CourseID,
            A.title AS AssessmentTitle,
            AVG(TA.scoredPoint) AS AverageScore,
            COUNT(TA.LearnerID) AS TotalParticipants
        FROM Assessments A
        INNER JOIN Modules M ON A.ModuleID = M.ModuleID AND A.CourseID = M.CourseID
        INNER JOIN TakenAssessment TA ON A.ID = TA.AssessmentID
        WHERE M.CourseID = @CourseID AND M.ModuleID = @ModuleID
        GROUP BY M.ModuleID, M.CourseID, A.title
        ORDER BY M.ModuleID, A.title
        END
END


-- Example Execution
EXEC AssessmentAnalytics @CourseID = 1, @ModuleID = 1;

-- Verify Output
SELECT * FROM Assessments
SELECT * FROM Interaction_log



/*3-21 SA7*/

GO
CREATE PROCEDURE EmotionalTrendAnalysisIns
    @InstructorID INT,
    @CourseID INT,
    @ModuleID INT,
    @TimePeriod DATETIME
AS
BEGIN
    -- Retrieve emotional feedback trends for the specified course, module, and time period
    SELECT 
        ef.timestamp AS FeedbackDate,
        ef.emotional_state,
        COUNT(ef.LearnerID) AS LearnerCount
    FROM 
        Emotional_feedback ef
    INNER JOIN 
        Learning_activities la ON ef.activityID = la.ActivityID
    INNER JOIN 
        Modules m ON la.ModuleID = m.ModuleID AND la.CourseID = m.CourseID
    INNER JOIN 
        Teaches t ON m.CourseID = t.CourseID
    WHERE 
        t.InstructorID = @InstructorID
        AND m.CourseID = @CourseID
        AND m.ModuleID = @ModuleID
        AND ef.timestamp >= @TimePeriod
    GROUP BY 
        ef.emotional_state, ef.timestamp
    ORDER BY 
        FeedbackDate;
END;


