create or replace PROCEDURE PROC_LINE_ITEMS_INSERT(P_ORDER_ID IN NUMBER, P_PROD_DETAIL_ID IN VARCHAR2,
P_QUANTITY IN NUMBER, P_CUST_ID IN VARCHAR2 )
AS
V_CUST_ID VARCHAR(20);
V_AMOUNT_PER_UNIT NUMBER(6,2);
v_SHIPPING_AMOUNT NUMBER(6,2);

BEGIN
v_SHIPPING_AMOUNT := FUNC_CAL_SHIPPING_AMOUNT(P_ORDER_ID);
SELECT CUST_ID INTO V_CUST_ID FROM CUSTOMER WHERE CUST_ID = P_CUST_ID;
SELECT PROD_PRICE_PER_UNIT INTO V_AMOUNT_PER_UNIT FROM PRODUCT_DETAILS WHERE PROD_DETAIL_ID = P_PROD_DETAIL_ID;
INSERT INTO LINE_ITEMS VALUES (
SEQ_LINE_ID.nextval,
P_ORDER_ID,
P_PROD_DETAIL_ID,
P_QUANTITY,
(V_AMOUNT_PER_UNIT*0.0625),
v_SHIPPING_AMOUNT,
V_AMOUNT_PER_UNIT,
P_QUANTITY+ v_SHIPPING_AMOUNT + V_AMOUNT_PER_UNIT + (V_AMOUNT_PER_UNIT*0.0625)  ,
'ORDER PLACED'
);
commit;
EXCEPTION
WHEN NO_DATA_FOUND THEN
 dbms_output.put_line('Invalid customer id');
        WHEN OTHERS THEN
            dbms_output.put_line('Please correct the following error - ' || SQLERRM);
            END;
