CREATE TABLE CLIENT_MASTER_1
(
    CLIENTNO VARCHAR(6) PRIMARY KEY CHECK(CLIENTNO LIKE 'C%'),
    NAME VARCHAR(20) NOT NULL,
    ADDRESS1 VARCHAR(30),
    ADDRESS2 VARCHAR(30),
    CITY VARCHAR(15),
    PINCODE INTEGER,
    STATE VARCHAR(15),
    BALDUE DECIMAL(10,2)
);

INSERT INTO CLIENT_MASTER_1
    (CLIENTNO,NAME,CITY,PINCODE,STATE,BALDUE)
    VALUES('C00001', 'Ivan bayross', 'Mumbai', 400054, 'Maharashtra', 15000);

INSERT INTO CLIENT_MASTER_1
    (CLIENTNO,NAME,CITY,PINCODE,STATE,BALDUE)
    VALUES('C00002', 'Mamta muzumdar', 'Madras', 780001 , 'Tamil nadu', 0),
    ('C00003 ', 'Chhaya bankar', 'Mumbai', 400057, 'Maharashtra', 5000),
    ('C00004', 'Ashwini joshi', 'Bangalore', 560001, 'Karnataka', 0),
    ('C00005 ', 'Hansel colaco', 'Mumbai', 400060, 'Maharashtra', 2000),
    ('C00006', 'Deepak sharma', 'Mangalore', 560050, 'Karnataka', 0);

SELECT *
FROM CLIENT_MASTER_1;


