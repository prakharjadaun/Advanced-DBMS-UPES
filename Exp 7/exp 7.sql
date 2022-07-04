/*Create an index of name employee_idx on EMPLOYEES with column Last_Name, 
 Department_id */
CREATE INDEX EMPLOYEE_IDX ON EMPLOYEES(LAST_NAME,DEPARTMENT_ID);
SELECT * FROM EMPLOYEE_IDX;

/*Find the ROWID for the above table and create a unique index on employee_id column of 
 the EMPLOYEES.*/
SELECT @ROWID:=@ROWID+1 AS ROWID FROM EMPLOYEES,(SELECT @ROWID:=0) AS INIT;
CREATE UNIQUE INDEX EMPLOYEE_UNI_IDX ON EMPLOYEES(EMPLOYEE_ID);

/*3) Create a reverse index on employee_id column of the EMPLOYEES.*/
CREATE INDEX IDX ON EMPLOYEES(EMPLOYEE_ID DESC);

/*4) Create a unique and composite index on employee_id and check whether there is duplicity 
 of tuples or not.*/
CREATE UNIQUE INDEX INDEX2 ON EMPLOYEES(EMPLOYEE_ID,DEPARTMENT_ID);

/*Create Function-based indexes defined on the SQL functions UPPER(column_name) or 
 LOWER(column_name) to facilitate case-insensitive searches(on column Last_Name).*/
CREATE INDEX UPPER_COL1 ON EMPLOYEES((UPPER(LAST_NAME)));
CREATE INDEX LOWER_COL1 ON EMPLOYEES((LOWER(LAST_NAME)));
 
 
/*6) Drop the function based index on column Last_Name.*/
ALTER TABLE EMPLOYEES DROP INDEX UPPER_COL1;
ALTER TABLE EMPLOYEES DROP INDEX LOWER_COL1;

DROP INDEX EMPLOYEE_UNI_IDX ON EMPLOYEES;
DROP INDEX IDX ON EMPLOYEES;