-- Create a nonclustered composite index for the Teachers table

use [2022-2023_SchoolYear]

create nonclustered index idx_PhoneContact
on
Teachers (FirstName, Phone);