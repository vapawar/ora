CREATE OR REPLACE PROCEDURE BINGO AS
BEGIN
DBMS_OUTPUT.PUT_LINE('BINGO!');
END;


CREATE OR REPLACE PROCEDURE BAMBAM AS 
BEGIN
DBMS_OUTPUT.PUT_LINE('BAM BAM!');
END;


CREATE OR REPLACE PROCEDURE CALL_DYNAMIC(PROC_NAME IN VARCHAR2) AS
BEGIN
EXECUTE IMMEDIATE 'BEGIN ' || PROC_NAME || '; END;';
END;
