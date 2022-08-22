create or replace PROCEDURE proc_order_status (
    p_order_id     NUMBER,
    p_prod_detail_id   VARCHAR2,
    p_order_status VARCHAR2
) AS
    vtotal_product_id     NUMBER;
    vproduct_id_delivered NUMBER;
    VPREV_ORDER_STATUS VARCHAR(20);
BEGIN
SELECT COUNT(prod_detail_id) INTO vtotal_product_id FROM line_items WHERE order_id = p_order_id;
SELECT ORDER_STATUS INTO VPREV_ORDER_STATUS FROM LINE_ITEMS  WHERE order_id = p_order_id AND prod_detail_id = p_prod_detail_id;

    IF p_order_status = 'AWAITING FULFILLMENT' 
--    OR p_order_status = 'AWAITING SHIPMENT'
    THEN
     /*UPDATE STATUS IN LINE_ITEMS */
        UPDATE line_items
        SET
            order_status = p_order_status
        WHERE
                order_id = p_order_id
            AND prod_detail_id = p_prod_detail_id;
        dbms_output.put_line('ORDER STATUS IN LINE_ITEMS UPDATED');


         /*UPDATE STATUS IN ORDER_DETAILS */   
        UPDATE ORDERS SET ORDER_STATUS = 'PENDING'
WHERE ORDER_ID = P_ORDER_ID; 
DBMS_OUTPUT.PUT_LINE('ORDER STATUS IN ORDER DETAILS UPDATED');
    END IF;


        IF p_order_status = 'AWAITING SHIPMENT' 
        THEN
          IF VPREV_ORDER_STATUS  = 'AWAITING FULFILLMENT'
           THEN
        UPDATE line_items
        SET order_status = p_order_status
        WHERE order_id = p_order_id
        AND prod_detail_id = p_prod_detail_id;    
        dbms_output.put_line('ORDER STATUS IN LINE_ITEMS UPDATED');  
        ELSE
        dbms_output.put_line('INVALID STATUS'); 
        END IF; 
        END IF;






    IF p_order_status = 'DELIVERED'  
      THEN IF VPREV_ORDER_STATUS = 'AWAITING SHIPMENT'
    THEN
        UPDATE line_items
        SET
            order_status = p_order_status
        WHERE
                order_id = p_order_id
            AND prod_detail_id = p_prod_detail_id;

        dbms_output.put_line('ORDER STATUS IN LINE_ITEMS UPDATED');
        SELECT
            COUNT(prod_detail_id)
        INTO vproduct_id_delivered
        FROM
            line_items
        WHERE
                order_id = p_order_id
            AND order_status = 'DELIVERED';
           ELSE
        dbms_output.put_line('INVALID STATUS');   
            END IF;
--DBMS_OUTPUT.PUT_LINE('COUNT OF PRODUCT IDS DELIEVERED ' ||VPRODUCT_ID_DELIVERED);
    END IF;

/*UPDATE STATUS IN ORDER_DETAILS */
    IF
        upper(p_order_status) = 'DELIVERED'
        AND vtotal_product_id = vproduct_id_delivered
    THEN
        UPDATE orders
        SET
            order_status = 'COMPLETE'
        WHERE
            order_id = p_order_id;

        dbms_output.put_line('ORDER STATUS IN ORDER_DETAILS UPDATED');
    END IF;

EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('Entry not found in database');
END;