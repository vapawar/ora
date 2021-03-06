--JOINS
SELECT * FROM CUSTOMERS;
SELECT * FROM ORDERS;
SELECT ID,NAME,AGE,AMOUNT FROM CUSTOMERS,ORDERS WHERE CUSTOMERS.ID=ORDERS.CUSTOMER_ID;
------------------------------------------------------------------------------------


SELECT ID, NAME, AMOUNT, ORDER_DATE FROM CUSTOMERS INNER JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID;
SELECT ID, NAME, AMOUNT, ORDER_DATE FROM CUSTOMERS LEFT JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID;
SELECT ID, NAME, AMOUNT, ORDER_DATE FROM  CUSTOMERS RIGHT JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID;
SELECT ID, NAME, AMOUNT, ORDER_DATE FROM  CUSTOMERS FULL JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID;
SELECT A.ID, B.NAME,A.SALARY FROM CUSTOMERS A, CUSTOMERS B WHERE A.SALARY = A.SALARY;
SELECT ID, NAME, AMOUNT, ORDER_DATE FROM CUSTOMERS , ORDERS;
-----------------------------------------------------------


SELECT ID, NAME, AMOUNT, ORDER_DATE FROM CUSTOMERS LEFT JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID
UNION
SELECT ID, NAME, AMOUNT, ORDER_DATE FROM  CUSTOMERS RIGHT JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID;
SELECT ID, NAME, AMOUNT, ORDER_DATE FROM CUSTOMERS LEFT JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID
UNION ALL
SELECT ID, NAME, AMOUNT, ORDER_DATE FROM  CUSTOMERS RIGHT JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID;
SELECT ID, NAME, AMOUNT, ORDER_DATE FROM CUSTOMERS LEFT JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID
INTERSECT
SELECT ID, NAME, AMOUNT, ORDER_DATE FROM  CUSTOMERS RIGHT JOIN ORDERS ON CUSTOMERS.ID=ORDERS.CUSTOMER_ID;
------------------------------------------------------------------------------------------------------


SELECT * FROM CUSTOMERS WHERE SALARY IS NULL;
SELECT * FROM CUSTOMERS WHERE SALARY IS NOT NULL;
----------------------------------------------


SELECT ID AS "CUSTOMER ID", NAME AS "CUSTOMER NAME" FROM CUSTOMERS;
-----------------------------------------------------------------


CREATE INDEX IDX_ID ON CUSTOMERS(ID,NAME);
DROP INDEX IDX_ID;
ALTER INDEX IDX_ID RENAME TO IDXZ;
--------------------------------


SELECT * FROM ALL_TABLES AT WHERE AT.OWNER ='VP';
SELECT * FROM ALL_INDEXES AI WHERE AI.TABLE_OWNER='VP';