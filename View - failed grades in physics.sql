-- Create a view to display all the students who failed their physics finals

create view [Fails in Physics] as
select (s.FirstName + ' ' + s.LastName) as 'Student Name', g.Grade
from dbo.FifthYearStudents as s
 join dbo.FinalGrade as g  on s.StudentID = g.StudentID
 where g.Subject = 'Physics' and g.Grade < 60;



