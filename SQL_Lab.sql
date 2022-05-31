mysql;
USE COMPANY1;

/*1. List all Employees whose salary is between 1,000 AND 2,000. 
Show the Employee Name, Department and Salary*/
SELECT ENAME, DNAME, SAL FROM EMP
JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO
WHERE SAL BETWEEN 1000 AND 2000
ORDER BY SAL DESC;

/*2. Count the number of people in department 30 who receive a salary and the number of people who receive a commission*/
SELECT EMP.DEPTNO, COUNT(SAL) AS NUMBER_OF_PEOPLE_RECEIVE_SALARY, 
COUNT(COMM) AS NUMBER_OF_PEOPLE_RECEIVE_COMMISSION FROM EMP
WHERE EMP.DEPTNO = 30;

/*3. Find the name and salary of employees in Dallas*/
SELECT ENAME AS ENAME_IN_DALLAS, SAL FROM EMP
JOIN DEPT ON EMP.DEPTNO = DEPT.DEPTNO
WHERE LOC = 'Dallas'
ORDER BY ENAME;

/*4. List all departments that do not have any employees*/
SELECT DNAME AS DNAME_WITHOUT_EMPLOYEES FROM DEPT
WHERE DEPT.DEPTNO NOT IN (SELECT EMP.DEPTNO FROM EMP);

/*5. List the department number and average salary of each department*/
SELECT DEPT.DEPTNO, AVG(SAL) AS AVERAGE_SALARY FROM DEPT
LEFT OUTER JOIN EMP ON DEPT.DEPTNO = EMP.DEPTNO
GROUP BY DEPT.DEPTNO;