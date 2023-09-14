-- This query calculates the difference between the ClassStart and ClassEnd fields to display the lesson duration

use [2022-2023_SchoolYear]


select Day, Subject, convert (varchar (5), t1.ClassStart, 108) as 'Start Time', 
datediff(minute, ClassStart, ClassEnd) as 'Lesson Duration in Minutes' from Timetable as t1; 
