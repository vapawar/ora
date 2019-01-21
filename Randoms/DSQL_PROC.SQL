CREATE OR REPLACE PROCEDURE proc_test1(pname VARCHAR2, tname VARCHAR2)
AS
str varchar2(60);
BEGIN
str:= 'Begin '||pname||'('''||tname||'''); end;';
DBMS_OUTPUT.PUT_LINE(str);
EXECUTE IMMEDIATE str;
END;

CREATE OR REPLACE PROCEDURE proc_test2(tname VARCHAR2)
AS
BEGIN
DBMS_OUTPUT.PUT_LINE(tname);
END;

BEGIN
proc_test1('PROC_TEST2','TEST2');
END;