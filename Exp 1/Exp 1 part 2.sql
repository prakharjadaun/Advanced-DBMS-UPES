CREATE TABLE PRODUCT_MASTER
(
    PRODUCTNO VARCHAR(6),
    DESCRIPTION VARCHAR(15),
    PROFITPERCENT DECIMAL(4,2),
    UNITMEASURE VARCHAR(10),
    QTYONHAND INTEGER,
    REORDERVL INTEGER,
    SELLPRICE DECIMAL(8,2),
    COSTPRICE DECIMAL(8,2)
);
INSERT INTO PRODUCT_MASTER
    (PRODUCTNO,DESCRIPTION,PROFITPERCENT,UNITMEASURE,QTYONHAND,REORDERVL,SELLPRICE,COSTPRICE)
VALUES
    ('P00001', 'T-Shirt', 5, 'Piece', 200, 50, 350, 250),
    ('P0345', 'Shirts', 6 , 'Piece', 150 , 50 , 500, 350),
    ('P06734', 'Cotton jeans', 5, 'Piece', 100, 20, 600, 450),
    ('P07865', 'Jeans', 5 , 'Piece', 100, 20, 750, 500),
    ('P07868', 'Trousers', 2 , 'Piece', 150, 50 , 850, 550),
    ('P07885', 'Pull Overs', 2.5, 'Piece', 80, 30, 700, 450),
    ('P07965', 'Denim jeans', 4, 'Piece', 100, 40, 350, 250),
    ('P07975', 'Lycra tops', 5, 'Piece', 70, 30, 300, 175),
    ('P08865', 'Skirts', 5, 'Piece', 75, 30, 450, 300);
SELECT *
FROM PRODUCT_MASTER;

/*3. d) List the various products available from the Product_Master table.*/
SELECT DESCRIPTION
FROM product_master;

/*4. c) Change the cost price of ‘Trousers’ to rs.950.00.*/
UPDATE PRODUCT_MASTER SET COSTPRICE=950.00 WHERE DESCRIPTION='Trousers';

/*5. b) Delete all products from Product_Master where the quantity on hand is equal to 100*/
DELETE FROM PRODUCT_MASTER WHERE QTYONHAND=100;

/*6. b) Change the size off SellPrice column in Product _Master to 10, 2.*/
ALTER TABLE PRODUCT_MASTER MODIFY COLUMN SELLPRICE DECIMAL
(10,2);

