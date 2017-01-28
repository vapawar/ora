CREATE TABLE test_blob_data
(
id NUMBER,
lob_text BLOB
);

select * from test_blob_data;
insert into test_blob_data values (104, utl_raw.cast_to_raw('Hello, vinod pawar'));
select ID, UTL_RAW.CAST_TO_VARCHAR2(LOB_TEXT)  from test_blob_data;

create or replace procedure get_test_blob_data_proc(knum number)
As
local_data blob;
Begin
DBMS_OUTPUT.ENABLE(100000);
select lob_text into local_data from test_blob_data where id=knum;
DBMS_OUTPUT.PUT_LINE(UTL_RAW.CAST_TO_VARCHAR2(local_data));
End;

Create or replace procedure set_test_blob_data_proc
As
local_data blob;
Begin
insert into test_blob_data values(102,empty_blob());
insert into test_blob_data values (103, to_blob(utl_raw.cast_to_raw('20152016')));
insert into test_blob_data values (104, utl_raw.cast_to_raw('Hello, vinod pawar'));
End;
