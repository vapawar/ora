DECLARE
  x NUMBER := 10;
BEGIN
  LOOP
    dbms_output.put_line(x);
    x := x + 10;
    EXIT
  WHEN x > 50;
  END LOOP;
  -- after exit, control resumes here
  dbms_output.put_line('After Exit x is: ' || x);
END;