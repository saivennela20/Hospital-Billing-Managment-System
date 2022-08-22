CREATE OR REPLACE VIEW V_ACTIVE_CUSTOMERS AS
( 
SELECT C.CUST_ID,
C.CUST_FIRST_NAME,
C.CUST_LAST_NAME,
C.CUST_MIDDLE_NAME,
C.CUST_GENDER,
C.CUST_MARITAL_STATUS,
C.CUST_EMAIL,
C.CUST_DOB,
C.CUST_EFFECTIVE_FROM,
C.CUST_EFFECTIVE_TO ,
C.IS_ACTIVE,
A.ADDRESS_LINE_1,
A.ADDRESS_LINE_2,
A.CITY,
A.CUST_STATE,
A.REGION,
A.ZIPCODE,
A.PHONE_1
FROM CUSTOMER C, CUST_CONTACT_DETAILS A
WHERE C.CUST_ID = A.CUST_ID
AND C.IS_ACTIVE = 'Y' );