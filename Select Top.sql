-- This query displays the oldest student in the table

use [2022-2023_SchoolYear]


select top 1 FirstName, LastName, DOB
from FifthYearStudents
order by DOB;


-- This query displays the youngest student in the table

use [2022-2023_SchoolYear]


select top 1 FirstName, LastName, DOB
from FifthYearStudents
order by DOB desc;


-- This query displays the three students with the highest grades in geography

use [2022-2023_SchoolYear]


select top 3 s.FirstName, s.LastName, g.Grade
from dbo.FifthYearStudents as s
join
dbo.FinalGrade as g   on s.StudentID = g.StudentID
  where g.Subject = 'Geography'
    order by g.Grade desc;