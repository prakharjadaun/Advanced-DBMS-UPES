/*     
1. Create the following table.
Supplier-(scode,sname,scity,turnover)
Part-(pcode,weigh,color,cost,sellingprice)
Supplier_Part-(scode,pcode,qty)
*/
CREATE TABLE SUPPLIER
(
    SCODE INT PRIMARY KEY,
    SNAME VARCHAR(30),
    SCITY VARCHAR(30),
    TURNOVER FLOAT
);
CREATE TABLE PART
(
    PCODE INT PRIMARY KEY,
    WEIGH FLOAT,
    COLOR VARCHAR(20),
    COST DECIMAL(10,2),
    SELLINGPRICE DECIMAL(10,2)
);

CREATE TABLE SUPPLIER_PART
(
    SCODE INT REFERENCES SUPPLIER(SCODE),
    PCODE INT REFERENCES PART(PCODE),
    QTY INT,
    PRIMARY KEY (SCODE,PCODE)
);

/*2. Populate the table*/

INSERT INTO SUPPLIER
    (SCODE,SNAME,SCITY,TURNOVER)
VALUES
    (1, "PATEL", "Dubai", 80),
    (2, "MANISH", "Bombay", 70),
    (3, "SURESH", "Pune", 50),
    (4, "RAM", "Bombay", 50),
    (5, "SHYAM", "Kashmir", 40);
SELECT *
FROM SUPPLIER;

INSERT INTO PART
    (PCODE,WEIGH,COLOR,COST,SELLINGPRICE)
VALUES
    (1, 24, 'RED', 30, 4000.00),
    (2, 36, 'BLUE', 35, 4000.00),
    (3, 27, 'ORANGE', 20, 3000.00),
    (4, 30, 'GREEN', 40, 3900.00),
    (5, 38, 'YELLOW', 20, 4000.00);
SELECT *
FROM PART;


INSERT INTO SUPPLIER_PART
    (SCODE,PCODE,QTY)
VALUES
    (2, 2, 4),
    (1, 1, 3),
    (3, 3, 7),
    (5, 5, 8),
    (4, 4, 1);
SELECT *
FROM SUPPLIER_PART;

/*3. Write appropriate SQL Statement for the following:*/

/*1. Get the supplier number and part number in ascending order of supplier number.*/
SELECT SCODE, PCODE
FROM SUPPLIER_PART
ORDER BY SCODE;

/*2. Get the details of supplier who operate from Bombay with turnover 50.*/
SELECT *
FROM SUPPLIER
WHERE SCITY='Bombay' AND TURNOVER=50;

/*3. Get the total number of supplier.*/
SELECT COUNT(SCODE)
FROM SUPPLIER;

/*4. Get the part number weighing between 25 and 35*/
SELECT PCODE
FROM PART
WHERE WEIGH BETWEEN 25 AND 35;

/*5. Get the supplier number whose turnover is null.*/
SELECT SCODE
FROM SUPPLIER
WHERE TURNOVER=null;

/*6. Get the part number that cost 20, 30 or 40 rupees.*/
SELECT PCODE
FROM PART
WHERE COST=20 OR COST=30 OR COST=40;

/*7. Get the total quantity of part 2 that is supplied.*/
SELECT SUM(QTY)
FROM SUPPLIER_PART WHERE PCODE=2;

/*8. Get the name of supplier who supply part 2.*/
SELECT SNAME FROM SUPPLIER WHERE SCODE=2;

/*9.  Get the part number whose cost is greater than the average cost*/
SELECT PCODE
FROM PART
WHERE COST>(SELECT AVG(COST) FROM PART);

/*10. Get the supplier number and turnover in descending order of turnover*/
SELECT SCODE, TURNOVER
FROM SUPPLIER
ORDER BY TURNOVER DESC;



