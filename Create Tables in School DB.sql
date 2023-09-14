use [2022-2023_SchoolYear]

-- Create a table for student details
create table FifthYearStudents (
StudentID tinyint primary key not null identity (1,1),
FirstName nvarchar (20) not null,
LastName nvarchar (30) not null,
Address nvarchar (30),
City nvarchar (20) not null,
County char (2) default 'KE' not null,
Eircode char (8),
Phone char (10) not null,
Email varchar (60),
DOB date
);

set dateformat dmy;

-- Create a table for teacher details
create table Teachers (
TeacherID tinyint primary key not null identity (1,1),
FirstName nvarchar (20) not null,
LastName nvarchar (30) not null,
Address nvarchar (30),
City nvarchar (20) not null,
County char (2) default 'KE' not null,
Eircode char (8),
Phone char (10) not null,
Email varchar (60),
DOB date not null,
HireDate date,
PPSN varchar (9) unique not null
);

set dateformat dmy;

-- Create a table for students' contact persons
create table ContactPersons (
ContactID tinyint primary key not null identity (1,1),
FirstName nvarchar (20) not null,
LastName nvarchar (30) not null,
Address nvarchar (30),
City nvarchar (20) not null,
County char (2) default 'KE' not null,
Eircode char (8),
Phone char (10) not null,
Email varchar (60)
);

-- Link students to contacts
create table StudentContacts (
StudentID tinyint not null foreign key references FifthYearStudents(StudentID),
ContactID tinyint not null foreign key references ContactPersons(ContactID),
RelationType varchar (12) not null
);

-- Create a table for class information
create table Classes (
Subject varchar (20) primary key not null,
TeacherID tinyint foreign key references Teachers(TeacherID),
Location varchar (20)
);

-- Create a table to host each student's final grade in each subject
create table FinalGrade (
StudentID tinyint not null,
Subject varchar (20) not null,
Grade tinyint not null check (Grade<=100)
primary key (StudentID, Subject)
);

-- Create a timetable for lessons
create table Timetable (
Day varchar (9) not null,
Subject varchar (20) not null,
ClassStart time not null,
ClassEnd time not null,
primary key (Day, Subject)
);

