CREATE TABLE STUD_JC(
	SNO NUMBER(3) CONSTRAINTS PKSID PRIMARY KEY,
	NAME VARCHAR(10);
	COURSE VARCHAR2(10) CONSTRAINTS CKCOURSE CHECK(COURSE='BCA' OR COURSE='BBA'));

CREATE TABLE FEES_JC(
	SNO NUMBER(3) CONSTRAINTS PKSID REFERENCES STUD_JC,
	AMOUNT NUMBER(7);
	PAID_DATE DATE);
