CREATE OR REPLACE FUNCTION total_customers
  RETURN NUMBER
IS
  total NUMBER(2):= 0;
BEGIN
  SELECT COUNT (*) INTO total FROM customers;
  RETURN total;
END;


--DECLARE
--  custs NUMBER(2);
--BEGIN
--  custs:=TOTAL_CUSTOMERS();
--  DBMS_OUTPUT.put_line('Total  customers are : '||custs);
--END;