create or replace PROCEDURE 
PROC_ADD_PRODUCT_DETAILS 
( p_product_detail_id product_details.prod_detail_id%type, 
  p_product_name product_details.prod_name%type,
  p_vendor_id product_details.vendor_id%type,
  p_category_id product_details.category_id%type,
  p_prod_dimension product_details.prod_dimension%type,
  p_prod_color product_details.prod_color%type,
  p_prod_weight product_details.prod_weight%type,
  p_prod_stock_date product_details.prod_stock_date%type,
  p_prod_unit_available product_details.prod_unit_available%type,
  p_prod_price_per_unit product_details.prod_price_per_unit%type
 )
AS
BEGIN
MERGE INTO PRODUCT_DETAILS USING DUAL ON (PROD_DETAIL_ID = P_PRODUCT_DETAIL_ID 
AND VENDOR_ID = P_VENDOR_ID AND CATEGORY_ID = P_CATEGORY_ID)
WHEN NOT MATCHED THEN 
INSERT VALUES ( p_product_detail_id,
p_product_name,
p_vendor_id,
p_category_id,
p_prod_dimension,
p_prod_color,
p_prod_weight,
p_prod_stock_date,
p_prod_unit_available,
p_prod_price_per_unit,
'Y'
) ;
COMMIT;
 EXCEPTION
        WHEN OTHERS THEN
            dbms_output.put_line('Please correct the following error - ' || SQLERRM);
END;
