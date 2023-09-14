-- This query returns the details of contacts who have the word "park" anywhere in the address

use [2022-2023_SchoolYear]


select FirstName, LastName, Address, City
from ContactPersons
where Address like '%park%';

-- This query returns the details of contacts whose surnames begin with M, C, B or R

use [2022-2023_SchoolYear]


select FirstName, LastName, Address, City
from ContactPersons
where LastName like '[mcbr]%';

-- This query returns the details of contacts whose first names start with a letter in the range between O and W

use [2022-2023_SchoolYear]


select FirstName, LastName, Address, City
from ContactPersons
where FirstName like '[o-w]%';