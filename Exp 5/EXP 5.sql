/*1.    List the Deptno where there are no emps.*/
SELECT DEPT.DEPTNO 
FROM DEPT
LEFT JOIN EMP ON EMP.DEPTNO = DEPT.DEPTNO
WHERE ENAME IS NULL;

/*2. List the No.of emp’s and Avg salary within each department for each job. */
SELECT COUNT(EMP.ENAME), AVG(EMP.SAL)
FROM EMP,DEPT
WHERE EMP.DEPTNO=DEPT.DEPTNO
GROUP BY JOB;
 
/*3. Find the maximum average salary drawn for each job except for ‘President’.*/
SELECT MAX(SAL) 
FROM EMP 
WHERE SAL IN (SELECT AVG(SAL) FROM EMP WHERE JOB<>'PRESIDENT' GROUP BY JOB);

/*4. List the department details where at least two emps are working. */
SELECT DEPT.*
FROM EMP,DEPT 
WHERE EMP.DEPTNO = DEPT.DEPTNO
GROUP BY DEPT.DNAME HAVING (COUNT(EMP.ENAME) > 2);

/* 5. List the no. of emps in each department where the no. is more than 3.*/
SELECT EMP.ENAME
FROM EMP 
GROUP BY EMP.DEPTNO
HAVING COUNT(EMP.ENAME)>3;

/*6. List the names of the emps who are getting the highest sal dept wise. */
SELECT ENAME 
FROM EMP 
WHERE SAL IN (SELECT MAX(SAL) FROM EMP GROUP BY DEPTNO);

/*7. List the Deptno and their average salaries for dept with the average salary less than the 
averages for all departments.*/ 
SELECT DEPTNO, AVG(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING AVG(SAL)<(SELECT AVG(SAL) FROM EMP);