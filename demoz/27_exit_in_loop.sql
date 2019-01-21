DECLARE
  a NUMBER(2) := 10;
BEGIN
  -- while loop execution
  WHILE a < 20
  LOOP
    dbms_output.put_line ('value of a: ' || a);
    a   := a + 1;
    IF a > 15 THEN
      -- terminate the loop using the exit statement
      EXIT;
    END IF;
  END LOOP;
  dbms_output.put_line('Still working...bcoz EXIT only exits loop.');
END;