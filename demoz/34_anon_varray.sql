Declare
type namearray is varray(5) of varchar2(10);
type grades is varray(5) of integer;
names namearray;
marks grades;
total integer;
Begin
names := namearray('vinod','pramod','ajay','vijay','aditya');
marks := grades(98,97,78,87,92);
total := names.count;
dbms_output.put_line('Total students are '||total);
for i in 1 .. total loop
dbms_output.put_line('Student : '|| names(i)||' Marks : '||marks(i));
end loop;
End;