Declare
greetings varchar2(30):='.....Hello World.....';
Begin
DBMS_OUTPUT.PUT_LINE(RTRIM(greetings,'.'));
DBMS_OUTPUT.PUT_LINE(LTRIM(greetings,'.'));
DBMS_OUTPUT.PUT_LINE(TRIM('.' from greetings));
End;