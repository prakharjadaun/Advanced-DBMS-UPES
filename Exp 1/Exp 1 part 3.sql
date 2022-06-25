CREATE TABLE SALESMAN_MASTER
(
    SALESMANNO VARCHAR(6),
    SALESMANNAME VARCHAR(20),
    ADDRESS1 VARCHAR(30),
    ADDRESS2 VARCHAR(30),
    CITY VARCHAR(20),
    PINCODE INTEGER,
    STATE VARCHAR(20),
    SALAMT REAL,
    TGTTOGET DECIMAL,
    YTDSALES DOUBLE(6,2),
    REMARKS VARCHAR(60)
);

INSERT INTO SALESMAN_MASTER
    (SALESMANNO ,SALESMANNAME,ADDRESS1 ,ADDRESS2 ,CITY ,PINCODE ,STATE)
VALUES
    ('S00001', 'Aman', 'A/14', 'Worli', 'Mumbai', 400002, 'Maharashtra'),
    ('S00002', 'Omkar', '65', 'Nariman', 'Mumbai', 400001, 'Maharashtra'),
    ('S00003', 'Raj', 'P-7', 'Bandra', 'Mumbai', 400032, 'Maharashtra'),
    ('S00004', 'Ashish', 'A/5', 'Juhu', 'Mumbai', 400044, 'Maharashtra');
SELECT *
FROM salesman_master;

/*3. f) Find the names of salesman who have a salary equal to Rs.3000.*/
SELECT SALESMANNAME
FROM salesman_master
WHERE SALAMT=3000;

/*4. d) Change the city of the salesman to Pune*/
UPDATE SALESMAN_MASTER SET CITY='Pune';

/*5. a) Delete all salesman from the Salesman_Master whose salaries are equal to Rs.3500.*/
DELETE FROM SALESMAN_MASTER WHERE SALAMT = 3500;

/*8. a) Change the name of the Salesman_Master to sman_mast.*/
ALTER TABLE SALESMAN_MASTER RENAME SMAN_MAST;