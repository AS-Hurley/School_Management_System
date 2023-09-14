-- This function shows the difference between each student's grade in each subject and the average grade for that subject

use [2022-2023_SchoolYear]


select (s.FirstName + ' ' + s.LastName) as 'Student Name', g.Subject, 
g.Grade,
g.Grade - avg(g.Grade) over(partition by Subject) as 'Grade Gap'
  from dbo.FifthYearStudents as s
  join dbo.FinalGrade as g    on s.StudentID = g.StudentID;