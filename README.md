
# School_Management_System
## School Database Project: Exploring Database Design and SQL

  
I have created this project to gain a better understanding of database design and of creating Entity Relationship Diagrams. In addition, I wanted to gain more practical experience in creating database objects such as views and stored procedures, and scripting various SQL queries.

The process involved planning and creating a school database for one class (Fifth Year) for the school year starting September 2022. This database is used for demonstration purposes.
The database was kept small as the main objective of the project was to concentrate on planning the database and then creating objects and queries, explore new topics and expanding my skillset.




### Tools


* SQL Server 2019

* SQL Server Management Studio (SSMS)

* [sqlDBMS](https://sqldbm.com/Home/) - After much exploration I have decided to use sqlDBMS to produce my ERD. This tool has the best interface for my needs and has easy editing features
 

* ChatGPT - I used ChatGPT to generate data for this project to ensure the values be fictional

* Excel - I used Excel to store the generated data prior to importing to SQL Server as it is a convenient tool to store data in table form and also enables export to SQL. The sheets (tabs) structure enabled me to ensure I had all the required data ahead of the import

### Challenges and Lessons:

- **Course Foundation:** My SQL certification course provided a valuable foundation by covering fundamental SQL concepts. However, as I embarked on this project, I discovered the need to delve deeper into specific topics to meet the project's requirements. These topics include (but are not limited to):
    - Window functions
    - Joining multiple tables
    - Handling missing values
    - Formatting query results

- **Additional Learning:** To implement certain features of the project successfully, I had to explore online resources to fill knowledge gaps. Some of the resources I found immensely helpful include:
    - Microsoft SQL documentation
    - W3 Schools, which is agreat resource that makes SQL clearer and more accessible. There I found an explanation of the DATEDIFF function and clarification on the syntax of CASE expressions, among other things
    - Stack Overflow, where I got information on installing OLE DB drivers and some clarification on CASE statements with aggregate functions
    - Codeproject, where I found a function that actually works to display time in HH:MM format
    - Dataquest, for explanation and examples of window functions

- **Excel Data Import Challenge:** One significant challenge I encountered at the project's outset was inserting values into SQL Server from Excel. My initial plan was to export data as CSV and perform bulk inserts. However, I encountered a hurdle when dealing with Excel sheets containing diacritics, which couldn't be preserved in the export. This led me to:
    - Conduct extensive research
    - Experiment with different methods
    - Discover a suitable approach - generating the INSERT INTO statements in Excel with this formula:
    ````="INSERT INTO TABLENAME VALUES ('"&A2&"','"&B2&"','"&C2&"','"&D2&"')" ````
    - Learn the importance of planning for data import methods



- **Key Takeaways:** While I performed various actions in this database, I've highlighted the aspects that required extensive research and experimentation to achieve the intended results. Some of these topics were new to me, while others presented minor syntax and implementation challenges. Key takeaways include:

* Designing a database; conceptualising the required entities and the relationships between them - this was done to ensure the database had a solid design and prevent any issues that may arise from poor relationships.
* Identifying and setting primary keys to ensure each record is unique.
* Identifying and setting foreign keys to maintain referential integrity.
* Deciding on the best ERD tool to use and producing an ERD to suit my purpose - I wanted to ensure the ERD is clear, easily readable and correctly maps out the design of my database.
* Inserting data into tables by generating INSERT INTO statements using a formula in Excel, then copying the statements into SQL Server - this enabled me to insert values with diacritics without having to copy the values themselves and then format each one
* Using the NULLIF function to return results where records were empty - these were not returned in the resulset with the IS NULL operator and were not eliminated by the NOT NULL operator. NULLIF resolved that issue.
* Table aliasing in JOIN queries - this was a minor syntax issue, specifically when joining tables, as the prefix dbo. must be removed when aliasing or it causes errors.
* Linking data from three tables using the JOIN operator - there were multiple queries that required values from more than two tables.
* Using a CASE expression to display students' grade profiles - this allowed me to break down and display the grades as evaluations of ability.
* Creating a stored procedure with multiple output parameters - this was used to query lesson details so multiple details to be displayed when the input parameter was passed in.
* Converting a TIME field to display in HH:MM format - This was used to display lesson times, which would have displayed as HH:MM:SS.nnnnnnn by default and made for messy output.
* Using string concatenation - I used this multiple times during the project to display full names under one column and am now fully confident on the syntax.
* Using the DATEDIFF function - this was used to calculate lesson duration.      
* Using window functions to display aggregated and non-aggregated data - this was used to compare each student's grade in each subject to the class average.

- **Bonus Learning:** I also gained the skill of writing more effective prompts for ChatGPT, which I used to generate most of the data for this project.


#### Conclusion 

In summary, this project has significantly contributed to my practical knowledge and capabilities in SQL. It has deepened my understanding of various aspects of working with SQL Server, enabling me to confidently explore more advanced material and expand my knowledge further. My intention is also to become better-versed in ANSI SQL and work with other RDBMSs such as Oracle and MySQL.
## Installation

The database can be restored from the backup file in the repository.

Save the .bak file to your local device, in the same folder you keep all your SQL Server backup files.

The database can be restored by using a command or in the SSMS GUI.

To restore from backup with a command:

````RESTORE DATABASE 2022-2023_SchoolYear FROM DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\2022-2023_SchoolYear.bak'````

*copy and paste the full path from your own device by navigating to the backup file, right-click and select "copy as path".


To restore from backup in SSMS:

In the Object Explorer right-click on Databases and select Restore Database

<img width="427" alt="Picture1" src="https://github.com/AS-Hurley/School_Management_System/assets/144287374/a15ce3fd-d592-4a02-8941-51508cf30b0f">


In the Source select Device and click the ellipsis button. In the pop-up box that opens, click Add

<img width="643" alt="Picture2" src="https://github.com/AS-Hurley/School_Management_System/assets/144287374/917807d1-6d19-41dd-bc86-daa7c6d95e89">


In the pop-up box that opens, select the file 2022-2023_SchoolYear.bak and click OK

<img width="551" alt="Picture3" src="https://github.com/AS-Hurley/School_Management_System/assets/144287374/b291ab25-2de3-4e30-b23b-27579ad4592c">


When your backup path displays in the window, click OK again

<img width="579" alt="Picture4" src="https://github.com/AS-Hurley/School_Management_System/assets/144287374/e2d07c98-8541-48e6-97bf-0c9e53de665d">


Click OK in the last box

<img width="470" alt="Picture5" src="https://github.com/AS-Hurley/School_Management_System/assets/144287374/0648266c-05bd-4f12-80ca-b7c9743b71a3">

### Credits

 - [Sudhanshu Shekhar](https://www.sudshekhar.com/)
 - [W3Schools](https://www.w3schools.com/)
 - [Dataquest](https://app.dataquest.io/login?target-url=%2Fdashboard)
 - [Codeproject](https://www.codeproject.com/Questions/409020/HH-MM-Format-in-SQL-Server)
 - [Stackoverflow](https://stackoverflow.com/)
 - [ecollege](https://www.ecollege.ie/), with a great big shout-out to Darren Maytum who helped me with a question even after the end of my course and pointed out a data input issue which affected one of my queries


## License

[MIT](https://choosealicense.com/licenses/mit/)


## Badges

[![MIT License](https://img.shields.io/badge/License-MIT-green.svg)](https://choosealicense.com/licenses/mit/)



## Feedback

If you have any feedback, please reach out to me at ashforgit@proton.me


## Disclaimer

All names, addresses, phone numbers, email addresses, PPS Numbers, birth dates, town names and Eircodes used in this project are either products of the author's imagination, LLM-generated or otherwise randomiser-generated.  Any connection or resemblance to actual persons, living or dead, is entirely coincidental.
