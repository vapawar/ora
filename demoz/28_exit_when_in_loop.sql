DECLARE
  a NUMBER(2) := 10;
BEGIN
  -- while loop execution
  WHILE a < 20
  LOOP
    dbms_output.put_line ('value of a: ' || a);
    a := a + 1;
    -- terminate the loop using the exit when statement
    EXIT WHEN a > 15;
END LOOP;
END;