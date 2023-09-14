-- This query retruns values for students who share a surname and address with their contact person

use [2022-2023_SchoolYear]


select LastName, Address
from FifthYearStudents
    intersect
select LastName, Address from ContactPersons