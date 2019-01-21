CREATE OR REPLACE PROCEDURE proc_test1(tname VARCHAR2, pname VARCHAR2)
AS
str varchar2(60);
pname2 varchar2(20);
tname2 varchar2(20);
cursor cursor1 is select object_name from USER_OBJECTS ab where ab.OBJECT_NAME=tname;
cursor cursor2 is select object_name from USER_OBJECTS ab where ab.OBJECT_NAME=pname;
tb_except exception;
pc_except exception;

BEGIN
open cursor1;
open cursor2;
fetch cursor1 into tname2;
fetch cursor2 into pname2;

if tname2 is null then
raise tb_except;
end if;

if pname2 is null then
raise pc_except;
end if;

str:= 'Begin '||pname||'('''||tname||'''); end;';
EXECUTE IMMEDIATE str;

EXCEPTION
when pc_except then
dbms_output.put_line('procedure not exists.');
when tb_except then
dbms_output.put_line('table not exists.');
when others then
dbms_output.put_line('ERR'||SQLERRM);
END;





CREATE OR REPLACE PROCEDURE proc_test2(tname VARCHAR2)
AS
rcount number;
str varchar2(200);
cursor index_cursor is select index_name from USER_INDEXES ab where ab.TABLE_NAME=tname;
cursor trigger_cursor is select trigger_name from USER_TRIGGERS ab where ab.TABLE_NAME =tname;
cursor constraint_cursor is select constraint_name from USER_CONSTRAINTS ab where ab.TABLE_NAME =tname;
cursor tb_cols_cursor is select column_name,data_type from USER_TAB_COLS ab where ab.TABLE_NAME =tname;
BEGIN
str:='select count(*) from '||tname;
execute immediate str into rcount;
dbms_output.put_line(rcount);
for dt in index_cursor loop
dbms_output.put_line('Index: '||dt.index_name);
end loop;

for dt in trigger_cursor loop
dbms_output.put_line('Trigger: '||dt.trigger_name);
end loop;

for dt in constraint_cursor loop
dbms_output.put_line('constraint: '||dt.constraint_name);
end loop;

for dt in tb_cols_cursor loop
dbms_output.put_line('Column Name: '||RPAD(dt.column_name,15)||' Data Type: '|| dt.data_type);
end loop;

Exception
when others then
dbms_output.put_line(SQLERRM);
END;





BEGIN
proc_test1('TBL_CUST2','PROC_TEST2');
END;

Begin
proc_test2('TBL_CUST');
End;
