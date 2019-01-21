--CONSTRAINTLESS
CREATE TABLE CUSTOMERS
  (
    ID      NUMBER,
    NAME    VARCHAR2 (20),
    AGE     NUMBER,
    ADDRESS VARCHAR2 (25) ,
    SALARY  NUMBER (18, 2)
  );
DROP TABLE CUSTOMERS;



--NOT NULL
CREATE TABLE CUSTOMERS
  (
    ID      NUMBER  NOT NULL,
    NAME    VARCHAR2 (20),
    AGE     NUMBER,
    ADDRESS VARCHAR2 (25) ,
    SALARY  NUMBER (18, 2)
  );
DROP TABLE CUSTOMERS;



--DAFAULT
CREATE TABLE CUSTOMERS
  (
    ID      NUMBER,
    NAME    VARCHAR2 (20),
    AGE     NUMBER,
    ADDRESS VARCHAR2 (25) ,
    SALARY  NUMBER (18, 2) DEFAULT 5000
  );
DROP TABLE CUSTOMERS;

--UNIQUE
CREATE TABLE CUSTOMERS
  (
    ID      NUMBER,
    NAME    VARCHAR2 (20),
    AGE     NUMBER,
    ADDRESS VARCHAR2 (25) ,
    SALARY  NUMBER (18, 2),
    CONSTRAINT CUST_UKEY UNIQUE(ID)
  );
DROP TABLE CUSTOMERS;



--PKEY
CREATE TABLE CUSTOMERS
  (
    ID      NUMBER,
    NAME    VARCHAR2 (20),
    AGE     NUMBER,
    ADDRESS VARCHAR2 (25) ,
    SALARY  NUMBER (18, 2),
	CONSTRAINT CUST_PKEY PRIMARY KEY(ID)
  );
DROP TABLE CUSTOMERS;



--FKEY
CREATE TABLE CUSTOMERS
  (
    ID      NUMBER,
    NAME    VARCHAR2 (20),
    AGE     NUMBER,
    ADDRESS VARCHAR2 (25),
    SALARY  NUMBER (18, 2),
    CONSTRAINT CUST_FKEY FOREIGN KEY(ID) REFERENCES CUST2(ID)
  );
DROP TABLE CUSTOMERS;



--CHECK
CREATE TABLE CUSTOMERS
  (
    ID      NUMBER,
    NAME    VARCHAR2 (20),
    AGE     NUMBER,
    ADDRESS VARCHAR2 (25),
    SALARY  NUMBER (18, 2),
    CONSTRAINT CUST_CHECK CHECK(AGE >= 18)
  );
DROP TABLE CUSTOMERS;



--INDEX
CREATE TABLE CUSTOMERS
  (
    ID      NUMBER,
    NAME    VARCHAR2 (20),
    AGE     NUMBER,
    ADDRESS VARCHAR2 (25) ,
    SALARY  NUMBER (18, 2)
  );
DROP TABLE CUSTOMERS;
CREATE INDEX CUST_IDX_AGE ON CUSTOMERS ( AGE );
SELECT * FROM USER_INDEXES;
DROP INDEX CUST_IDX_AGE;



--VIEWS
CREATE TABLE CUSTOMERS
  (
    ID      NUMBER,
    NAME    VARCHAR2 (20),
    AGE     NUMBER,
    ADDRESS VARCHAR2 (25) ,
    SALARY  NUMBER (18, 2)
  );
DROP TABLE CUSTOMERS;
CREATE VIEW CUST_VIEW AS SELECT * FROM CUSTOMERS;
SELECT * FROM USER_VIEWS;
DROP VIEW CUST_VIEW;



--named constraint
alter table tblx add constraint tblx_xnull check(id is not null);
alter table tblx add constraint tblx_xnull check(id > 0);
alter table tblx add constraint tblx_ukey unique key(id);
alter table tblx add constraint tblx_pkey primary key(id);
alter table tblx add constraint tblx_fkey foreign key(id2) references test2(id);