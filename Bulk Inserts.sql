-- Bulk insert data into tables from CSV files

use [2022-2023_SchoolYear]


BULK INSERT StudentContacts
FROM 'C:\Users\ash20\Documents\SQL\School Project\StudentContactsCSV.csv'
WITH (
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n',
  FIRSTROW = 2
);

BULK INSERT Classes
FROM 'C:\Users\ash20\Documents\SQL\School Project\ClassesCSV.csv'
WITH (
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n',
  FIRSTROW = 2
);

BULK INSERT Timetable
FROM 'C:\Users\ash20\Documents\SQL\School Project\TimetableCSV.csv'
WITH (
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n',
  FIRSTROW = 2
);

BULK INSERT FinalGrade
FROM 'C:\Users\ash20\Documents\SQL\School Project\FinalGradeCSV.csv'
WITH (
  FIELDTERMINATOR = ',',
  ROWTERMINATOR = '\n',
  FIRSTROW = 2
);

