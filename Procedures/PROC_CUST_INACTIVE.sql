create or replace PROCEDURE PROC_CUST_INACTIVE ( P_CUST_ID IN VARCHAR2 )
AS
VCUSTID VARCHAR(20);
 BEGIN
 SELECT CUST_ID INTO VCUSTID FROM CUSTOMER WHERE CUST_ID = P_CUST_ID AND IS_ACTIVE = 'Y';
 IF SQL%FOUND
 THEN
 UPDATE CUSTOMER SET IS_ACTIVE = 'N' , 
 CUST_EFFECTIVE_TO = SYSTIMESTAMP  
 WHERE CUST_ID = P_CUST_ID;
 commit;
 DBMS_OUTPUT.PUT_LINE('CUSTOMER IS NO LONGER ACTIVE');
 END IF;
 EXCEPTION
 WHEN NO_DATA_FOUND THEN
  DBMS_OUTPUT.PUT_LINE('NO SUCH CUSTOMER FOUND');
 END;