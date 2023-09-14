-- This query shows students who failed their exams with grades under 50

use [2022-2023_SchoolYear]

select s.Firstname, s.LastName, min(g.Grade) as 'Lowest Grade'
from dbo.FifthYearStudents as s
    join dbo.FinalGrade as g    on s.StudentID = g.StudentID
	  group by s.LastName, s.FirstName
	    having min(g.Grade) < 50