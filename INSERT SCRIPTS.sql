EXECUTE PROC_CREATE_TABLE ('CUSTOMER');
EXECUTE PROC_CREATE_TABLE ('CUST_CONTACT_DETAILS');
EXECUTE PROC_CREATE_TABLE ('CUST_PAYMENT');
EXECUTE PROC_CREATE_TABLE ('VENDOR');
EXECUTE PROC_CREATE_TABLE ('VENDOR_ADDRESS');
EXECUTE PROC_CREATE_TABLE ('VENDOR_HISTORY');
EXECUTE PROC_CREATE_TABLE ('PRODUCT_CATEGORY');
EXECUTE PROC_CREATE_TABLE ('PRODUCT_DETAILS');
EXECUTE PROC_CREATE_TABLE ('ORDERS');
EXECUTE PROC_CREATE_TABLE ('LINE_ITEMS');


CUSTOMER

EXECUTE PROC_INSERT_UPDATE_CUST('CUST-136' ,'SNEHA' , 'METWANI' , 'RAM' , 'FEMALE','SINGLE','METHS@GMAIL.COM','PASSWORDSNEHA','19-DEC-95');
EXECUTE PROC_INSERT_UPDATE_CUST('CUST-131' ,'NIKHITA' , 'SHARMA' , 'RAJESH' , 'MALE','SINGLE','NIKHITA@GMAIL.COM','PASSWORDPIYUSH','13-AUG-95');
EXECUTE PROC_INSERT_UPDATE_CUST('CUST-132' , 'MAT' , 'ADAMS' , 'GLEN' , 'MALE','SINGLE','ADAMSMAT@GMAIL.COM','PASSWORDMAT','19-JULY-95');
EXECUTE PROC_INSERT_UPDATE_CUST('CUST-133' , 'DAMEN' , 'ROSE' , 'GILMORE' , 'MALE','SINGLE','ROSEDAMEN@GMAIL.COM','PASSWORDDAMEN','14-JAN-90');
EXECUTE PROC_INSERT_UPDATE_CUST('CUST-134' ,'SARAH' , 'GREEN' , 'J', 'FEMALE','SINGLE','GREENSARAH@GMAIL.COM','PASSWORDSARAH','08-AUG-89');
EXECUTE PROC_INSERT_UPDATE_CUST('CUST-135' ,'RUDY' , 'RANKIN' , 'TYRA' , 'FEMALE','SINGLE','RUDY@GMAIL.COM','PASSWORDRUDY' , '13-DEC-90');
EXECUTE PROC_INSERT_UPDATE_CUST('CUST-130' ,'JINAL' , 'MAMANIYA' , 'JAGDISH' , 'FEMALE','SINGLE','JINAL@GMAIL.COM','PASSWORDJINAL','09-NOV-95');
EXECUTE PROC_INSERT_UPDATE_CUST('CUST-137' ,'TARUN' , 'BALWANI' , 'P' , 'MALE','SINGLE','BALWANIT@GMAIL.COM','PASSWORDTARUN','15-OCT-95');
EXECUTE PROC_INSERT_UPDATE_CUST('CUST-138' , 'ASHUTOSH' , 'RAI' , 'SURESH' , 'MALE' , 'SINGLE' , 'RAI@GMAIL.COM' , 'PASSWORDRAI' , '17-FEB-94');
EXECUTE PROC_INSERT_UPDATE_CUST('CUST-139' , 'JAYA' , 'BALWANI' , 'RAJKUMAR' , 'FEMALE' , 'SINGLE' , 'balwanij@gmail.com' , 'PasswordJaya' , '10-dec-90');
EXECUTE PROC_INSERT_UPDATE_CUST('CUST-140' , 'ESHA' , 'SONI' , 'PRAKASH' , 'MALE' , 'SINGLE' , 'ESHASONI@gmail.com' , 'PASSWORDESHA' , '19-AUG-91');


CUST_CONTACT_DETAILS

EXECUTE PROC_ADD_CUST_CON( 1, 'CUST-130','34 CHEROKEE STREET','#2','BOSTON','MA','EAST',22120,1234512345);
EXECUTE PROC_ADD_CUST_CON( 2, 'CUST-130' , '24 HEATH ST' , 'UNIT-5' , 'BOSTON' , 'MA' , 'EAST' , 32120 , 8678549013 );
EXECUTE PROC_ADD_CUST_CON ( 3, 'CUST-131' , '24 LAWN ST' , 'UNIT-A' , 'BOSTON' , 'MA' , 'EAST' , 34521 , 8678549321 );
EXECUTE PROC_ADD_CUST_CON( 4,'CUST-132', 'CHURCHILL AVENUE' , 'HOUSE 2', 'EUGENE', 'OR', 'SOUTH', 97402, 4044268396);
EXECUTE PROC_ADD_CUST_CON ( 5, 'CUST-133' , 'ST ANDREWS ROAD' , 'APT2' , 'HICHVILLE' , 'NY' , 'EAST' , 43563 , 1234512345  );
EXECUTE PROC_ADD_CUST_CON ( 6 ,'CUST-134', 'RIVERSIDE DRIVE', 'UNIT 12', 'LAWRENCEVILLE', 'GA', 'CENTRAL', 30043, 6572346606);
EXECUTE PROC_ADD_CUST_CON( 7 ,'CUST-135' ,'IVYLANE', 'HOUSE 43', 'FAR ROCKAWAY', 'NY', 'EAST', 11691, 2677213233 );
EXECUTE PROC_ADD_CUST_CON( 8, 'CUST-138', 'BARTON CLOSE', 'HOUSE 3', 'NORTH TONAWANDA', 'NY', 'CENTRAL', 14120, 4327012985);
EXECUTE PROC_ADD_CUST_CON( 9,'CUST-137', 'GLADSTONE ROAD', 'APT 4', 'CORPUS CHRISTI', 'TX', 'SOUTH', 78418, 5308232180);


CUST_PAYMENT

EXECUTE PROC_ADD_CUST_PAYMENT('CUST-130' , 'DEBIT CARD' , 'VISA' , 12345123451234,   '09/12'   );
EXECUTE PROC_ADD_CUST_PAYMENT('CUST-130' , 'DEBIT CARD' , 'MASTERCARD' , 12345123451234,   '09/12'   );
EXECUTE PROC_ADD_CUST_PAYMENT('CUST-131' , 'CREDIT CARD' , 'MASTERCARD' , 12345123451234,   '09/12'   );
EXECUTE PROC_ADD_CUST_PAYMENT('CUST-132' , 'CREDIT CARD' , 'VISA' , 12345123451234,   '09/12'   );
EXECUTE PROC_ADD_CUST_PAYMENT('CUST-133' , 'DEBIT CARD' , 'MASTERCARD' , 12345123451234,   '09/12'   );
EXECUTE PROC_ADD_CUST_PAYMENT('CUST-134' , 'DEBIT CARD' , 'VISA' , 12345123451234,   '09/12'   );
EXECUTE PROC_ADD_CUST_PAYMENT('CUST-135' , 'CREDIT CARD' , 'MASTERCARD' , 12345123451234,   '09/12'   );
EXECUTE PROC_ADD_CUST_PAYMENT('CUST-136' , 'DEBIT CARD' , 'MASTERCARD' , 12345123451234,   '09/12'   );
EXECUTE PROC_ADD_CUST_PAYMENT('CUST-137' , 'DEBIT CARD' , 'VISA' , 12345123451234,   '09/12'   );
EXECUTE PROC_ADD_CUST_PAYMENT('CUST-138' , 'CREDIT CARD' , 'MASTERCARD' , 12345123451234,   '09/12'   );
EXECUTE PROC_ADD_CUST_PAYMENT('CUST-139' , 'CREDIT CARD' , 'VISA' , 12345123451234,   '09/12'   );



VENDOR

EXECUTE PROC_ADD_VENDOR('SEPHORA' , 'MAKEUP' , '30-DEC-2020', '30-DEC-2022'   );
EXECUTE PROC_ADD_VENDOR('ZARA' , 'CLOTHING' , '19-DEC-2020', '19-DEC-2022'   );
EXECUTE PROC_ADD_VENDOR('ABC' , 'CLOTHING' , '20-JAN-2020', '20-JAN-2022'   );
EXECUTE PROC_ADD_VENDOR('FOSSIL' , 'ACCESSORIES' , '10-DEC-2020', '10-DEC-2022'   );
EXECUTE PROC_ADD_VENDOR('AEROPOSTALE' , 'CLOTHING' , '17-DEC-2020', '17-DEC-2022'   );


VENDOR_ADDRESS

EXECUTE PROC_ADD_VENDOR_ADDRESS ( 1000, 14, 'SUPPORT@SEPHORA.COM' , '133 BOLYSTON STREET', '2' , 'BOSTON'  , 'MA' , 54356 , 1234512345 );
EXECUTE proc_add_vendor_address(1000 ,14, 'SUPPORT@SEPHORA.COM' , '1331 BOYLSTON ST SPACE', 'APT 123', 'BOSTON' , 'MA' ,02215, 6178594949 );
EXECUTE proc_add_vendor_address(2000, 18, 'SALES@ZARA.COM' , 'WORCESTER ST', '#1245', 'NATICK', 'MA' ,11760, 1234512345);
EXECUTE proc_add_vendor_address(3000, 20, 'SUPPORT@HGROUP.COM' , 'LEGACY PL' , '206', 'DEDHAM' , 'MA' ,22026, 8554667467);
EXECUTE proc_add_vendor_address (4000, 21, 'ORDERS@FOSSIL.COM' , '80 PREMIUM', '#675', 'MERRIMACK', 'NH', 33054, 6034246651);
EXECUTE proc_add_vendor_address(5000, 22, 'REACH@GMAIL.COM','PROVIDENCE PL','118', 'PROVIDENCE', 'RI', 42903,4012704120);


PRODUCT_CATEGORY

INSERT INTO PRODUCT_CATEGORY VALUES(120, 'T SHIRTS');
INSERT INTO PRODUCT_CATEGORY VALUES(121, 'JEANS');
INSERT INTO PRODUCT_CATEGORY VALUES(122, 'SWEATERS');
INSERT INTO PRODUCT_CATEGORY VALUES(123, 'JACKETS');
INSERT INTO PRODUCT_CATEGORY VALUES(124, 'SKIRTS');

PRODUCT_DETAILS


EXECUTE PROC_ADD_PRODUCT_dETAILS ('PROD_124', 'GEO TOP', 18, 120, 0, 'BLUSH RED', 2, '12-AUG-21', 5, 21 );
EXECUTE PROC_ADD_PRODUCT_dETAILS ( 'PROD_125', 'RHINESTONE', 18, 120, 0, 'PINK', 1, '16-SEP-21', 20, 32 );
EXECUTE PROC_ADD_PRODUCT_dETAILS ('PROD_126', 'GLITTER TOP', 18, 121, 0, 'PINK', 1, '16-SEP-21', 20, 3);

EXECUTE PROC_ADD_PRODUCT_DETAILS ('PROD_127', 'RIGGED DENIM', 22, 124, 0, 'BLUE', 2, '16-SEP-21', 20, 3);
EXECUTE PROC_ADD_PRODUCT_DETAILS ('PROD_128', 'LOGO TEE', 22, 120, 0, 'BLACK', 1, '11-SEP-21', 10, 4);
EXECUTE PROC_ADD_PRODUCT_DETAILS ('PROD_129', 'TURTLE NECK', 23, 122, 0, 'WHITE', 2, '16-OCT-21', 11, 5);
EXECUTE PROC_ADD_PRODUCT_DETAILS ('PROD_130', 'BOMBER JACKET', 23, 123, 0, 'BROWN', 1, '16-NOV-21', 20, 6);
EXECUTE PROC_ADD_PRODUCT_DETAILS ('PROD_131', 'POLO', 21, 120, 0, 'PINK', 1, '15-NOV-21', 5, 9);
EXECUTE PROC_ADD_PRODUCT_DETAILS ('PROD_132', 'HENLEY', 21, 120, 0, 'OLIVE', 2, '11-OCT-21', 23, 6);
EXECUTE PROC_ADD_PRODUCT_DETAILS ('PROD_133', 'SCOOP NECK', 20, 120, 0, 'YELLOW', 1, '16-NOV-21', 9, 3);
EXECUTE PROC_ADD_PRODUCT_DETAILS ('PROD_134', 'WOOLEN SWEATER', 20, 122, 0, 'GREY', 2, '24-NOV-21', 14, 7);
EXECUTE PROC_ADD_PRODUCT_DETAILS ('PROD_135', 'RELAXED FIT', 19, 121, 0, 'BLACK', 1, '01-SEP-21', 21, 3);
EXECUTE PROC_ADD_PRODUCT_DETAILS ('PROD_136', 'LOOSE DENIM', 19, 121, 0, 'SKY BLUE', 1, '16-DEC-21', 18, 2);
EXECUTE PROC_ADD_PRODUCT_DETAILS ('PROD_137', 'JOGGERS', 18, 121, 0, 'MAROON', 1, '16-AUG-21', 22, 6);
EXECUTE PROC_ADD_PRODUCT_DETAILS ('PROD_138', 'BOOTCUT', 18, 121, 0, 'DEEP BLUE', 2, '23-NOV-21', 12, 7);


ORDERS--
EXECUTE PROC_ORDER_DETAILS_INSERT ( 'CUST-130' , 1 , 23 , 'STANDARD' , 2  );


LINE_ITEMS---
EXECUTE PROC_LINE_ITEMS_INSERT ( 15 , 'PROD_124' , 2 , 'CUST-130'  );
EXECUTE PROC_LINE_ITEMS_INSERT ( 15 , 'PROD_125' , 2 , 'CUST-130'  );
EXECUTE PROC_LINE_ITEMS_INSERT ( 15, 'PROD_124',1 ,'CUST-130' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 15, 'PROD_125',1 ,'CUST-130' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 23, 'PROD_126',1 ,'CUST-131' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 23, 'PROD_127',1 ,'CUST-131' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 24, 'PROD_128',1 ,'CUST-132' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 25, 'PROD_129',1 ,'CUST-132' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 25, 'PROD_130',1 ,'CUST-132' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 25, 'PROD_131',1 ,'CUST-132' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 25, 'PROD_132',1 ,'CUST-132' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 26, 'PROD_133',2,'CUST-133' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 27, 'PROD_134',2,'CUST-133' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 27, 'PROD_135',1,'CUST-133' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 27, 'PROD_136',2,'CUST-133' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 27, 'PROD_137',1,'CUST-133' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 27, 'PROD_138',2,'CUST-133' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 28, 'PROD_124',1,'CUST-134' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 28, 'PROD_125',2,'CUST-134' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 16, 'PROD_126',1,'CUST-130' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 16, 'PROD_127',3,'CUST-130' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 17, 'PROD_128',1,'CUST-130' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 17, 'PROD_129',2,'CUST-130' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 18, 'PROD_130',2,'CUST-130' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 18, 'PROD_131',2,'CUST-130' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 20, 'PROD_132',1,'CUST-130' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 21, 'PROD_133',1,'CUST-130' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 21, 'PROD_134',3,'CUST-130' )
EXECUTE PROC_LINE_ITEMS_INSERT ( 22, 'PROD_133',1,'CUST-131' )

PROC_ORDER_STATUS ------>

EXECUTE PROC_ORDER_STATUS(15 , 'PROD_124' , 'AWAITING FULFILLMENT'  );
EXECUTE PROC_ORDER_STATUS(15 , 'PROD_124' , 'AWAITING SHIPMENT'  );
EXECUTE PROC_ORDER_STATUS(15 , 'PROD_124' , 'DELIVERED'  );

EXECUTE PROC_ORDER_STATUS(15 , 'PROD_125' , 'AWAITING FULFILLMENT'  );
EXECUTE PROC_ORDER_STATUS(15 , 'PROD_125' , 'AWAITING SHIPMENT'  );
EXECUTE PROC_ORDER_STATUS(15 , 'PROD_125' , 'DELIVERED'  );


PROC_VENDOR_RENEWAL------->

EXECUTE PROC_VENDOR_RENEWAL(18 , '02-APR-2024' , '02-APR-2025'  );
---SAME CONTRACT ID FOR ZARA
EXECUTE PROC_VENDOR_RENEWAL(21 , '23-FEB-2024' , '23-FEB-2025'    );  
--NEW CONTRACT ID GENERATED FOR FOSSIL


CUST_INACTIVE ---->
EXECUTE PROC_CUST_INACTIVE ( 'CUST-132');



------REVIEWS

EXECUTE PROC_ADD_REVIEWS ('CUST-130','PROD_134','HAPPY WITH THE PRODUCT', 4)
EXECUTE PROC_ADD_REVIEWS ('CUST-131','PROD_127','SATISFIED', 4)
EXECUTE PROC_ADD_REVIEWS ('CUST-132','PROD_131','EXTREMELY GOOD', 4)
EXECUTE PROC_ADD_REVIEWS ('CUST-133','PROD_137','BAD PRODUCT', 1)
EXECUTE PROC_ADD_REVIEWS ('CUST-134','PROD_125','GOOD', 3)



-----------------------------------------------------

INSERT INTO ORDERS VALUES (23, 'CUST-131' ,3, '14-DEC-21 11:29:46' ,29, 2 , 3, 'DELIVERED', 'STANDARD');
INSERT INTO ORDERS VALUES (24, 'CUST-132' , 4 , '13-DEC-21 07:39:46' ,30, 1 , 3, 'DELIVERED', 'STANDARD');
INSERT INTO ORDERS VALUES (25, 'CUST-132' , 4 , '11-DEC-21 03:49:46' ,30, 4 , 3, 'DELIVERED', 'STANDARD');
INSERT INTO ORDERS VALUES (26, 'CUST-133' ,5, '12-DEC-21 10:09:46' ,31, 1 , 3, 'DELIVERED', 'STANDARD');
INSERT INTO ORDERS VALUES (27, 'CUST-133' ,5, '11-DEC-21 08:19:46' ,31, 5 , 3, 'DELIVERED', 'STANDARD');
INSERT INTO ORDERS VALUES (28, 'CUST-134' ,6, '13-DEC-21 09:00:46' , 32, 2 , 3, 'DELIVERED', 'STANDARD');

COMMIT;