DECLARE
  i NUMBER(9);
  j NUMBER(9);
BEGIN
  i := 2;
  LOOP
    j:= 2;
    LOOP
      EXIT
    WHEN ((mod(i, j) = 0) OR (j = i));
      j             := j +1;
    END LOOP;
    IF (j = i ) THEN
      dbms_output.put_line(i || ' is prime');
    END IF;
    i := i + 1;
    EXIT
  WHEN i = 2048;
  END LOOP;
END;