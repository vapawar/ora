DECLARE
  x NUMBER(2) := 10;
BEGIN
  IF (x BETWEEN 5 AND 20) THEN
    dbms_output.put_line('True');
  ELSE
    dbms_output.put_line('False');
  END IF;
  IF (x BETWEEN 5 AND 10) THEN
    dbms_output.put_line('True');
  ELSE
    dbms_output.put_line('False');
  END IF;
  IF (x BETWEEN 11 AND 20) THEN
    dbms_output.put_line('True');
  ELSE
    dbms_output.put_line('False');
  END IF;
END;