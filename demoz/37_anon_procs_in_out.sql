DECLARE
  a NUMBER;
  b NUMBER;
  c NUMBER;
PROCEDURE find_min(
    x IN NUMBER,
    y IN NUMBER,
    z OUT NUMBER)
IS
BEGIN
  IF x < y THEN
    z :=x;
  ELSE
    z:=y;
  END IF;
END;
BEGIN
a := 23;
b := 45;
find_min(a,b,c);
dbms_output.put_line('Minimum of 23, 45 is : '||c);
END;