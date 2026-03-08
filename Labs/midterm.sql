/* Name : Cedric-O Jean-Noel */
/* class: Intro to database systems */
/* Assignemnt : midterm */
                                    /* PART A */
/* 1.  Explain the difference between data, information, and a database. Provide an example for each.

   the difference between data , information and a database is that data a big file of information stored inside
   a database . For example data would be a notebook and information is the content that is written inside of
   the notebook while the database is the bookbag that would store different types of books.
 */

/* 2. List and briefly explain three major components of a Database Management System (DBMS).
   the 3 major components of a dbms are create, process and administer.
   create is to create new tables while process is to find a specific type of information or add some type information
   and administer is like a security wall that only lets certain people in
 */

/* 3. Explain the roles of a Database Administrator (DBA), Database Designer, and End User.
   the DBA works within the database and has access to work  within the database management system while the
   database designer works within the web server and client application , the end users sent requests to the
   through the pipeline which goes in this order End user -> database designer -> DBA
 */

/* 4. What is a relation in the relational model? Define tuple, attribute, and domain.
the realtion in the realational model is that it's basically a big box that stores data in rows and columns or just a table
   a tuple is a file
   an attrible is the fied  in a column or the general name for item being stored like car
   a domain is  the record or the information about a specific attribute for example like car color = orange or car brand = ford
 */

/*5. Differentiate between Super Key, Candidate Key, Primary Key, and Foreign Key.
  A super key
  A candidate key is any is the key that determine the relationship of all the rows in a table
  A primary key is a candidate key that show that the attribute has a unique identifier
  A foreign key is a key that matches/points to  another key in another table
 */

/* 6. Write an SQL query to retrieve employees in the IT department earning more than $75,000 from Employee(EmpID, Name, Department, Salary).*/
SELECT Name, Salary
FROM Employee
WHERE Salary > 75000;

/* 7. Write an SQL query to find the average salary of employees in each department.*/
SELECT EmpID , Department , AVG(Salary)
FROM Employee;

/* 8. What is the difference between INNER JOIN and LEFT OUTER JOIN?
   The difference between INNER JOIN returns the all the values that match from both tables that are used
   while the LEFT OUTER JOIN returns all the values from the left table without caring if the match or not
 */

/*9. Define functional dependency with an example.
functional dependency is when the attributes from a table depends on the attributes from another table in order to exist
  for example MustardKetchupCombo = mustard x ketchup so the MustardKetchupCombo would not have a value if ketchup
  or mustard did not have one
 */

/*10. What is Third Normal Form (3NF) and why is it important?
it is when two non-key attributes need to connect to each other in order to build another attribute,
  it's very important due to the fact that it make sure that all the attributes depend only on the primary attribute
  and not other attributes
 */

                                      /* PART B */
/* Question 1 */
/*a) Retrieve the names of students majoring in Computer Science.*/
SELECT Name , Major
FROM Student
WHERE Major = 'Computer Science';

/*b) Find the number of students enrolled in each course. */
SELECT StudentID ,CourseID
FROM Student , Course
ON Student.StudentID = Course.CourseID
GROUP BY CourseID;

/*c) List students with GPA greater than the average GPA.*/
SELECT Name , GPA
FROM Student
WHERE GPA > AVG(GPA)

/*d) Retrieve courses with more than 10 students enrolled.*/
SELECT COUNT(StudentID), CourseID
FROM Enrollment
GROUP BY CourseID
HAVING COUNT(CourseID) > 10 ;

/*Question 2 */
/*a) Retrieve employee names along with their department names.*/
SELECT Name, DeptName
FROM Employee JOIN Department
ON Employee.Name = Department.DeptName;

/*b) Find the department with the highest average salary.*/
SELECT Salary , DeptName , DeptID
FROM Employee JOIN Department
On Employee.DeptID = Department.DeptID
WHERE Employee.Salary >
      (SELECT AVG(Salary)
       FROM Employee ;);

/*c) List employees whose salary is greater than the average salary of their department.*/
SELECT Salary , Name ,DeptID
FROM Employee JOIN Department
ON Employee.DeptID = Department.DeptID
Where Salary > (
    SELECT AVG(Salary)
    FROM Employee;
    )
GROUP BY Name;

/*d) Find the names of managers for each department.*/
    SELECT Name , ManagerID , DeptName , DeptID
    FROM Employee JOIN Department
    ON Employee.DeptID = Department.DeptID
    ORDER BY ManagerID, Name , DeptID , DeptName ;

/* QUESTION 3 */
/* a) Identify the candidate keys.*/
/* the candidate keys are OrderID , CustomerID , ProductID */

/* b) Determine whether the relation is in 1NF, 2NF, and 3NF.*/
/* the 1nf is the orderid and customerid
   the 3nf is the productid
   the 2nf is the oderid, product id
 */

/* c) Decompose the relation into 3NF relations. */
Orders(OrderID, ProductID, ProductName)
Customers(CustomerID, CustomerName)
Products(ProductID, ProductName ,Quantity , Price)

/* d) Explain how normalization reduces redundancy.*/
/*Normalization reduces redundancy because it breaks down the attributes into more specific table
      which makes it easier for the dbms to access the information when needed
 */

                           /*Question 4*/
/* Design a database for a university with students, courses, and instructors.*/
      UNIVERSITY DATABASE
      STUDENTS(StudentID, StudentName , Major, Classification, Course)
      COURSE(CourseID , CourseName , StudentID, CourseDescription ,InstructorName)
      INSTRUCTOR(InstructorID, InstructorName , Course, InstructorDepartment)

/*a) Identify entities and attributes.*/
      /* The entities are STUDENTS , COURSE , INSTRUCTOR
         The attributes are StudentID, StudentName , Major, Classification, Course,
                            CourseID , CourseName , CourseDescription ,InstructorName
                           InstructorID , Course and InstructorDepartment
       */
/* b) Identify relationships among entities.*/
      s
/*c) Convert the design into relational tables with primary and foreign keys.*/

STUDENTS(StudentID PRIMARY KEY , StudentName, Major, Classification)
INSTRUCTOR(InstructorID PRIMARY KEY , InstructorName, InstructorDepartment)
COURSE(CourseID PRIMARY KEY , CourseName, CourseDescription, InstructorID FOREIGN KEY)
ENROLLMENT(StudentID PRIMARY KEY /FOREIGN KEY, CourseID PRIMARY KEY /FOREIGN KEY)

/*d) Explain the importance of referential integrity. */
      referential integrity is important because is make sure the relationshipp between tables are
      accurate when it comes to data