-- Week 12a answers
-- Save your INSERT, UPDATE, DELETE, and SELECT statements here.

##part 3
#The data editor method is more intuitive and easier to use,
#showing exactly where the data your editing is. However, the SQL method is signficantly faster and more succienct,
#requiring much less code and likely being faster once fully understood

#Part 4 - Select statement to verify both students
#SELECT * FROM Students ORDER BY StudentID;
#INSERT INTO Students (FirstName, LastName, Major) VALUES('Mary', 'Jackson', 'Mathematics'),('Mae', 'Jemison', 'Engineering');

#Part 5 - error message
#ERROR:  duplicate key value violates unique constraint "tutors_email_key"
#Key (email)=(grace@navy.mil) already exists. 
#SQL state: 23505
#Detail: Key (email)=(grace@navy.mil) already exists.

#part 6 - update  major
#SELECT * FROM Students
#WHERE FirstName = 'Katherine' AND LastName = 'Johnson';

#UPDATE Students
#SET Major = 'Applied Mathematics'
#WHERE StudentID = <katherine_id>;

#SELECT * FROM Students
#WHERE FirstName = 'Marie' AND LastName = 'Curie';

#DELETE FROM Students
#WHERE StudentID = <marie_id>;
#SELECT * FROM Students ORDER BY StudentID

#part 7- workshop challenge
#SELECT * FROM Tutors ORDER BY TutorID;
#SELECT * FROM Students ORDER BY StudentID;


#INSERT INTO Subjects (SubjectName)
#VALUES
    #('Database Design'),
    #('Python'),
    #('Calculus');

#SELECT * FROM Subjects ORDER BY SubjectID;


#INSERT INTO TutorSubjects (TutorID, SubjectID)
#VALUES
    #(<tutor_id_1>, <subject_id_1>),
    #(<tutor_id_1>, <subject_id_2>),
    #(<tutor_id_2>, <subject_id_3>);

#SELECT * FROM TutorSubjects ORDER BY TutorID, SubjectID;



#INSERT INTO Appointments (AppointmentDateTime, Location, TutorID, StudentID)
#VALUES
   # ('2026-11-09 14:00-05', 'Library Room 204', <tutor_id_1>, <student_id_1>),
    #('2026-11-10 16:30-05', 'Science Center 110', <tutor_id_2>, <student_id_2>);

#SELECT * FROM Appointments ORDER BY AppointmentID;



#question 1
#SELECT *
#FROM Appointments
#WHERE Location = 'Library Room 204';


#question 2
SELECT * FROM TutorSubjects ORDER BY TutorID;
SELECT SubjectID
FROM TutorSubjects
WHERE TutorID = <tutor_id>;

#question 3
SELECT *
FROM Students
WHERE Major = 'Mathematics';