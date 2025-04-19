﻿/*Learner INSERT*/
CREATE DATABASE DatabaseFinal 
Use DatabaseFinal
INSERT INTO Learner (LearnerID, first_name, last_name, gender, birth_date, country, cultural_background) 
VALUES (1, 'John', 'Doe', 1, '1995-05-15', 'USA', 'Western');
INSERT INTO Learner (LearnerID, first_name, last_name, gender, birth_date, country, cultural_background) 
VALUES (2, 'Jane', 'Smith', 0, '1997-08-22', 'UK', NULL);
INSERT INTO Learner (LearnerID, first_name, last_name, gender, birth_date, country, cultural_background) 
VALUES (3, 'Ali', 'Khan', 1, '1900-01-01', 'Pakistan', 'Eastern');
INSERT INTO Learner (LearnerID, first_name, last_name, gender, birth_date, country, cultural_background) 
VALUES (4, 'AlexandriusMaximilianus', 'Longlastname', 1, '2001-03-12', 'Germany', 'Western');
INSERT INTO Learner (LearnerID, first_name, last_name, gender, birth_date, country, cultural_background) 
VALUES (5, 'Carlos', 'Gomez', 1, '1999-11-30', 'Mexico', 'Hispanic');
INSERT INTO Learner (LearnerID, first_name, last_name, gender, birth_date, country, cultural_background) 
VALUES (6, 'Nina', 'Brown', 0, '2000-06-25', NULL, 'Western');
INSERT INTO Learner (LearnerID, first_name, last_name, gender, birth_date, country, cultural_background) 
VALUES (7, 'Fatima', 'Ali', 0, '1993-10-18', 'Pakistan', 'Eastern');
INSERT INTO Learner (LearnerID, first_name, last_name, gender, birth_date, country, cultural_background) 
VALUES (8, 'Lucas', 'Wang', 1, '2010-02-14', 'China', 'Eastern');

/*Skills INSERT*/
INSERT INTO Skills (LearnerID, skill) VALUES (1, 'Python');
INSERT INTO Skills (LearnerID, skill) VALUES (1, 'Data Analysis');
INSERT INTO Skills (LearnerID, skill) VALUES (2, 'Java');
INSERT INTO Skills (LearnerID, skill) VALUES (2, 'Spring Framework');
INSERT INTO Skills (LearnerID, skill) VALUES (3, 'Python');
INSERT INTO Skills (LearnerID, skill) VALUES (4, 'Python');
INSERT INTO Skills (LearnerID, skill) VALUES (5, 'Machine Learning with TensorFlow and Keras');
INSERT INTO Skills (LearnerID, skill) VALUES (6, 'SQL');



/*LearningPreference INSERT*/
INSERT INTO LearningPreference (LearnerID, preference) VALUES (1, 'Visual Learning');
INSERT INTO LearningPreference (LearnerID, preference) VALUES (1, 'Interactive Exercises');
INSERT INTO LearningPreference (LearnerID, preference) VALUES (2, 'Reading Material');
INSERT INTO LearningPreference (LearnerID, preference) VALUES (2, 'Video Tutorials');
INSERT INTO LearningPreference (LearnerID, preference) VALUES (3, 'Project-Based Learning with Simulations');
INSERT INTO LearningPreference (LearnerID, preference) VALUES (4, 'Video Tutorials');
INSERT INTO LearningPreference (LearnerID, preference) VALUES (5, 'Video Tutorials');
INSERT INTO LearningPreference (LearnerID, preference) VALUES (6, 'Group Discussions');



/*PersonalizationProfiles INSERTS*/
INSERT INTO PersonalizationProfiles (LearnerID, ProfileID, Preferred_content_type, emotional_state, personality_type) 
VALUES (1, 101, 'Video', 'Happy', 'Extrovert');
INSERT INTO PersonalizationProfiles (LearnerID, ProfileID, Preferred_content_type, emotional_state, personality_type) 
VALUES (1, 102, 'Interactive', 'Focused', 'Analytical');
INSERT INTO PersonalizationProfiles (LearnerID, ProfileID, Preferred_content_type, emotional_state, personality_type) 
VALUES (2, 201, 'Text', 'Calm', 'Introvert');
INSERT INTO PersonalizationProfiles (LearnerID, ProfileID, Preferred_content_type, emotional_state, personality_type) 
VALUES (3, 301, 'Audio', 'Motivated', 'Ambivert');
INSERT INTO PersonalizationProfiles (LearnerID, ProfileID, Preferred_content_type, emotional_state, personality_type) 
VALUES (4, 401, 'Immersive Simulations and Virtual Reality', 'Excited', 'Creative');
INSERT INTO PersonalizationProfiles (LearnerID, ProfileID, Preferred_content_type, emotional_state, personality_type) 
VALUES (5, 501, 'Quiz', 'Happy', 'Practical');
INSERT INTO PersonalizationProfiles (LearnerID, ProfileID, Preferred_content_type, emotional_state, personality_type) 
VALUES (6, 601, 'Discussion Forum', NULL, 'Collaborative');
INSERT INTO PersonalizationProfiles (LearnerID, ProfileID, Preferred_content_type, emotional_state, personality_type) 
VALUES (7, 701, 'Case Study', 'Focused', 'Detail-Oriented');



/*HealthCondition INSERTS*/

INSERT INTO HealthCondition (LearnerID, ProfileID, condition) VALUES (1, 101, 'Visual Impairment');
INSERT INTO HealthCondition (LearnerID, ProfileID, condition) VALUES (1, 101, 'Hearing Impairment');
INSERT INTO HealthCondition (LearnerID, ProfileID, condition) VALUES (2, 201, 'Diabetes');
INSERT INTO HealthCondition (LearnerID, ProfileID, condition) VALUES (2, 201, 'Hypertension');
INSERT INTO HealthCondition (LearnerID, ProfileID, condition) VALUES (3, 301, 'Asthma');
INSERT INTO HealthCondition (LearnerID, ProfileID, condition) VALUES (4, 401, 'Asthma');
INSERT INTO HealthCondition (LearnerID, ProfileID, condition) VALUES (5, 501, 'Chronic Obstructive Pulmonary Disease');
INSERT INTO HealthCondition (LearnerID, ProfileID, condition) VALUES (7, 701, 'Epilepsy');

/*Course INSERT*/
INSERT INTO Course (CourseID, Title, learning_objective, credit_points, difficulty_level, description)
VALUES (1, 'Introduction to Programming', 'Learn basic programming concepts.', 3, 'Beginner', 'This course covers fundamental concepts of programming including variables, loops, and conditionals.');

INSERT INTO Course (CourseID, Title, learning_objective, credit_points, difficulty_level, description)
VALUES (2, 'Data Structures', 'Understand data organization and manipulation.', 4, 'Intermediate', 'Topics include arrays, stacks, queues, linked lists, trees, and graphs.');

INSERT INTO Course (CourseID, Title, learning_objective, credit_points, difficulty_level, description)
VALUES (3, 'Machine Learning', 'Learn the basics of machine learning algorithms.', 5, 'Advanced', 'Covers supervised and unsupervised learning, regression, classification, and clustering.');

INSERT INTO Course (CourseID, Title, learning_objective, credit_points, difficulty_level, description)
VALUES (4, 'Creative Writing', 'Develop storytelling and writing skills.', 3, 'Beginner', 'Explore techniques for crafting compelling stories and narratives.');

INSERT INTO Course (CourseID, Title, learning_objective, credit_points, difficulty_level, description)
VALUES (5, 'Excel for Beginners', 'Learn essential Excel functions.', 1, 'Beginner', 'Covers spreadsheet basics, formatting, and simple formulas.');

INSERT INTO Course (CourseID, Title, learning_objective, credit_points, difficulty_level, description)
VALUES (6, 'Cybersecurity Fundamentals', 'Understand the basics of cybersecurity.', 3, 'Intermediate', 'Learn about network security, threat assessment, and risk management.');

INSERT INTO Course (CourseID, Title, learning_objective, credit_points, difficulty_level, description)
VALUES (7, 'Environmental Science', 'Understand environmental processes and challenges.', 4, 'Intermediate', 'Covers ecosystems, sustainability, and human impacts on the environment.');


INSERT INTO Course (CourseID, Title, learning_objective, credit_points, difficulty_level, description)
VALUES (8, 'Research Methodologies', 'Master research techniques and methodologies.', 3, 'Advanced', 'Learn qualitative and quantitative research methods and how to analyze data.');



/*CoursePrerequisite Inserts*/
INSERT INTO CoursePrerequisite (CourseID, Prereq) VALUES (2, 1); 
INSERT INTO CoursePrerequisite (CourseID, Prereq) VALUES (3, 2); 
INSERT INTO CoursePrerequisite (CourseID, Prereq) VALUES (6, 2); 
INSERT INTO CoursePrerequisite (CourseID, Prereq) VALUES (8, 3); 
INSERT INTO CoursePrerequisite (CourseID, Prereq) VALUES (7, 4); 
INSERT INTO CoursePrerequisite (CourseID, Prereq) VALUES (7, 5); 
INSERT INTO CoursePrerequisite (CourseID, Prereq) VALUES (8, 7); 




/*Modules INSERTS*/
INSERT INTO Modules (ModuleID, CourseID, Title, difficulty, contentURL) 
VALUES 
(1, 1, 'Introduction to Variables and Data Types', 'Beginner', 'https://example.com/programming/variables'),
(2, 1, 'Control Structures: Loops and Conditionals', 'Beginner', 'https://example.com/programming/loops'),
(3, 2, 'Arrays and Linked Lists', 'Intermediate', 'https://example.com/data-structures/arrays'),
(4, 2, 'Stacks and Queues', 'Intermediate', 'https://example.com/data-structures/stacks'),
(5, 3, 'Supervised Learning: Regression and Classification', 'Advanced', 'https://example.com/ml/supervised'),
(6, 3, 'Unsupervised Learning and Clustering', 'Advanced', 'https://example.com/ml/unsupervised'),
(7, 4, 'Writing Compelling Characters', 'Beginner', 'https://example.com/writing/characters'),
(8, 4, 'Crafting a Story Arc', 'Beginner', 'https://example.com/writing/story-arc')



SELECT * FROM Target_traits



INSERT INTO Target_traits (ModuleID, CourseID, Trait) 
VALUES 

(1,1 ,'Logical Thinking'),
(2,1 , 'Logical Thinking'),	
(3, 2, 'Data Organization'),
(4, 2, 'Statistical Thinking'),
(5, 3, 'Pattern Recognition'),
(6, 3, 'Critical Thinking'),
(7, 4, 'Empathy'),
(8, 4, 'Storytelling')



SELECT * FROM ModuleContent

/*ModuleContent insert*/
INSERT INTO ModuleContent (ModuleID, CourseID, content_type)
VALUES (1, 1, 'Video');

INSERT INTO ModuleContent (ModuleID, CourseID, content_type)
VALUES (2, 1, 'Quiz');

INSERT INTO ModuleContent (ModuleID, CourseID, content_type)
VALUES (3, 2, 'Document');

INSERT INTO ModuleContent (ModuleID, CourseID, content_type)
VALUES (4, 2, 'Assignment');

INSERT INTO ModuleContent (ModuleID, CourseID, content_type)
VALUES (5, 3, 'Discussion Forum');

INSERT INTO ModuleContent (ModuleID, CourseID, content_type)
VALUES (6, 3, 'Interactive Simulation');

INSERT INTO ModuleContent (ModuleID, CourseID, content_type)
VALUES (7, 4, 'Reading Material');



/*COntentLibrary INSERTS*/
INSERT INTO ContentLibrary (ID, ModuleID, CourseID, Title, description, metadata, type, content_URL)
VALUES (1, 1, 1, 'Introduction to Python', 'A video introducing the basics of Python programming.', 'duration: 10min, language: English', 'Video', 'https://example.com/python_intro');

INSERT INTO ContentLibrary (ID, ModuleID, CourseID, Title, description, metadata, type, content_URL)
VALUES (2, 2, 1, 'Python Quiz - Basics', 'A quiz to test your understanding of Python basics.', 'questions: 10, difficulty: easy', 'Quiz', 'https://example.com/python_quiz');

INSERT INTO ContentLibrary (ID, ModuleID, CourseID, Title, description, metadata, type, content_URL)
VALUES (3, 3, 2, 'Python Documentation', 'Comprehensive documentation for Python.', 'format: PDF, pages: 120', 'Document', 'https://example.com/python_docs');

INSERT INTO ContentLibrary (ID, ModuleID, CourseID, Title, description, metadata, type, content_URL)
VALUES (4, 4, 2, 'Assignment 1: Python Basics', 'An assignment focusing on Python fundamentals.', 'deadline: 2024-12-15, points: 100', 'Assignment', 'https://example.com/python_assignment');

INSERT INTO ContentLibrary (ID, ModuleID, CourseID, Title, description, metadata, type, content_URL)
VALUES (5, 5, 3, 'Discussion: Python Use Cases', 'A forum to discuss real-world applications of Python.', 'posts: unlimited, moderated: yes', 'Discussion Forum', 'https://example.com/python_discussion');

INSERT INTO ContentLibrary (ID, ModuleID, CourseID, Title, description, metadata, type, content_URL)
VALUES (6, 6, 3, 'Interactive Python Simulator', 'A tool for practicing Python coding interactively.', 'features: live feedback, examples: 50', 'Interactive Simulation', 'https://example.com/python_simulator');

INSERT INTO ContentLibrary (ID, ModuleID, CourseID, Title, description, metadata, type, content_URL)
VALUES (7, 7, 4, 'Advanced Python Reading', 'In-depth materials on advanced Python topics.', 'length: 30 pages, difficulty: advanced', 'Reading Material', 'https://example.com/advanced_python');




/*Assessments INSERT*/
INSERT INTO Assessments (ID, ModuleID, CourseID, type, total_marks, passing_marks, criteria, weightage, description, title)
VALUES (1, 1, 1, 'Video Quiz', 10, 6, 'Watch the video and answer all questions.', 15.00, 'Quiz based on the introductory video.', 'Introduction Video Quiz');

INSERT INTO Assessments (ID, ModuleID, CourseID, type, total_marks, passing_marks, criteria, weightage, description, title)
VALUES (2, 2, 1, 'Python Basics Quiz', 20, 12, 'Answer multiple-choice questions based on Python basics.', 25.00, 'Assessment covering fundamental concepts in Python.', 'Python Basics Quiz');

INSERT INTO Assessments (ID, ModuleID, CourseID, type, total_marks, passing_marks, criteria, weightage, description, title)
VALUES (3, 3, 2, 'Document Summary Test', 15, 9, 'Summarize the key points from the document.', 20.00, 'Assessment of comprehension from the document provided.', 'Document Comprehension Test');

INSERT INTO Assessments (ID, ModuleID, CourseID, type, total_marks, passing_marks, criteria, weightage, description, title)
VALUES (4, 4, 2, 'Assignment Evaluation', 50, 30, 'Complete the assignment and follow the submission guidelines.', 30.00, 'Assignment focusing on Python syntax and problem-solving.', 'Python Assignment');

INSERT INTO Assessments (ID, ModuleID, CourseID, type, total_marks, passing_marks, criteria, weightage, description, title)
VALUES (5, 5, 3, 'Discussion Contribution', 10, 5, 'Participate in discussions and contribute meaningful insights.', 10.00, 'Evaluation of participation and insight in forum discussions.', 'Discussion Forum Assessment');

INSERT INTO Assessments (ID, ModuleID, CourseID, type, total_marks, passing_marks, criteria, weightage, description, title)
VALUES (6, 6, 3, 'Interactive Simulation Assessment', 25, 15, 'Complete interactive tasks in the simulation.', 20.00, 'Assessment of practical application through simulation.', 'Simulation Completion Test');

INSERT INTO Assessments (ID, ModuleID, CourseID, type, total_marks, passing_marks, criteria, weightage, description, title)
VALUES (7, 7, 4, 'Reading Comprehension Test', 30, 18, 'Answer questions based on the reading material.', 25.00, 'Assessment of understanding and analysis from reading.', 'Advanced Reading Test');



/*TakenAssessment Inserts*/
INSERT INTO TakenAssessment (AssessmentID, LearnerID, scoredPoint)
VALUES (1, 1, 8);

INSERT INTO TakenAssessment (AssessmentID, LearnerID, scoredPoint)
VALUES (2, 2, 15);

INSERT INTO TakenAssessment (AssessmentID, LearnerID, scoredPoint)
VALUES (3, 3, 12);

INSERT INTO TakenAssessment (AssessmentID, LearnerID, scoredPoint)
VALUES (4, 4, 40);

INSERT INTO TakenAssessment (AssessmentID, LearnerID, scoredPoint)
VALUES (5, 5, 7);

INSERT INTO TakenAssessment (AssessmentID, LearnerID, scoredPoint)
VALUES (6, 6, 20);

INSERT INTO TakenAssessment (AssessmentID, LearnerID, scoredPoint)
VALUES (7, 7, 25);


/*Learning_activities*/
SELECT * FROM Learning_activities
INSERT INTO Learning_activities ( ModuleID, CourseID, activity_type, instruction_details, Max_points)
VALUES ( 1, 1, 'Video', 'Watch the introductory video and take notes.', 10);

INSERT INTO Learning_activities ( ModuleID, CourseID, activity_type, instruction_details, Max_points)
VALUES ( 2, 1, 'Quiz', 'Complete the quiz on Python basics.', 20);

INSERT INTO Learning_activities ( ModuleID, CourseID, activity_type, instruction_details, Max_points)
VALUES  (3, 2, 'Discussion', 'Participate in the discussion forum and share your insights.', 15);

INSERT INTO Learning_activities ( ModuleID, CourseID, activity_type, instruction_details, Max_points)
VALUES ( 3, 2, 'Document Review', 'Read the document provided and summarize key points.', 25);

--INSERT INTO Learning_activities ( ModuleID, CourseID, activity_type, instruction_details, Max_points)
--VALUES ( 4, 3, 'Video', 'Watch the advanced topic video and answer follow-up questions.', 30);

INSERT INTO Learning_activities ( ModuleID, CourseID, activity_type, instruction_details, Max_points)
VALUES (5, 3, 'Assignment', 'Complete the coding assignment and submit for review.', 50);

--INSERT INTO Learning_activities ( ModuleID, CourseID, activity_type, instruction_details, Max_points)
--VALUES (6, 4, 'Simulation', 'Complete the interactive Python coding simulation.', 40);

INSERT INTO Learning_activities (ModuleID, CourseID, activity_type, instruction_details, Max_points)
VALUES (7, 4, 'Reading', 'Read the provided material and answer comprehension questions.', 20);



/*Interaction_log */
INSERT INTO Interaction_log (LogID, LearnerID, Duration, Timestamp, action_type)
VALUES (1, 1, 30, '2024-11-25 10:00:00', 'Viewed Content');

INSERT INTO Interaction_log (LogID, LearnerID, Duration, Timestamp, action_type)
VALUES (2, 2, 45, '2024-11-25 11:00:00', 'Completed Quiz');

INSERT INTO Interaction_log (LogID, LearnerID, Duration, Timestamp, action_type)
VALUES (3, 3, 60, '2024-11-25 12:30:00', 'Participated in Discussion');

INSERT INTO Interaction_log (LogID, LearnerID, Duration, Timestamp, action_type)
VALUES (4, 4, 15, '2024-11-25 13:00:00', 'Downloaded Document');

INSERT INTO Interaction_log (LogID, LearnerID, Duration, Timestamp, action_type)
VALUES (5, 5, 120, '2024-11-25 14:00:00', 'Watched Video');

INSERT INTO Interaction_log (LogID, LearnerID, Duration, Timestamp, action_type)
VALUES (6, 6, 90, '2024-11-25 15:30:00', 'Completed Assignment');

INSERT INTO Interaction_log (LogID, LearnerID, Duration, Timestamp, action_type)
VALUES (7, 7, 20, '2024-11-25 16:00:00', 'Uploaded File');

INSERT INTO Interaction_log (LogID, LearnerID, Duration, Timestamp, action_type)
VALUES (8, 8, 10, '2024-11-25 16:30:00', 'Accessed Simulation');




/*Emotional_feedback */
INSERT INTO Emotional_feedback (FeedbackID, LearnerID, timestamp, emotional_state)
VALUES (1, 1, '2024-11-25 10:15:00', 'Excited');

INSERT INTO Emotional_feedback (FeedbackID, LearnerID, timestamp, emotional_state)
VALUES (2, 2, '2024-11-25 11:05:00', 'Confident');

INSERT INTO Emotional_feedback (FeedbackID, LearnerID, timestamp, emotional_state)
VALUES (3, 3, '2024-11-25 12:30:00', 'Curious');

INSERT INTO Emotional_feedback (FeedbackID, LearnerID, timestamp, emotional_state)
VALUES (4, 4, '2024-11-25 13:20:00', 'Frustrated');

INSERT INTO Emotional_feedback (FeedbackID, LearnerID, timestamp, emotional_state)
VALUES (5, 5, '2024-11-25 14:00:00', 'Focused');

INSERT INTO Emotional_feedback (FeedbackID, LearnerID, timestamp, emotional_state)
VALUES (6, 6, '2024-11-25 15:00:00', 'Motivated');

INSERT INTO Emotional_feedback (FeedbackID, LearnerID, timestamp, emotional_state)
VALUES (7, 7, '2024-11-25 16:30:00', 'Stressed');

INSERT INTO Emotional_feedback (FeedbackID, LearnerID, timestamp, emotional_state)
VALUES (8, 8, '2024-11-25 17:00:00', 'Happy');




/*Learning_path*/
INSERT INTO Learning_path ( LearnerID, ProfileID, completion_status, custom_content, adaptive_rules)
VALUES ( 1, 101, 'In Progress', 'Focus on Python basics and quizzes.', 'If score < 50%, repeat module.');

INSERT INTO Learning_path ( LearnerID, ProfileID, completion_status, custom_content, adaptive_rules)
VALUES (2, 201, 'Completed', 'Advanced Python topics and interactive assignments.', 'If assignment late, send reminder.');

INSERT INTO Learning_path ( LearnerID, ProfileID, completion_status, custom_content, adaptive_rules)
VALUES ( 3, 301, 'Not Started', 'Beginner-level Python and videos.', 'Require completion of introduction module.');

INSERT INTO Learning_path ( LearnerID, ProfileID, completion_status, custom_content, adaptive_rules)
VALUES ( 4, 401, 'In Progress', 'Practice-focused exercises and simulations.', 'If struggle detected, suggest help.');

INSERT INTO Learning_path ( LearnerID, ProfileID, completion_status, custom_content, adaptive_rules)
VALUES ( 5, 501, 'Completed', 'Quiz reviews and additional coding challenges.', 'Offer advanced module access.');

INSERT INTO Learning_path ( LearnerID, ProfileID, completion_status, custom_content, adaptive_rules)
VALUES ( 6, 601, 'In Progress', 'Interactive content and reading materials.', 'Reduce content difficulty if low scores.');

INSERT INTO Learning_path ( LearnerID, ProfileID, completion_status, custom_content, adaptive_rules)
VALUES (7, 701, 'In Progress', 'Focus on discussions and collaborative activities.', 'Encourage participation with rewards.');



SELECT * FROM Learning_path
/*Instructor*/
INSERT INTO Instructor (InstructorID, name, latest_qualification, expertise_area, email)
VALUES (1, 'Dr. Sarah Johnson', 'Ph.D. in Computer Science', 'Machine Learning', 'sarah.johnson@example.com');

INSERT INTO Instructor (InstructorID, name, latest_qualification, expertise_area, email)
VALUES (2, 'Prof. Michael Lee', 'M.Sc. in Software Engineering', 'Web Development', 'michael.lee@example.com');

INSERT INTO Instructor (InstructorID, name, latest_qualification, expertise_area, email)
VALUES (3, 'Dr. Emily Davis', 'Ph.D. in Data Science', 'Data Analysis', 'emily.davis@example.com');

INSERT INTO Instructor (InstructorID, name, latest_qualification, expertise_area, email)
VALUES (4, 'Dr. James Smith', 'Ph.D. in AI', 'Artificial Intelligence', 'james.smith@example.com');

INSERT INTO Instructor (InstructorID, name, latest_qualification, expertise_area, email)
VALUES (5, 'Dr. Anna Brown', 'Ph.D. in Cybersecurity', 'Cybersecurity', 'anna.brown@example.com');

/*Pathreview*/
INSERT INTO Pathreview (InstructorID, PathID, review)
VALUES (1, 1, 'The learning path is well-structured, with clear objectives.');

INSERT INTO Pathreview (InstructorID, PathID, review)
VALUES (2, 2, 'The advanced modules are challenging but effective.');

INSERT INTO Pathreview (InstructorID, PathID, review)
VALUES (3, 3, 'The beginner-level content is excellent for new learners.');

INSERT INTO Pathreview (InstructorID, PathID, review)
VALUES (4, 4, 'Simulations and practice exercises are engaging.');

INSERT INTO Pathreview (InstructorID, PathID, review)
VALUES (5, 5, 'The quizzes and assessments align well with the objectives.');

INSERT INTO Pathreview (InstructorID, PathID, review)
VALUES (1, 6, 'Interactive content fosters active learning.');

INSERT INTO Pathreview (InstructorID, PathID, review)
VALUES (2, 7, 'Collaborative activities help learners build teamwork skills.');

INSERT INTO Pathreview (InstructorID, PathID, review)
VALUES (3, 8, 'Custom content on advanced programming is comprehensive.');


/*Emotionalfeedback_review*/
INSERT INTO Emotionalfeedback_review (FeedbackID, InstructorID, review)
VALUES (1, 1, 'The learner appears to be engaged and excited about the content.');

INSERT INTO Emotionalfeedback_review (FeedbackID, InstructorID, review)
VALUES (2, 2, 'The confidence expressed aligns well with the performance.');

INSERT INTO Emotionalfeedback_review (FeedbackID, InstructorID, review)
VALUES (3, 3, 'Curiosity indicates a strong interest in the topic.');

INSERT INTO Emotionalfeedback_review (FeedbackID, InstructorID, review)
VALUES (4, 4, 'Frustration might suggest a need for additional support.');

INSERT INTO Emotionalfeedback_review (FeedbackID, InstructorID, review)
VALUES (5, 5, 'The focus shown is a good sign of engagement.');

INSERT INTO Emotionalfeedback_review (FeedbackID, InstructorID, review)
VALUES (6, 1, 'Motivation aligns with the learner’s progress.');

INSERT INTO Emotionalfeedback_review (FeedbackID, InstructorID, review)
VALUES (7, 2, 'Stress could be reduced with some relaxation techniques.');

INSERT INTO Emotionalfeedback_review (FeedbackID, InstructorID, review)
VALUES (8, 3, 'Happiness reflects satisfaction with the content.');



/*Course_enrollment*/
INSERT INTO Course_enrollment (EnrollmentID, CourseID, LearnerID, completion_date, enrollment_date, status)
VALUES (1, 1, 1, '2024-11-30', '2024-11-01', 'Completed');

INSERT INTO Course_enrollment (EnrollmentID, CourseID, LearnerID, completion_date, enrollment_date, status)
VALUES (2, 2, 2, NULL, '2024-11-10', 'In Progress');

INSERT INTO Course_enrollment (EnrollmentID, CourseID, LearnerID, completion_date, enrollment_date, status)
VALUES (3, 3, 3, NULL, '2024-11-15', 'In Progress');

INSERT INTO Course_enrollment (EnrollmentID, CourseID, LearnerID, completion_date, enrollment_date, status)
VALUES (4, 4, 4, NULL, '2024-11-20', 'Not Started');

INSERT INTO Course_enrollment (EnrollmentID, CourseID, LearnerID, completion_date, enrollment_date, status)
VALUES (5, 5, 5, NULL, '2024-11-25', 'Not Started');

INSERT INTO Course_enrollment (EnrollmentID, CourseID, LearnerID, completion_date, enrollment_date, status)
VALUES (6, 6, 6, '2024-12-05', '2024-11-01', 'Completed');

INSERT INTO Course_enrollment (EnrollmentID, CourseID, LearnerID, completion_date, enrollment_date, status)
VALUES (7, 7, 7, NULL, '2024-11-18', 'In Progress');

INSERT INTO Course_enrollment (EnrollmentID, CourseID, LearnerID, completion_date, enrollment_date, status)
VALUES (8, 8, 8, NULL, '2024-11-22', 'Not Started');
INSERT INTO Course_enrollment (EnrollmentID, CourseID, LearnerID, completion_date, enrollment_date, status)
VALUES (9, 1, 2, '2024-11-30', '2024-11-01', 'Completed');
INSERT INTO Course_enrollment (EnrollmentID, CourseID, LearnerID, completion_date, enrollment_date, status)
VALUES (10, 2, 1, '2024-11-30', '2024-11-01', 'Completed');



/*teaches*/
INSERT INTO Teaches (InstructorID, CourseID)
VALUES (1, 1);
--SELECT * FROM TEACHES

INSERT INTO Teaches (InstructorID, CourseID)
VALUES (2, 2);

INSERT INTO Teaches (InstructorID, CourseID)
VALUES (3, 3);

INSERT INTO Teaches (InstructorID, CourseID)
VALUES (4, 4);

INSERT INTO Teaches (InstructorID, CourseID)
VALUES (5, 5);

INSERT INTO Teaches (InstructorID, CourseID)
VALUES (1, 6);

INSERT INTO Teaches (InstructorID, CourseID)
VALUES (2, 7);

INSERT INTO Teaches (InstructorID, CourseID)
VALUES (3, 8);

INSERT INTO Teaches (InstructorID, CourseID)
VALUES (3, 6);
INSERT INTO Teaches (InstructorID, CourseID)
VALUES (3, 5);






--LeaderBoard
INSERT INTO Leaderboard (BoardID, season)
VALUES (1, 'Spring 2024');

INSERT INTO Leaderboard (BoardID, season)
VALUES (2, 'Summer 2024');

INSERT INTO Leaderboard (BoardID, season)
VALUES (3, 'Fall 2024');

INSERT INTO Leaderboard (BoardID, season)
VALUES (4, 'Winter 2024');

--Ranking
INSERT INTO Ranking (BoardID, LearnerID, CourseID, rank, total_points)
VALUES (1, 1, 1, 1, 500);
INSERT INTO Ranking (BoardID, LearnerID, CourseID, rank, total_points)
VALUES (2, 1, 2, 3, 500);

INSERT INTO Ranking (BoardID, LearnerID, CourseID, rank, total_points)
VALUES (1, 2, 2, 2, 450);

INSERT INTO Ranking (BoardID, LearnerID, CourseID, rank, total_points)
VALUES (2, 3, 3, 1, 480);

INSERT INTO Ranking (BoardID, LearnerID, CourseID, rank, total_points)
VALUES (2, 4, 4, 2, 420);

INSERT INTO Ranking (BoardID, LearnerID, CourseID, rank, total_points)
VALUES (3, 5, 5, 1, 460);

INSERT INTO Ranking (BoardID, LearnerID, CourseID, rank, total_points)
VALUES (3, 6, 6, 2, 430);

INSERT INTO Ranking (BoardID, LearnerID, CourseID, rank, total_points)
VALUES (4, 7, 7, 1, 470);

INSERT INTO Ranking (BoardID, LearnerID, CourseID, rank, total_points)
VALUES (4, 8, 8, 2, 440);


--Learning_goal
INSERT INTO Learning_goal (ID, status, deadline, description)
VALUES (1, 'In Progress', '2024-12-31', 'Complete the Python Basics course.');

INSERT INTO Learning_goal (ID, status, deadline, description)
VALUES (2, 'Completed', '2024-11-15', 'Master the advanced Python concepts.');

INSERT INTO Learning_goal (ID, status, deadline, description)
VALUES (3, 'In Progress', '2025-01-31', 'Participate in all discussion forums.');

INSERT INTO Learning_goal (ID, status, deadline, description)
VALUES (4, 'Not Started', '2024-12-01', 'Submit all assignments for the course.');

INSERT INTO Learning_goal (ID, status, deadline, description)
VALUES (5, 'Completed', '2024-11-01', 'Score at least 90% on all quizzes.');

INSERT INTO Learning_goal (ID, status, deadline, description)
VALUES (6, 'In Progress', '2025-02-28', 'Complete the interactive simulations.');

INSERT INTO Learning_goal (ID, status, deadline, description)
VALUES (7, 'In Progress', '2024-12-15', 'Read and summarize all assigned documents.');

INSERT INTO Learning_goal (ID, status, deadline, description)
VALUES (8, 'Not Started', '2025-03-15', 'Achieve top 3 ranking in the leaderboard.');

SELECT * FROM LearnersGoals
--LearnersGoals
INSERT INTO LearnersGoals (GoalID, LearnerID)
VALUES (1, 1);

INSERT INTO LearnersGoals (GoalID, LearnerID)
VALUES (2, 2);

INSERT INTO LearnersGoals (GoalID, LearnerID)
VALUES (3, 3);

INSERT INTO LearnersGoals (GoalID, LearnerID)
VALUES (4, 4);

INSERT INTO LearnersGoals (GoalID, LearnerID)
VALUES (5, 5);

INSERT INTO LearnersGoals (GoalID, LearnerID)
VALUES (6, 6);

INSERT INTO LearnersGoals (GoalID, LearnerID)
VALUES (7, 7);

INSERT INTO LearnersGoals (GoalID, LearnerID)
VALUES (8, 8);



--Survey
INSERT INTO Survey (ID, Title)
VALUES (1, 'Course Feedback Survey');

INSERT INTO Survey (ID, Title)
VALUES (2, 'Learning Path Evaluation');

INSERT INTO Survey (ID, Title)
VALUES (3, 'Instructor Effectiveness Survey');

INSERT INTO Survey (ID, Title)
VALUES (4, 'Platform Usability Survey');


--SurveyQuestions
INSERT INTO SurveyQuestions (SurveyID, Question)
VALUES (1, 'How satisfied are you with the course content?');

INSERT INTO SurveyQuestions (SurveyID, Question)
VALUES (1, 'How would you rate the assessments provided?');

INSERT INTO SurveyQuestions (SurveyID, Question)
VALUES (2, 'Was the learning path personalized effectively?');

INSERT INTO SurveyQuestions (SurveyID, Question)
VALUES (2, 'Did the adaptive rules help improve your learning?');

INSERT INTO SurveyQuestions (SurveyID, Question)
VALUES (3, 'How knowledgeable was the instructor?');

INSERT INTO SurveyQuestions (SurveyID, Question)
VALUES (3, 'How effective was the instructor’s communication?');

INSERT INTO SurveyQuestions (SurveyID, Question)
VALUES (4, 'Was the platform easy to navigate?');

INSERT INTO SurveyQuestions (SurveyID, Question)
VALUES (4, 'What features of the platform could be improved?');



--FilledSurvey
INSERT INTO FilledSurvey (SurveyID, Question, LearnerID, Answer)
VALUES (1, 'How satisfied are you with the course content?', 1, 'Very satisfied.');

INSERT INTO FilledSurvey (SurveyID, Question, LearnerID, Answer)
VALUES (1, 'How would you rate the assessments provided?', 2, 'Excellent.');

INSERT INTO FilledSurvey (SurveyID, Question, LearnerID, Answer)
VALUES (2, 'Was the learning path personalized effectively?', 3, 'Yes, it was well-tailored.');

INSERT INTO FilledSurvey (SurveyID, Question, LearnerID, Answer)
VALUES (2, 'Did the adaptive rules help improve your learning?', 4, 'Yes, they were very helpful.');

INSERT INTO FilledSurvey (SurveyID, Question, LearnerID, Answer)
VALUES (3, 'How knowledgeable was the instructor?', 5, 'Very knowledgeable.');

INSERT INTO FilledSurvey (SurveyID, Question, LearnerID, Answer)
VALUES (3, 'How effective was the instructor’s communication?', 6, 'Highly effective.');

INSERT INTO FilledSurvey (SurveyID, Question, LearnerID, Answer)
VALUES (4, 'Was the platform easy to navigate?', 7, 'Yes, very intuitive.');

INSERT INTO FilledSurvey (SurveyID, Question, LearnerID, Answer)
VALUES (4, 'What features of the platform could be improved?', 8, 'The search function could be better.');


--Notification
INSERT INTO Notification (ID, timestamp, message, urgency_level, ReadStatus)
VALUES (1, '2024-11-25 10:00:00', 'Your course enrollment is confirmed.', 'Low', 0);

INSERT INTO Notification (ID, timestamp, message, urgency_level, ReadStatus)
VALUES (2, '2024-11-25 11:00:00', 'You have a new survey to complete.', 'Medium', 0);

INSERT INTO Notification (ID, timestamp, message, urgency_level, ReadStatus)
VALUES (3, '2024-11-25 12:00:00', 'Your assignment deadline is tomorrow.', 'High', 0);

INSERT INTO Notification (ID, timestamp, message, urgency_level, ReadStatus)
VALUES (4, '2024-11-25 13:00:00', 'Your course feedback has been submitted.', 'Low', 1);

INSERT INTO Notification (ID, timestamp, message, urgency_level, ReadStatus)
VALUES (5, '2024-11-25 14:00:00', 'A new course module is available.', 'Medium', 0);

INSERT INTO Notification (ID, timestamp, message, urgency_level, ReadStatus)
VALUES (6, '2024-11-25 15:00:00', 'You have been ranked #1 on the leaderboard.', 'High', 1);

INSERT INTO Notification (ID, timestamp, message, urgency_level, ReadStatus)
VALUES (7, '2024-11-25 16:00:00', 'Your progress report is now available.', 'Low', 1);

INSERT INTO Notification (ID, timestamp, message, urgency_level, ReadStatus)
VALUES (8, '2024-11-25 17:00:00', 'Please complete your pending surveys.', 'Medium', 0);


--ReceivedNotification
INSERT INTO ReceivedNotification (NotificationID, LearnerID)
VALUES (1, 1);

INSERT INTO ReceivedNotification (NotificationID, LearnerID)
VALUES (2, 2);

INSERT INTO ReceivedNotification (NotificationID, LearnerID)
VALUES (3, 3);

INSERT INTO ReceivedNotification (NotificationID, LearnerID)
VALUES (4, 4);

INSERT INTO ReceivedNotification (NotificationID, LearnerID)
VALUES (5, 5);

INSERT INTO ReceivedNotification (NotificationID, LearnerID)
VALUES (6, 6);

INSERT INTO ReceivedNotification (NotificationID, LearnerID)
VALUES (7, 7);

INSERT INTO ReceivedNotification (NotificationID, LearnerID)
VALUES (8, 8);


--Badge
INSERT INTO Badge (BadgeID, title, description, criteria, points)
VALUES (1, 'Python Pro', 'Awarded for completing the Python Basics course.', 'Complete all modules of Python Basics.', 50);

INSERT INTO Badge (BadgeID, title, description, criteria, points)
VALUES (2, 'Quiz Master', 'Awarded for scoring 90% or above on all quizzes.', 'Score 90%+ on all course quizzes.', 30);

INSERT INTO Badge (BadgeID, title, description, criteria, points)
VALUES (3, 'Discussion Star', 'Awarded for active participation in forums.', 'Participate in 5 or more discussion threads.', 20);

INSERT INTO Badge (BadgeID, title, description, criteria, points)
VALUES (4, 'Assignment Ace', 'Awarded for timely submission of all assignments.', 'Submit all assignments on or before the deadline.', 40);

INSERT INTO Badge (BadgeID, title, description, criteria, points)
VALUES (5, 'Leaderboard Champion', 'Awarded for ranking #1 on the leaderboard.', 'Achieve rank #1 on the leaderboard.', 100);

INSERT INTO Badge (BadgeID, title, description, criteria, points)
VALUES (6, 'Active Learner', 'Awarded for consistent weekly activity.', 'Log in and engage with content every week for a month.', 25);

INSERT INTO Badge (BadgeID, title, description, criteria, points)
VALUES (7, 'Code Breaker', 'Awarded for completing a coding challenge.', 'Finish at least one advanced coding challenge.', 50);

INSERT INTO Badge (BadgeID, title, description, criteria, points)
VALUES (8, 'Knowledge Explorer', 'Awarded for exploring additional reading materials.', 'Read 3+ extra documents or articles.', 20);



--SkillProgression
INSERT INTO SkillProgression (ID, proficiency_level, LearnerID, skill_name, timestamp)
VALUES (1, 'Beginner', 1, 'Python', '2024-11-25 10:00:00');

INSERT INTO SkillProgression (ID, proficiency_level, LearnerID, skill_name, timestamp)
VALUES (2, 'Intermediate', 1, 'Data Analysis', '2024-11-25 11:00:00');

INSERT INTO SkillProgression (ID, proficiency_level, LearnerID, skill_name, timestamp)
VALUES (3, 'Beginner', 2, 'Java', '2024-11-25 12:00:00');

INSERT INTO SkillProgression (ID, proficiency_level, LearnerID, skill_name, timestamp)
VALUES (4, 'Advanced', 2, 'Spring Framework', '2024-11-25 13:00:00');

INSERT INTO SkillProgression (ID, proficiency_level, LearnerID, skill_name, timestamp)
VALUES (5, 'Beginner', 3, 'Python', '2024-11-25 14:00:00');

INSERT INTO SkillProgression (ID, proficiency_level, LearnerID, skill_name, timestamp)
VALUES (6, 'Intermediate', 4, 'Python', '2024-11-25 15:00:00');

INSERT INTO SkillProgression (ID, proficiency_level, LearnerID, skill_name, timestamp)
VALUES (7, 'Advanced', 5, 'Machine Learning with TensorFlow and Keras', '2024-11-25 16:00:00');

INSERT INTO SkillProgression (ID, proficiency_level, LearnerID, skill_name, timestamp)
VALUES (8, 'Beginner', 6, 'SQL', '2024-11-25 17:00:00');



--Achievement
INSERT INTO Achievement (LearnerID, BadgeID, description, date_earned, type)
VALUES (1, 1, 'Completed Python Basics course.', '2024-11-15', 'Course Completion');

INSERT INTO Achievement (LearnerID, BadgeID, description, date_earned, type)
VALUES (2, 2, 'Scored 90% or above in all quizzes.', '2024-11-20', 'Quiz Achievement');

INSERT INTO Achievement (LearnerID, BadgeID, description, date_earned, type)
VALUES (3, 3, 'Actively participated in discussions.', '2024-11-22', 'Participation');

INSERT INTO Achievement (LearnerID, BadgeID, description, date_earned, type)
VALUES (4, 4, 'Submitted all assignments on time.', '2024-11-25', 'Assignment Completion');

INSERT INTO Achievement (LearnerID, BadgeID, description, date_earned, type)
VALUES (5, 5, 'Achieved #1 rank on the leaderboard.', '2024-11-25', 'Leaderboard Achievement');

INSERT INTO Achievement (LearnerID, BadgeID, description, date_earned, type)
VALUES (6, 6, 'Consistent engagement with weekly content.', '2024-11-23', 'Activity');

INSERT INTO Achievement ( LearnerID, BadgeID, description, date_earned, type)
VALUES (7, 7, 'Completed an advanced coding challenge.', '2024-11-21', 'Coding Challenge');

INSERT INTO Achievement ( LearnerID, BadgeID, description, date_earned, type)
VALUES (8, 8, 'Explored additional learning materials.', '2024-11-19', 'Extra Learning');
INSERT INTO Achievement (LearnerID, BadgeID, description, date_earned, type)
VALUES (2, 1, 'Completed Python Basics course.', '2024-11-15', 'Course Completion');


SELECT * FROM Achievement




--Reward
INSERT INTO Reward (RewardID, value, description, type)
VALUES (1, 50.00, 'Gift card for completing the Python Basics course.', 'Gift Card');

INSERT INTO Reward (RewardID, value, description, type)
VALUES (2, 75.00, 'Discount voucher for achieving 90% in all quizzes.', 'Discount');

INSERT INTO Reward (RewardID, value, description, type)
VALUES (3, 100.00, 'Cash reward for ranking #1 on the leaderboard.', 'Cash');

INSERT INTO Reward (RewardID, value, description, type)
VALUES (4, 20.00, 'Digital badge for active forum participation.', 'Digital Badge');

INSERT INTO Reward (RewardID, value, description, type)
VALUES (5, 35.00, 'Exclusive eBook for completing all assignments.', 'eBook');

INSERT INTO Reward (RewardID, value, description, type)
VALUES (6, 15.00, 'Coupon for consistent weekly engagement.', 'Coupon');

INSERT INTO Reward (RewardID, value, description, type)
VALUES (7, 50.00, 'Gift card for completing an advanced coding challenge.', 'Gift Card');

INSERT INTO Reward (RewardID, value, description, type)
VALUES (8, 10.00, 'Certificate of achievement for mastering SQL.', 'Certificate');

SELECT * FROM QUEST
--Quest
INSERT INTO Quest ( difficulty_level, criteria, description, title)
VALUES ( 'Easy', 'Complete the Python Basics module.', 'An introductory quest to learn Python.', 'Python Basics Quest');

INSERT INTO Quest (difficulty_level, criteria, description, title)
VALUES ( 'Medium', 'Score 80%+ on the Data Analysis quiz.', 'Test your skills in data analysis.', 'Data Analysis Challenge');

INSERT INTO Quest ( difficulty_level, criteria, description, title)
VALUES ( 'Hard', 'Complete the advanced Java project.', 'A challenging project to test Java expertise.', 'Java Mastery Quest');

INSERT INTO Quest ( difficulty_level, criteria, description, title)
VALUES ( 'Hard', 'Submit the Spring Framework assignment.', 'Showcase your skills with a Spring Framework project.', 'Spring Framework Quest');

INSERT INTO Quest ( difficulty_level, criteria, description, title)
VALUES ( 'Medium', 'Complete the SQL simulation module.', 'Practice SQL with real-world examples.', 'SQL Simulation Quest');

INSERT INTO Quest ( difficulty_level, criteria, description, title)
VALUES ( 'Easy', 'Participate in 3 discussion forums.', 'Engage in collaborative discussions.', 'Forum Participation Quest');

INSERT INTO Quest ( difficulty_level, criteria, description, title)
VALUES ('Medium', 'Achieve a top 3 rank on the leaderboard.', 'Climb to the top of the leaderboard.', 'Leaderboard Challenge');

INSERT INTO Quest ( difficulty_level, criteria, description, title)
VALUES ( 'Hard', 'Complete a machine learning project using TensorFlow.', 'A complex project to demonstrate machine learning skills.', 'Machine Learning Quest');



--Skill_Mastery
SELECT * FROM Skill_Mastery
INSERT INTO Skill_Mastery (QuestID, skill)
VALUES (1, 'Python');

INSERT INTO Skill_Mastery (QuestID, skill)
VALUES (2, 'Data Analysis');

INSERT INTO Skill_Mastery (QuestID, skill)
VALUES (3, 'Java');

INSERT INTO Skill_Mastery (QuestID, skill)
VALUES (4, 'Spring Framework');

INSERT INTO Skill_Mastery (QuestID, skill)
VALUES (5, 'SQL');

INSERT INTO Skill_Mastery (QuestID, skill)
VALUES (6, 'Collaboration');

INSERT INTO Skill_Mastery (QuestID, skill)
VALUES (7, 'Competitiveness');

INSERT INTO Skill_Mastery (QuestID, skill)
VALUES (8, 'Machine Learning with TensorFlow and Keras');
SELECT * FROM Skill_Mastery

SELECT * FROM Collaborative
--Collaborative
INSERT INTO Collaborative (QuestID, deadline, max_num_participants)
VALUES (1, '2024-12-15', 10);

INSERT INTO Collaborative (QuestID, deadline, max_num_participants)
VALUES (2, '2024-12-20', 5);

INSERT INTO Collaborative (QuestID, deadline, max_num_participants)
VALUES (3, '2025-01-10', 3);

INSERT INTO Collaborative (QuestID, deadline, max_num_participants)
VALUES (4, '2024-12-25', 7);

INSERT INTO Collaborative (QuestID, deadline, max_num_participants)
VALUES (5, '2024-12-30', 8);

INSERT INTO Collaborative (QuestID, deadline, max_num_participants)
VALUES (6, '2025-01-05', 15);

INSERT INTO Collaborative (QuestID, deadline, max_num_participants)
VALUES (7, '2025-01-15', 12);

INSERT INTO Collaborative (QuestID, deadline, max_num_participants)
VALUES (8, '2025-01-20', 4);


SELECT * FROM LearnersCollaboration
--LearnersCollaboration
INSERT INTO LearnersCollaboration (LearnerID, QuestID, completion_)
VALUES (1, 1, 'In Progress');

INSERT INTO LearnersCollaboration (LearnerID, QuestID, completion_)
VALUES (2, 2, 'Completed');

INSERT INTO LearnersCollaboration (LearnerID, QuestID, completion_)
VALUES (3, 3, 'Not Started');

INSERT INTO LearnersCollaboration (LearnerID, QuestID, completion_)
VALUES (4, 4, 'Completed');

INSERT INTO LearnersCollaboration (LearnerID, QuestID, completion_)
VALUES (5, 5, 'In Progress');

INSERT INTO LearnersCollaboration (LearnerID, QuestID, completion_)
VALUES (6, 6, 'Not Started');

INSERT INTO LearnersCollaboration (LearnerID, QuestID, completion_)
VALUES (7, 7, 'Completed');

INSERT INTO LearnersCollaboration (LearnerID, QuestID, completion_)
VALUES (8, 8, 'In Progress');


SELECT * FROM LearnersMastery
--LearnersMastery
INSERT INTO LearnersMastery (LearnerID, QuestID, skill, completion_status)
VALUES (1, 1, 'Python', 'Completed');

INSERT INTO LearnersMastery (LearnerID, QuestID, skill, completion_status)
VALUES (2, 2, 'Data Analysis', 'Completed');

INSERT INTO LearnersMastery (LearnerID, QuestID, skill, completion_status)
VALUES (3, 3, 'Java', 'In Progress');

INSERT INTO LearnersMastery (LearnerID, QuestID, skill, completion_status)
VALUES (4, 4, 'Spring Framework', 'Not Started');

INSERT INTO LearnersMastery (LearnerID, QuestID, skill, completion_status)
VALUES (5, 5, 'SQL', 'Completed');

INSERT INTO LearnersMastery (LearnerID, QuestID, skill, completion_status)
VALUES (6, 6, 'Collaboration', 'In Progress');

INSERT INTO LearnersMastery (LearnerID, QuestID, skill, completion_status)
VALUES (7, 7, 'Competitiveness', 'Completed');

INSERT INTO LearnersMastery (LearnerID, QuestID, skill, completion_status)
VALUES (8, 8, 'Machine Learning with TensorFlow and Keras', 'Not Started');




--Discussion_forum
INSERT INTO Discussion_forum ( ModuleID, CourseID, title, last_active, timestamp, description)
VALUES ( 1, 1, 'Python Basics Discussion', '2024-11-24 10:00:00', '2024-11-20 09:00:00', 'A forum to discuss Python basics.');

INSERT INTO Discussion_forum ( ModuleID, CourseID, title, last_active, timestamp, description)
VALUES ( 2, 1, 'Data Analysis Challenges', '2024-11-23 11:00:00', '2024-11-21 10:00:00', 'A forum for Data Analysis learners.');

INSERT INTO Discussion_forum ( ModuleID, CourseID, title, last_active, timestamp, description)
VALUES ( 3, 2, 'Advanced Java Techniques', '2024-11-22 12:00:00', '2024-11-22 11:00:00', 'Discussions on advanced Java.');

INSERT INTO Discussion_forum ( ModuleID, CourseID, title, last_active, timestamp, description)
VALUES ( 4, 2, 'Spring Framework Insights', '2024-11-25 13:00:00', '2024-11-23 09:00:00', 'A forum for Spring Framework developers.');

INSERT INTO Discussion_forum ( ModuleID, CourseID, title, last_active, timestamp, description)
VALUES ( 5, 3, 'SQL Best Practices', '2024-11-22 14:00:00', '2024-11-22 10:00:00', 'SQL tips and tricks.');

INSERT INTO Discussion_forum ( ModuleID, CourseID, title, last_active, timestamp, description)
VALUES ( 6, 3, 'Collaboration Techniques', '2024-11-24 15:00:00', '2024-11-23 14:00:00', 'A forum to discuss teamwork strategies.');

INSERT INTO Discussion_forum ( ModuleID, CourseID, title, last_active, timestamp, description)
VALUES ( 7, 4, 'Leadership Skills Forum', '2024-11-25 16:00:00', '2024-11-24 15:00:00', 'Discussions on leadership.');

INSERT INTO Discussion_forum ( ModuleID, CourseID, title, last_active, timestamp, description)
VALUES ( 8, 4, 'Machine Learning Projects', '2024-11-23 17:00:00', '2024-11-22 16:00:00', 'Forum for machine learning projects.');



--LearnerDiscussion
INSERT INTO LearnerDiscussion (ForumID, LearnerID, Post, time)
VALUES (1, 1, 'I found Python basics easy to follow, but loops are tricky.', '2024-11-24 10:15:00');

INSERT INTO LearnerDiscussion (ForumID, LearnerID, Post, time)
VALUES (2, 2, 'Data analysis with Pandas is great. Any tips on visualization?', '2024-11-23 11:30:00');

INSERT INTO LearnerDiscussion (ForumID, LearnerID, Post, time)
VALUES (3, 3, 'I need help understanding Java Streams API.', '2024-11-22 12:20:00');

INSERT INTO LearnerDiscussion (ForumID, LearnerID, Post, time)
VALUES (4, 4, 'What is the best approach to manage Spring dependencies?', '2024-11-25 13:10:00');

INSERT INTO LearnerDiscussion (ForumID, LearnerID, Post, time)
VALUES (5, 5, 'SQL joins are confusing. Can anyone explain them simply?', '2024-11-22 14:30:00');

INSERT INTO LearnerDiscussion (ForumID, LearnerID, Post, time)
VALUES (6, 6, 'Collaboration tools suggestions for team projects?', '2024-11-24 15:20:00');

INSERT INTO LearnerDiscussion (ForumID, LearnerID, Post, time)
VALUES (7, 7, 'What are the essential leadership traits for team management?', '2024-11-25 16:30:00');

INSERT INTO LearnerDiscussion (ForumID, LearnerID, Post, time)
VALUES (8, 8, 'How do I choose the right dataset for my machine learning project?', '2024-11-23 17:10:00');
SELECT * FROM LearnerDiscussion




--QuestReward
INSERT INTO QuestReward (RewardID, QuestID, LearnerID, Time_earned)
VALUES (1, 1, 1, '2024-11-25 10:00:00');

INSERT INTO QuestReward (RewardID, QuestID, LearnerID, Time_earned)
VALUES (2, 2, 2, '2024-11-25 11:30:00');

INSERT INTO QuestReward (RewardID, QuestID, LearnerID, Time_earned)
VALUES (3, 3, 3, '2024-11-25 12:45:00');

INSERT INTO QuestReward (RewardID, QuestID, LearnerID, Time_earned)
VALUES (4, 4, 4, '2024-11-25 14:00:00');

INSERT INTO QuestReward (RewardID, QuestID, LearnerID, Time_earned)
VALUES (5, 5, 5, '2024-11-25 15:15:00');

INSERT INTO QuestReward (RewardID, QuestID, LearnerID, Time_earned)
VALUES (6, 6, 6, '2024-11-25 16:30:00');

INSERT INTO QuestReward (RewardID, QuestID, LearnerID, Time_earned)
VALUES (7, 7, 7, '2024-11-25 17:45:00');

INSERT INTO QuestReward (RewardID, QuestID, LearnerID, Time_earned)
VALUES (8, 8, 8, '2024-11-25 18:00:00');

SELECT * FROM QUESTREWARD



