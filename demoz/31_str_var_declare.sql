Declare
name varchar2(20);
company varchar2(30);
introduction clob;
choice char(1);
Begin
name:='John Smith';
company:='Infotech';
Introduction:='Hello ! I ''m John Smith from Infotech.';
choice:='y';
If choice = 'y' then
dbms_output.put_line(name);
dbms_output.put_line(company);
dbms_output.put_line(introduction);
End If;
End;