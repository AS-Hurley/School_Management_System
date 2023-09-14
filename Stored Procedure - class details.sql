-- Create a stored procedure to return lesson details with the subject as input parameter


create procedure My_Class_Details @Subject varchar (20) 
as
begin
select t.Day, t.Subject,
convert (varchar (5), t.ClassStart, 108)  AS 'Start Time',
c.Location, (p.FirstName + ' ' + p.LastName) as 'Teacher'
    from dbo.Timetable as t
	 join dbo.Classes as c   on t.Subject = c.Subject
	 join dbo.Teachers as p   on c.TeacherID = p.TeacherID
	   where t.Subject = @Subject
end;


-- This statement calls the stored procedure to display details for history lessons

exec My_Class_Details 'History'
return;

