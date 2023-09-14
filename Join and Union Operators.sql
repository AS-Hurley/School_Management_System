/* This query displays two sets of records: business studies grades for students who live in Co. Meath,
   and art grades for students who live in the town of Killeshin */

use [2022-2023_SchoolYear]


select (s.FirstName + ' ' + s.LastName) as 'Student Name',
g.Grade
from dbo.FifthYearStudents as s
join dbo.FinalGrade as g   on  s.StudentID = g.StudentID
where s.County = 'ME' and g.Subject = 'Business Studies'
union 
select (s.FirstName + ' ' + s.LastName) as 'Student Name',
g.Grade
from dbo.FifthYearStudents as s
join dbo.FinalGrade as g   on  s.StudentID = g.StudentID
where s.City = 'Killeshin' and g.Subject = 'Art'