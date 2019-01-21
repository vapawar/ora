Declare
a number;
PROCEDURE squarenum(x in out number) is
Begin
x := x * x ;
End;
Begin
a := 23;
squarenum(a);
dbms_output.put_line('square of 23 is : '||a);
End;