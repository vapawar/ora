DECLARE
PROCEDURE compare(
    value   VARCHAR2,
    pattern VARCHAR2 )
IS
BEGIN
  IF value LIKE pattern THEN
    dbms_output.put_line ('True');
  ELSE
    dbms_output.put_line ('False');
  END IF;
END;

BEGIN
  compare('Zara Ali', 'Z%A_i');
  compare('Nuha Ali', 'Z%A_i');
END;