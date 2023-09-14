-- This query displays contact persons who do not live in Co. Meath and whose phone numbers do not have the dial code 089  

use [2022-2023_SchoolYear]


select FirstName, LastName, Email 
from ContactPersons
where not County = 'ME' and Phone not like '089%';