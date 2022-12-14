create or replace PROCEDURE PROC_INSERT_VENDOR( P_VENDOR_ID NUMBER,
P_VENDOR_NAME IN VARCHAR2,
P_VENDOR_DESC IN VARCHAR2, 
P_CNTRCT_START_DT IN DATE, 
P_CNTRCT_END_DT IN DATE
)
AS
V_CONTRACTID VARCHAR(40) := 'CNTRCT' || TRUNC(DBMS_RANDOM.VALUE(0,1000000));
BEGIN
MERGE INTO VENDOR  USING
DUAL ON ( VENDOR_ID = P_VENDOR_ID AND VENDOR_NAME = P_VENDOR_NAME )
WHEN MATCHED THEN
UPDATE SET 
VENDOR_DESC = P_VENDOR_DESC
WHEN NOT MATCHED THEN 
INSERT VALUES ( 
P_VENDOR_ID, 
P_VENDOR_NAME,
P_VENDOR_DESC,
P_CNTRCT_START_DT,
P_CNTRCT_END_DT,
'N',
'NEW',
V_CONTRACTID
);
COMMIT;
DBMS_OUTPUT.put_line('NEW VENDOR ADDED');
END;
