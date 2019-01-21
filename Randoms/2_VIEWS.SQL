/*
Oracle CREATE VIEW
Syntax:
CREATE VIEW view_name AS
SELECT columns
FROM tables
WHERE conditions;
*/
CREATE TABLE "SUPPLIERS"
(
"SUPPLIER_ID"      NUMBER,
"SUPPLIER_NAME"    VARCHAR2(4000),
"SUPPLIER_ADDRESS" VARCHAR2(4000)
);
CREATE TABLE "ORDERS"
(
"ORDER_NO." NUMBER,
"QUANTITY"  NUMBER,
"PRICE"     NUMBER
);

create view orders_details as select * from SUPPLIERS,ORDERS;
select * from orders_details;

create or replace view orders_details as select SUPPLIER_ID,sp.SUPPLIER_NAME, os.PRICE, os.QUANTITY from SUPPLIERS sp, ORDERS os;
select * from ORDERS_DETAILS;
create view v2 as select * from ORDERS_DETAILS;
select * from V2;
select * from V$version;

drop view