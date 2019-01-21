Declare
message varchar2(20):='Hello world..';
Begin
DBMS_OUTPUT.PUT_LINE(message);
End;


DECLARE
--variable declaration
message varchar2(20):= 'Hello, World!';
BEGIN
/** PL/SQL executable statement(s) */
dbms_output.put_line(message); 
END;