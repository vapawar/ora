DECLARE
  letter VARCHAR2(1) := 'm';
BEGIN
  IF (letter IN ('a', 'b', 'c')) THEN
    dbms_output.put_line('True');
  ELSE
    dbms_output.put_line('False');
  END IF;
  IF (letter IN ('m', 'n', 'o')) THEN
    dbms_output.put_line('True');
  ELSE
    dbms_output.put_line('False');
  END IF;
  IF (letter IS NULL) THEN
    dbms_output.put_line('True');
  ELSE
    dbms_output.put_line('False');
  END IF;
END;