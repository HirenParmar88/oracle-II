--EXPLICIT CURSOR

DECLARE
	CURSOR curemp 
	IS 
	SELECT EMPNO,ENAME,JOB 
	FROM EMP;
	
	VEMPNO NUMBER(4);
	VENAME EMP.ENAME%TYPE;
	VJOB EMP.JOB%TYPE;
BEGIN
	OPEN curemp;
	
	DBMS_OUTPUT.PUT_LINE('EMPLOYEE NO'||' '||'NAME'||' '||'JOB');
	
	LOOP
	FETCH curemp INTO VEMPNO,VENAME,VJOB;
	EXIT WHEN curemp%NOTFOUND;
	
	DBMS_OUTPUT.PUT_LINE(CHR(9)|| VEMPNO||CHR(9)|| VENAME||CHR(9)|| VJOB);
	END LOOP;
	CLOSE curemp;
END;
/

