Declare
c_id customers.id%type:=1;
c_name customers.name%type;
c_address customers.address%type;
c_salary customers.salary%type;
Begin
select name, address, salary into c_name, c_address, c_salary from customers where id=c_id;
dbms_output.put_line('Cusotmer '||c_name||' from '||c_address||' earns '|| c_salary);
End;