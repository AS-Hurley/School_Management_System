/*This query displays all students, their respective contact persons, the contact's phone number
and the relationship between them */

use [2022-2023_SchoolYear]


select (s.FirstName + ' ' + s.LastName) as 'Student Name', 
(p.FirstName + ' ' + p.LastName) as 'Contact Person', 
c.RelationType, p.Phone
from   dbo.FifthYearStudents as s
             join
             dbo.StudentContacts as c  on s.StudentID = c.StudentID 
			 join
             dbo.ContactPersons as p   on c.ContactID = p.ContactID