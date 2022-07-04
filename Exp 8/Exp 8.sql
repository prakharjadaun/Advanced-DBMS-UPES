/*Create a sequence by name EMPID_SEQ starting with value 100 with an interval of 1*/
CREATE SEQUENCE EMPID_SEQ START WITH 100 INCREMENT BY 1 MINVALUE 100 CYCLE;
/*Write a SQL command for finding the current and the next status of EMPID_SEQ.*/
SELECT EMPID_SEQ.NEXTVAL
FROM DUAL;
SELECT EMPID_SEQ.CURRVAL
FROM DUAL;
/*Change the Cache value of the sequence EMPID_SEQ to 20 and maxvalue to 1000.*/
ALTER SEQUENCE EMPID_SEQ MAXVALUE 1000 CACHE 20;
/*Insert values in employees table using sequences for employee_id column.*/
CREATE TABLE EMPLOYEES (
    EMPLOYEE_ID VARCHAR(30),
    NAME VARCHAR(30),
    DEPARTMENT_ID VARCHAR(30)
);
INSERT INTO EMPLOYEES
VALUES (EMPID_SEQ.NEXTVAL, 'a', 'a');
SELECT *
FROM EMPLOYEES;
/*Drop sequence EMPID_SEQ. */
DROP SEQUENCE EMPID_SEQ;
/*Create a sequence called REVERSE to generate numbers in the descending order from 10000 
 to 1000 with a decrement of 5.*/
CREATE SEQUENCE REVERSE START WITH 10000 INCREMENT BY -5 MINVALUE 1000 MAXVALUE 10000 CYCLE;