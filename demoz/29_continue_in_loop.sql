DECLARE
  a NUMBER(2) := 10;
BEGIN
  -- while loop execution
  WHILE a < 20
  LOOP
    dbms_output.put_line ('value of a: ' || a);
    a   := a + 1;
    IF a = 15 THEN
      -- skip the loop using the CONTINUE statement
      a := a + 1;
      CONTINUE;
    END IF;
  END LOOP;
END;