Declare
cursor c_customers is
select name from customers;
type c_list is varray(6) of customers.name%type;
name_list c_list:=c_list();
counter integer:=0;
Begin
for n in c_customers loop
counter := counter+1;
name_list.extend();
name_list(counter) :=n.name;
dbms_output.put_line('Cusotmer ('||counter||'): '||name_list(counter));
end loop;
End;