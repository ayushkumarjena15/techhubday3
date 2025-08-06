-- create database mini_project;
use mini_project;
-- Students Table 

CREATE TABLE Students ( 
    StudentID INT PRIMARY KEY, 
    Name VARCHAR(50), 
    Age INT, 
    Gender VARCHAR(10) 
);
-- Courses Table 

CREATE TABLE Courses ( 
    CourseID INT PRIMARY KEY, 
    CourseName VARCHAR(50), 
    Instructor VARCHAR(50) 
);
CREATE TABLE Enrollments ( 
    EnrollmentID INT PRIMARY KEY, 
    StudentID INT, 
    CourseID INT, 
    Grade INT, 
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID), 
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);
drop table Students;
-- Students 
INSERT INTO Students VALUES 
(1, 'Alice', 20, 'Female'), 
(2, 'Bob', 21, 'Male'), 
(3, 'Charlie', 22, 'Male'), 
(4, 'Diana', 23, 'Female'); 
-- Courses 
INSERT INTO Courses VALUES 
(101, 'Mathematics', 'Dr. Rao'), 
(102, 'Computer Science', 'Dr. Iyer'), 
(103, 'Physics', 'Dr. Gupta'); 
-- Enrollments 
INSERT INTO Enrollments VALUES 
(1, 1, 101, 85), 
(2, 1, 102, 92), 
(3, 2, 101, 78), 
(4, 2, 103, 67), 
(5, 3, 101, 88), 
(6, 3, 102, 91), 
(7, 4, 103, 72), 
(8, 4, 102, 65); 
select * from Students;
select * from Courses;
select * from Enrollments;