DECLARE
  c_id customers.id%type;
  c_name customers.name%type;
  c_addr customers.ADDRESS%type;
  CURSOR c_customers
  IS
    SELECT id, name, ADDRESS FROM customers;
BEGIN
  OPEN c_customers;
  LOOP
    FETCH c_customers INTO c_id, c_name, c_addr;
    dbms_output.put_line(c_id||' '||c_name||c_addr);
  END LOOP;
  CLOSE c_customers;
END;