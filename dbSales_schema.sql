DROP DATABASE IF EXISTS dbSales;
CREATE DATABASE dbSales
DEFAULT CHARACTER SET utf8;
USE dbSales;

CREATE TABLE CUSTOMER
(
	CustNo  CHAR (8) not null,
    CustFirstName VARCHAR(50) not null,
    CustLastName  VARCHAR (50) not null,
    CustCity VARCHAR (40),
    CustState   CHAR (2) not null,
    CustZip CHAR (10),
    CustBal double (10,2),
    CONSTRAINT CustNo_PK PRIMARY KEY (CustNo)
);

CREATE TABLE EMPLOYEE
(
	EmpNo  CHAR (8) not null,
    EmpFirtsName VARCHAR(50) not null,
    EmpLastName  VARCHAR (50) not null,
    EmpPhone  CHAR (14),
    EmpEmail VARCHAR (50) not null,
    CONSTRAINT EmpNo_PK PRIMARY KEY (EmpNo)
);

CREATE TABLE OrderTbl
(
	OrdNo  CHAR (8) not null,
    OrdDate DATE not null,
    CustNo  CHAR (8) not null,
    EmpNo   CHAR (8) null,
    CONSTRAINT OrdNo_PK PRIMARY KEY (OrdNo)
);

ALTER TABLE OrderTbl
ADD CONSTRAINT CUSTOMER_OrderTbl_CustNo
FOREIGN KEY (CustNo) REFERENCES CUSTOMER (CustNo);

ALTER TABLE OrderTbl
ADD CONSTRAINT EMPLOYEE_OrderTbl_EmpNo
FOREIGN KEY (EmpNo) REFERENCES EMPLOYEE (EmpNo);


