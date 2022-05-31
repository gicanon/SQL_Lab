## Using the `mysql` client
Open up a terminal window from the **Tools->Terminal** menu.

Once the terminal window is open, just type `mysql` into the command line and a new `mysql>` client will start on the **MariaDB** system (similar to the MySQL system). 

### Running `mysql` statements
The `mysql` client is enabled with all the database and table editing and reading privileges so you can experiment as much as you want.

### For this Assessment
There are two tables available in the database `COMPANY1` which should be used for this assessment activity.  First, type the command 
```sql
USE COMPANY1;
```
to ensure you are in the right database before carrying out the instructions provided.

Then play the *Guide* (**Tools->Guide->Play**)to start the assignment.
![playGuide](https://global.codio.com/platform/readme.resources/playGuide.png)

### Description of Solution

Assessment Exercises:

1. List all Employees whose salary is between 1,000 AND 2,000. Show the Employee Name, Department and Salary

I used the command `SELECT` to list only the employee names and salaries from the table `EMP` (data of employees) and the department name from the table `DEPT` (data of departments).
Furthermore, with the `JOIN` keyword it is possible to connect the table `EMP` and `DEPT` because of the Foreign Key `DEPTNO`(department number is located in both tables) and to list any column of each table. 
With the clause keyword `WHERE` and the operator `BETWEEN`, I could assign the salary from 1000 to 2000. 
In addition, I ordered the result by the salary in descending order because of the readability.

2. Count the number of people in department 30 who receive a salary and the number of people who receive a commission

For this query, I used the keyword `COUNT()` to count the number of people who receive a salary and those who receive a commission. 
With `WHERE`, I assigned the department number to 30 to only list the employees of the correct department. 
Also, because of the comprehensibility, I used the keyword `AS` to alias the column name to understand the result.

3. Find the name and salary of employees in Dallas

In this query, I proceeded like the first query. I listed the employee names as employee names of Dallas and the salary with the command `SELECT`.
`JOIN` was the solution to connect both the employee and department table and only to find the employees in Dallas by assigning the location to Dallas.
Furthermore, I ordered the names alphabetically with `ORDER BY` for readability. 

4. List all departments that do not have any employees

The solution for this query is the operator `NOT IN`. I listed the column department name as a department without employees. 
In order to list only the department name without employees, I used the operator `NOT IN` with the condition that the department number must not be in the EMP table. 
I used a `SELECT` statement as a subquery (SELECT department number of the table `EMP`). 
The output will display all the department's names that are not on the employee table.

5. List the department number and average salary of each department

To calculate the average salary, I used the keyword `AVG()` to automatically calculate the salary average.
I selected the attribute department number from the `DEPT` table and the salary with the alias name "average salary" from the `EMP` table.
For displaying all the department numbers, I used the keyword `LEFT OUTER JOIN` to list every department number in the `DEPT` table; even the average is null.
Finally, the last command, `GROUP BY`, will display each department number with the associated average of the salary for each department.