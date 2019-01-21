DECLARE
  total_rows NUMBER(2);
BEGIN
  UPDATE customers SET salary = salary + 500;
  IF sql%notfound THEN
    dbms_output.put_line('No data found....');
  elsif sql%found THEN
    dbms_output.put_line(total_rows ||' customers are selected');
  END IF;
END;