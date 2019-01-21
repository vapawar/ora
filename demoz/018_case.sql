DECLARE
  grade CHAR(1) := 'A';
BEGIN
  CASE grade
  WHEN 'A' THEN
    dbms_output.put_line('Excellent');
  WHEN 'B' THEN
    dbms_output.put_line('Very good');
  WHEN 'C' THEN
    dbms_output.put_line('Well done');
  WHEN 'D' THEN
    dbms_output.put_line('You passed');
  WHEN 'F' THEN
    dbms_output.put_line('Better try again');
  ELSE
    dbms_output.put_line('No such grade');
  END CASE;
END;


--searched case
--DECLARE
--grade char(1) := 'B';
--BEGIN
--case
--when grade = 'A' then dbms_output.put_line('Excellent');
--when grade = 'B' then dbms_output.put_line('Very good');
--when grade = 'C' then dbms_output.put_line('Well done');
--when grade = 'D' then dbms_output.put_line('You passed');
--when grade = 'F' then dbms_output.put_line('Better try again');
--else dbms_output.put_line('No such grade');
--end case;
--end;