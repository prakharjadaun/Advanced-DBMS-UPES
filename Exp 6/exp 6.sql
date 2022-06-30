CREATE TABLE EMPLOYEES (
    EMPLOYEE_ID VARCHAR(10) PRIMARY KEY,
    FIRST_NAME VARCHAR(30) NOT NULL DEFAULT "NOT ASSIGNED",
    LAST_NAME VARCHAR(30) NOT NULL,
    DOB DATE,
    SALARY DECIMAL(25) NOT NULL DEFAULT 0,
    DEPARTMENT_ID VARCHAR(10)
);

INSERT INTO
    EMPLOYEES(
        EMPLOYEE_ID,
        FIRST_NAME,
        LAST_NAME,
        DOB,
        SALARY,
        DEPARTMENT_ID
    )
VALUES
    ("I1", "RAMESH", "KUMAR", "1980-07-20", 12345, "10"),
    ("I2", "SURESH", "KUMAR", "1999-07-21", 12000, "20"),
    ("I3", "PRAKHAR", "JADAUN", "1998-09-23", 13000, "30"),
    ("I4", "SANIDHYA", "JADAUN", "1999-05-12", 14000, "20"),
    ("I5", "ROHIT", "GUPTA", "1999-04-02", 12999, "40"),
    ("I6", "SURAJ", "GUPTA", "1997-06-15", 11000, "20");

/*1) Create View of name emp_view and the column would be Employee_id, Last_Name, salary 
 and department_id only.*/
CREATE VIEW EMP_VIEW AS
SELECT
    EMPLOYEE_ID,
    LAST_NAME,
    SALARY,
    DEPARTMENT_ID
FROM
    EMPLOYEES;

/*Insert values into view(remove the NOT NULL constraint and then insert values):*/
ALTER TABLE
    EMPLOYEES
MODIFY
    LAST_NAME VARCHAR(30) DEFAULT "NULL";

INSERT INTO
    EMP_VIEW (EMPLOYEE_ID, LAST_NAME, SALARY, DEPARTMENT_ID)
VALUES
    ("I7,", "SINGH", 12300, "20"),
    ("I8", "KAPOOR", 14000, "30"),
    ("I9", "KHAN", 13500, "40");

/*Modify, delete and drop operations are performed on view.:*/
/*MODFYING THE VIEW*/ 
CREATE
OR REPLACE VIEW EMP_VIEW AS
SELECT
    LAST_NAME,
    SALARY,
    DEPARTMENT_ID
FROM
    EMPLOYEES;

/*DELETING RECORDS FROM THE VIEW*/
/*DROPPING THE VIEW*/
DROP VIEW EMP_VIEW;

/*Creates a view named salary_view. The view shows the employees in department 20 and 
 their annual salary*/
CREATE VIEW SALARY_VIEW AS
SELECT
    FIRST_NAME,
    LAST_NAME,
    SALARY
FROM
    EMPLOYEES
WHERE
    DEPARTMENT_ID = "20";

SELECT
    *
FROM
    SALARY_VIEW;