Declare
greetings varchar2(11):='hello world';
Begin
DBMS_OUTPUT.PUT_LINE(upper(greetings));
DBMS_OUTPUT.PUT_LINE(lower(greetings));
DBMS_OUTPUT.PUT_LINE(initcap(greetings));
DBMS_OUTPUT.PUT_LINE(substr(greetings,1,1));
DBMS_OUTPUT.PUT_LINE(substr(greetings,-1,1));
DBMS_OUTPUT.PUT_LINE(substr(greetings,7,5));
DBMS_OUTPUT.PUT_LINE(substr(greetings,2));
DBMS_OUTPUT.PUT_LINE(instr(greetings,'e'));
End;
