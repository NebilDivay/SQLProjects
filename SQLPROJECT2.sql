CREATE DATABASE ORGANIZATION

CREATE TABLE 
       EmployeeDetails (
	   EmployeeID int Not Null Primary Key,
	   FirstName varchar (50),
	   LastName varchar(60),
	   Salary Decimal(10,2),
	   JoiningDate date,
	   Department varchar(10),
	   Gender varchar(10)
	   );

INSERT INTO EmployeeDetails (EmployeeID,FirstName,LastName,Salary,JoiningDate,Department,Gender) 
       VALUES
	   (1,'Vikas','Ahlawat',6000000,'2/12/2013 11:16','IT','Male'),
	   (2,'Nikita','Jain',530000,'2/14/2013 11:16','HR','Female'),
	   (3,'Ashish','Kumar',1000000,'2/14/2013 11:16','IT','Female'),
	   (4,'Nikhil','Sharma',480000,'2/15/2013 11:16','HR','Male'),
	   (5,'Anish','Kadian',500000,'2/16/2013 11:16','Paroll','Male')

--1) Write a query to get all employee detail from "EmployeeDetail" table
SELECT * 
FROM EmployeeDetails ;

--2) Write a query to get only "FirstName" column from "EmployeeDetail" table
SELECT FIRSTNAME 
FROM EmployeeDetails ;


--3) Write a query to get FirstName in upper case as "First Name".
SELECT UPPER (FIRSTNAME) AS First_Name 
FROM EmployeeDetails ;

--4) Write a query to get FirstName in upper case as "First Name".
SELECT UPPER (FIRSTNAME) AS First_Name 
FROM EmployeeDetails ;


--5) Write a query for combine FirstName and LastName and display it as "Name" (also include white space between first name & last name)
SELECT CONCAT(FIRSTNAME,' ',LASTNAME) AS Name 
FROM EmployeeDetails ;

--6) Select employee detail whose name is "Vikas
SELECT * 
FROM EmployeeDetails 
WHERE FIRSTNAME LIKE 'Vikas' ;

--7) Get all employee detail from EmployeeDetail table whose "FirstName" start with latter 'a'.
SELECT * 
FROM EmployeeDetails 
WHERE FirstName LIKE 'A%' ;


--8) Get all employee detail from EmployeeDetail table whose "FirstName" start with latter 'a'.
SELECT * 
FROM EmployeeDetails 
WHERE FirstName LIKE 'A%' ;


--9. Get all employee details from EmployeeDetail table whose "FirstName" end with 'h'
SELECT * 
FROM EmployeeDetails
WHERE FirstName LIKE '%H' ;


--10. Get all employee detail from EmployeeDetail table whose "FirstName" start with any single character between 'a-p'
SELECT *
FROM EmployeeDetails 
WHERE FirstName LIKE '[A-P]%' ;

--11)	 Get all employee detail from EmployeeDetail table whose "FirstName" not start with any single character between 'a-p'

SELECT * 
FROM EmployeeDetails 
WHERE FirstName NOT LIKE '[A-P]%' ;

--12)	 Get all employee detail from EmployeeDetail table whose "Gender" end with 'le' and contain 4 letters. The Underscore(_) Wildcard Character represents any single character

SELECT * 
FROM EmployeeDetails
WHERE Gender LIKE '__le' ;


--13)	 Get all employee detail from EmployeeDetail table whose "FirstName" start with 'A' and contain 5 letters
SELECT * 
FROM EmployeeDetails 
WHERE FirstName LIKE 'A____' ;



--14)	 Get all employee detail from EmployeeDetail table whose "FirstName" containing '%'. ex:-"Vik%as".
SELECT *
FROM EmployeeDetails
WHERE FirstName LIKE '%\%';


--15)	 Get all unique "Department" from EmployeeDetail table
SELECT DISTINCT(DEPARTMENT) 
FROM EmployeeDetails ;

--16)	 Get the highest "Salary" from EmployeeDetail table.
SELECT MAX(SALARY) 
FROM EmployeeDetails ;

--17)	 Get the lowest "Salary" from EmployeeDetail table
SELECT MIN(SALARY) 
FROM EmployeeDetails ;

--18)	 Show "JoiningDate" in "dd mmm yyyy" format, ex- "15 Feb 2013
SELECT CONVERT(varchar(20), JoiningDate, 106) AS formatted_joining_date
FROM EmployeeDetails;
--19)	Show "JoiningDate" in "yyyy/mm/dd" format, ex- "2013/02/15"

SELECT CONVERT(VARCHAR(10),JOININGDATE,120) AS formatted_joining_date 
FROM EmployeeDetails  ;

--20)	 Show only time part of the "JoiningDate"

SELECT CONVERT(varchar(8), JoiningDate, 108) AS joining_time
FROM EmployeeDetails;

--21)	Get only Year part of "JoiningDate"
SELECT DATEPART(Year, JoiningDate) AS joining_year
FROM EmployeeDetails;


--22)	Get only Month part of "JoiningDate”
SELECT DATEPART(month, JoiningDate) AS joining_year
FROM EmployeeDetails;

--23)	Get system date

SELECT GETDATE() AS system_date;


--24)	Get UTC date.
SELECT GETUTCDATE() AS utc_date;

--a)	Get the first name, current date, joiningdate and diff between current date and joining date in months.
SELECT FirstName, 
       GETDATE() AS CURRENTDATE,
	   JOININGDATE,
	   DATEDIFF(MONTH,JOININGDATE,GETDATE()) AS Month_Diff 
FROM EmployeeDetails 

--25)	Get the first name, current date, joiningdate and diff between current date and joining date in days.
SELECT FirstName, 
       GETDATE() AS CURRENTDATE,
	   JOININGDATE,
	   DATEDIFF(DAY ,JOININGDATE,GETDATE()) AS Date_Diff 
FROM EmployeeDetails ;


--26)	 Get all employee details from EmployeeDetail table whose joining year is 2013
SELECT * 
FROM EmployeeDetails 
WHERE YEAR(JoiningDate ) = '2013' ;

--27)	Get all employee details from EmployeeDetail table whose joining month is Jan(1)

SELECT * 
FROM EmployeeDetails
WHERE MONTH(JoiningDate ) = '1' ;

--28)	Get all employee details from EmployeeDetail table whose joining month is Jan(1)
SELECT * 
FROM EmployeeDetails 
WHERE MONTH(JoiningDate ) = '1' ;

--29)	Get how many employee exist in "EmployeeDetail" table
SELECT COUNT(DISTINCT EMPLOYEEID) 
FROM EMPLOYEEDETAILS ;


--31. Select only one/top 1 record from "EmployeeDetail" table
SELECT TOP 1 EmployeeID  
FROM EmployeeDetails ;

--32. Select all employee detail with First name "Vikas","Ashish", and "Nikhil".

SELECT * 
FROM EmployeeDetails
WHERE FirstName IN('VIKAS','ASHISH','NIKHIL') ;
--33. Select all employee detail with First name not in "Vikas","Ashish", and "Nikhil"

SELECT * 
FROM EmployeeDetails
WHERE FirstName NOT IN('VIKAS','ASHISH','NIKHIL') ;


--34. Select first name from "EmployeeDetail" table after removing white spaces from right side

SELECT RTRIM(FirstName) AS trimmed_first_name
FROM EmployeeDetails;
--35. Select first name from "EmployeeDetail" table after removing white spaces from left side

SELECT LTRIM(FirstName) AS trimmed_first_name
FROM EmployeeDetails;

--36. Display first name and Gender as M/F.(if male then M, if Female then F)
SELECT FirstName,
  CASE WHEN Gender = 'Male' THEN 'M'
       WHEN Gender = 'Female' THEN 'F'
       
  END AS Gender_MF
FROM EmployeeDetails;



--37. Select first name from "EmployeeDetail" table prifixed with "Hello
SELECT CONCAT('Hello ', FirstName) AS full_name
FROM EmployeeDetails;


--38. Get employee details from "EmployeeDetail" table whose Salary greater than 600000
SELECT * 
FROM EMPLOYEEDETAILS 
WHERE SALARY > 600000


--39. Get employee details from "EmployeeDetail" table whose Salary less than 700000
SELECT * 
FROM EMPLOYEEDETAILS
WHERE SALARY < 700000


--40. Get employee details from "EmployeeDetail" table whose Salary between 500000 than 600000

SELECT * FROM EMPLOYEEDETAILS WHERE SALARY BETWEEN 500000 AND 600000

CREATE TABLE ProjectDetail (
       ProjectID int NOT NULL Primary Key,
	   EmployeeDetailID int ,
	   ProjectName varchar(50))

INSERT INTO ProjectDetail (ProjectID,EmployeeDetailID,ProjectName) 
VALUES
(1,1,'Task Track'),
(2,1,'CLP'),
(3,1,'Survey Management'),
(4,2,'HR Management'),
(5,3,'Task Track'),
(6,3,'GRS'),
(7,3,'DDS'),
(8,4,'HR Management'),
(9,6,'GL Management')

--41. Give records of ProjectDetail table
SELECT * 
FROM PROJECTDETAIL ;

--42. Write the query to get the department and department wise total(sum) salary from "EmployeeDetail" table.
SELECT DEPARTMENT,
       SUM(SALARY) AS TOTAL_SALARY 
FROM EMPLOYEEDETAILS 
GROUP BY DEPARTMENT ;


--43. Write the query to get the department and department wise total(sum) salary, display it in ascending order according to salary.
SELECT DEPARTMENT,
       SUM(SALARY) AS TOTAL_SALARY 
FROM EMPLOYEEDETAILS 
GROUP BY DEPARTMENT 
ORDER BY TOTAL_SALARY ;

--44. Write the query to get the department and department wise total(sum) salary, display it in descending order according to salary
SELECT DEPARTMENT,
       SUM(SALARY) AS TOTAL_SALARY 
FROM EMPLOYEEDETAILS 
GROUP BY DEPARTMENT 
ORDER BY TOTAL_SALARY DESC;

--45. Write the query to get the department, total no. of departments, total(sum) salary with respect to department from "EmployeeDetail" table.
SELECT DEPARTMENT,
       COUNT(DEPARTMENT) AS No_of_Department,
	   SUM(SALARY) AS TOTAL_SALARY 
FROM EMPLOYEEDETAILS
GROUP BY DEPARTMENT ;


--46. Get department wise average salary from "EmployeeDetail" table order by salary ascending
SELECT DEPARTMENT,
       AVG(SALARY) AS AVG_SALARY 
FROM EMPLOYEEDETAILS 
GROUP BY DEPARTMENT 
ORDER BY AVG_SALARY ;

--47 . Get department wise maximum salary from "EmployeeDetail" table order by salary ascending
SELECT DEPARTMENT,
       MAX(SALARY) AS MAX_SALARY 
FROM EMPLOYEEDETAILS 
GROUP BY DEPARTMENT 
ORDER BY MAX_SALARY ;

--48.Get department wise minimum salary from "EmployeeDetail" table order by salary ascending.
SELECT DEPARTMENT,
       MIN(SALARY) AS MIN_SALARY 
FROM EMPLOYEEDETAILS 
GROUP BY DEPARTMENT 
ORDER BY MIN_SALARY ;


--49. Get department wise minimum salary from "EmployeeDetail" table order by salary ascending
SELECT DEPARTMENT,
       MIN(SALARY) AS MIN_SALARY 
FROM EMPLOYEEDETAILS 
GROUP BY DEPARTMENT 
ORDER BY MIN_SALARY ;


--50. Join both the table that is Employee and ProjectDetail based on some common paramter
SELECT * 
FROM EmployeeDetails E INNER JOIN ProjectDetail P
ON E.EmployeeID = P.EmployeeDetailID 


--51. Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for those employee which have assigned project already.
SELECT e.FirstName, 
       p.ProjectName 
FROM 
EmployeeDetails E INNER JOIN ProjectDetail P
ON E.EmployeeID = P.EmployeeDetailID  
WHERE E.EmployeeID = P.EmployeeDetailID 
ORDER BY E.FirstName;



--52. Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee even they have not assigned project.
SELECT e.FirstName, p.ProjectName FROM 
EmployeeDetails E LEFT JOIN ProjectDetail P
ON E.EmployeeID = P.EmployeeDetailID  
ORDER BY E.FirstName ;


--53) Get employee name, project name order by firstname from "EmployeeDetail" and "ProjectDetail" for all employee if project is not assigned then display "-No Project Assigned"
SELECT E.FIRSTNAME,
  COALESCE(P.PROJECTNAME, '-NO PROJECT ASSIGNED') AS PROJECTNAME
FROM EMPLOYEEDETAILS AS E
LEFT JOIN PROJECTDETAIL AS P ON E.EMPLOYEEID = P.EMPLOYEEDETAILID 
ORDER BY E.FIRSTNAME ASC;


select * from projectdetail
--54.Get all project name even they have not matching any employeeid, in left table, order by firstname from "EmployeeDetail" and "ProjectDetail
SELECT P.PROJECTNAME 
FROM EMPLOYEEDETAILS E
RIGHT JOIN PROJECTDETAIL P ON E.EMPLOYEEID = P.EMPLOYEEDETAILID
ORDER BY E.FIRSTNAME;



--55. Get complete record (employeename, project name) from both tables ([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL
SELECT COALESCE(e.FirstName, 'NULL') AS EmployeeName,
       COALESCE(p.ProjectName, 'NULL') AS ProjectName
FROM EmployeeDetails AS e
FULL JOIN ProjectDetail AS p ON e.EmployeeID = P.EMPLOYEEDETAILID;

--56. Get complete record (employeename, project name) from both tables ([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL

SELECT COALESCE(e.FirstName, 'NULL') AS EmployeeName,
       COALESCE(p.ProjectName, 'NULL') AS ProjectName
FROM EmployeeDetails AS e
FULL JOIN ProjectDetail AS p ON e.EmployeeID = P.EMPLOYEEDETAILID;


--57.Get complete record (employeename, project name) from both tables ([EmployeeDetail],[ProjectDetail]), if no match found in any table then show NULL
SELECT COALESCE(e.FirstName, 'NULL') AS EmployeeName,
       COALESCE(p.ProjectName, 'NULL') AS ProjectName
FROM EmployeeDetails AS e
FULL JOIN ProjectDetail AS p ON e.EmployeeID = P.EMPLOYEEDETAILID;




--58.Write down the query to fetch EmployeeName & Project who has assign more than one project

SELECT E.FirstName, E.LastName, P.ProjectName
FROM EmployeeDetails AS E
JOIN ProjectDetail AS P ON E.EmployeeID = P.EmployeeDetailID
WHERE E.EmployeeID IN (
    SELECT EmployeeDetailID
    FROM ProjectDetail
    GROUP BY EmployeeDetailID
    HAVING COUNT(*) > 1
);
--59. Write down the query to fetch ProjectName on which more than one employee are working along with EmployeeName

SELECT PD.ProjectName, ED.FirstName, ED.LastName
FROM ProjectDetail AS PD
JOIN EmployeeDetails AS ED ON PD.EmployeeDetailID = ED.EmployeeID
WHERE PD.ProjectName IN (
    SELECT ProjectName
    FROM ProjectDetail
    GROUP BY ProjectName
    HAVING COUNT(EmployeeDetailID) > 1
) ORDER BY ProjectName ;
--60. Apply Cross Join in Both the tables
SELECT EmployeeDetails .EmployeeID ,ProjectDetail .ProjectName 
FROM EmployeeDetails CROSS JOIN ProjectDetail ;