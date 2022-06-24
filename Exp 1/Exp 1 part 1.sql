CREATE TABLE CLIENT_MASTER
(
    CLIENTNO VARCHAR(6),
    NAME VARCHAR(20),
    ADDRESS1 VARCHAR(30),
    ADDRESS2 VARCHAR(30),
    CITY VARCHAR(15),
    PINCODE INTEGER,
    STATE VARCHAR(15),
    BALDUE DECIMAL(10,2)
);

/*
DDL (data definition language) => create 
DML (data manipulation language)=> insertion
DQL (data query language)=> selection command

*/

INSERT INTO CLIENT_MASTER
    (CLIENTNO,NAME,CITY,PINCODE,STATE,BALDUE)
VALUES
    ('C00001', 'Ivan bayross', 'Mumbai', 400054, 'Maharashtra', 15000);
INSERT INTO CLIENT_MASTER
    (CLIENTNO,NAME,CITY,PINCODE,STATE,BALDUE)
VALUES('C00002', 'Mamta muzumdar', 'Madras', 780001 , 'Tamil nadu', 0),
    ('C00003 ', 'Chhaya bankar', 'Mumbai', 400057, 'Maharashtra', 5000),
    ('C00004', 'Ashwini joshi', 'Bangalore', 560001, 'Karnataka', 0),
    ('C00005 ', 'Hansel colaco', 'Mumbai', 400060, 'Maharashtra', 2000),
    ('C00006', 'Deepak sharma', 'Mangalore', 560050, 'Karnataka', 0);

/*3. a) Find out the names of all the clients*/
SELECT NAME
FROM CLIENT_MASTER;

/*3. b) Retrieve the entire contents of the Client_Master table*/
SELECT *
FROM CLIENT_MASTER;

/*3. c) Retrieve the list of names, city and the state of all the clients.*/
SELECT NAME, CITY, STATE
FROM client_master;

/*3. e) List all the clients who are located in Mumbai.*/
SELECT NAME
FROM CLIENT_MASTER
WHERE CITY='Mumbai';

/*4 a) Change the city of ClientNo ‘C00005’ to ‘Bangalore’.*/
UPDATE CLIENT_MASTER SET CITY='Bangalore' WHERE CLIENTNO='C00005';

/*4. b) Change the BalDue of ClientNo ‘C00001’ to Rs.1000.*/
UPDATE CLIENT_MASTER SET BALDUE=1000 WHERE CLIENTNO='C00001';

/*5. c) Delete from Client_Master where the column state holds the value ‘Tamil Nadu’*/
DELETE FROM CLIENT_MASTER WHERE STATE='Tamil Nadu';

/*6. a) Add a column called ‘Telephone’ of data type integer to the Client_Master table*/
ALTER TABLE CLIENT_MASTER ADD Telephone INTEGER;

/*7. a) Destroy the table Client_Master along with its data*/
DROP TABLE CLIENT_MASTER;