DECLARE
  a NUMBER(2) := 10;
BEGIN
  <<loopstart>>
  -- while loop execution
  WHILE a < 20
  LOOP
    dbms_output.put_line ('value of a: ' || a);
    a   := a + 1;
    IF a = 15 THEN
      a := a + 1;
      GOTO loopstart;
    END IF;
  END LOOP;
END;