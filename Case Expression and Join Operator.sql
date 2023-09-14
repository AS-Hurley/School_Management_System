-- This query displayes the students' names, their average final grade and their grade profile

use [2022-2023_SchoolYear]


select s.FirstName, s.LastName, avg(Grade) as 'Average Final Grade',
case
    when avg(Grade) >= 90 then 'Top student!'
    when avg(Grade) between 80 and 89 then 'Very good'
	when avg(Grade) between 70 and 79 then 'Good'
	when avg(Grade) between 60 and 69 then 'Must try harder'
    else 'Fail' 
end    as 'Grade Profile'
    from dbo.FifthYearStudents as s
	 join dbo.FinalGrade as g   on s.StudentID = g.StudentID
	  group by s.LastName, s.FirstName;