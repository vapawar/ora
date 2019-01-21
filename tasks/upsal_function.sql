create or replace function upsal(empNo number)
return number
As
new_sal number;
old_sal number;
Begin
select salary into old_sal from customers where id=empNo;
new_sal := old_sal + old_sal*0.10;
update customers set salary=new_sal where id=empno;
dbms_output.put_line('salary is updated for employee '||empNo||' to '||new_sal);
return 0;
End;

Declare
num number;
Begin
num:=upsal(6);
End;