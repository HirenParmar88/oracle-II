DECLARE
	VSNO STUDENT1%TYPE;
	VNAME STUDENT1%TYPE;
	VTID FEES%TYPE;
	VAMTPAID FEES%TYPE;
	VTDATE FEES%TYPE;
	VCOURSE STUDENT1%TYPE;
	
	CURSOR STUDFEE 
	IS
	SELECT S.SNO,S.NAME,S.COURSE,F.TID,F.AMTPAID,F.TDATE
	FROM STUDENT1 S,FEES F WHERE S.SNO=F.TID AND S.SNO=&NO;
BEGIN
	OPEN STUDFEE;
	FETCH STUDFEE INTO VSNO,VNAME,VCOURSE,VTID,VAMTPAID,VTDATE;
	DBMS_OUTPUT.PUT_LINE('Student No:' ||VSNO ||'Student Name'||VNAME||'COURSE'||VCOURSE);
	LOOP
		VTOT:=VTOT+VAMTPAID;
		DBMS_OUTPUT.PUT_LINE(VTNO||' '||VAMTPAID||' '||VTDATE);
		FETCH STUDFEE INTO VSNO,VNAME,VCOURSE,VTID,VAMTPAID,VTDATE;
		EXIT WHEN STUDFEE%NOT FOUND;
		END LOOP;
	DBMS_OUTPUT.PUT_LINE('Total Paid'||VTOT);
	CLOSE STUDFEE;

END;
/