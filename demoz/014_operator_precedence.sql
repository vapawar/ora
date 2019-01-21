DECLARE
  a NUMBER(2) := 20;
  b NUMBER(2) := 10;
  c NUMBER(2) := 15;
  d NUMBER(2) := 5;
  e NUMBER(2) ;
BEGIN
  e := (a + b) * c / d;
  -- ( 30 * 15 ) / 5
  dbms_output.put_line('Value of (a + b) * c / d is : '|| e );
  e := ((a + b) * c) / d;
  -- (30 * 15 ) / 5
  dbms_output.put_line('Value of ((a + b) * c) / d is : ' || e );
  e := (a + b) * (c / d);
  -- (30) * (15/5)
  dbms_output.put_line('Value of (a + b) * (c / d) is : '|| e );
  e := a + (b * c) / d;
  -- 20 + (150/5)
  dbms_output.put_line('Value of a + (b * c) / d is : ' || e );
END;