CREATE OR REPLACE FUNCTION STRING_PALINDROM_CHECK(STR VARCHAR2)
RETURN VARCHAR2
AS
	REV VARCHAR2(10);
	L NUMBER;
	
	BEGIN
	REV :='';
	L:=LENGTH(STR);
	
	FOR C IN REVERSE 1..L
	LOOP
		REV:=REV || SUBSTR(STR,C,1);
	END LOOP;
	
	IF STR=REV THEN
		RETURN 'PALINDROME STRING';
	ELSE
		RETURN 'NOT PALINDROME STRING';
	END IF;
END;
/
   
  --->FIRE THE QUERY
  
   SELECT STRING_PALINDROM_CHECK('CVIC') FROM DUAL;