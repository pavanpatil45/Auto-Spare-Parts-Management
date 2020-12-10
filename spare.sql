

/*DATABASE AUTO SPARE PART MANAGEMENT
***************************************/



/*Table structure for table  category*/ 
CREATE TABLE category (
  CATEGORY_ID int(11),
  CNAME  varchar(50) 
);


/*Table structure for table customer*/ 

CREATE TABLE customer (
  CUST_ID int(11),
  FIRST_NAME varchar(50),
  LAST_NAME varchar(50),
  PHONE_NUMBER varchar(11)
);


/*Table structure for table employee*/ 

CREATE TABLE employee (
  EMPLOYEE_ID int(11),
  FIRST_NAME varchar(50),
  LAST_NAME varchar(50),
  GENDER varchar(50),
  EMAIL varchar(100),
  PHONE_NUMBER varchar(11),
  JOB_ID int(11),
  LOCATION_ID int(11)
);


/*Table structure for table job*/ 

CREATE TABLE  job  (
   JOB_ID  int(11),
   JOB_TITLE  varchar(50)
);


/*Inserting data for table  job */

INSERT INTO  job  ( JOB_ID ,  JOB_TITLE ) VALUES
(1, 'Manager'),
(2, 'Cashier');



/*Table structure for table  location*/ 

CREATE TABLE  location  (
   LOCATION_ID  int(11),
   DISTRICT  varchar(100),
   CITY  varchar(100)
);



/*Table structure for table  manager*/ 

CREATE TABLE  manager  (
   FIRST_NAME  varchar(50),
   LAST_NAME  varchar(50),
   LOCATION_ID  int(11),
   EMAIL  varchar(50),
   PHONE_NUMBER  varchar(11)
);



/*Table structure for table  product*/ 


CREATE TABLE  product  (
   PRODUCT_ID  int(11),
   PRODUCT_CODE  varchar(20),
   NAME  varchar(50),
   DESCRIPTION  varchar(250)  ,
   QTY_STOCK  int(50)  ,
   PRICE  int(50)  ,
   CATEGORY_ID  int(11)  ,
   SUPPLIER_ID  int(11)  
)  ;




/*Table structure for table  supplier*/ 


CREATE TABLE  supplier  (
   SUPPLIER_ID  int(11)  ,
   COMPANY_NAME  varchar(50)  ,
   LOCATION_ID  int(11)  ,
   PHONE_NUMBER  varchar(11)  
)  ;



/*Table structure for table  transaction */


CREATE TABLE  transaction  (
   TRANS_ID  int(50)  ,
   CUST_ID  int(11)  ,
   NUMOFITEMS  varchar(250)  ,
   SUBTOTAL  varchar(50)  ,
   CASH  varchar(250)  ,
   DATE  varchar(50)
)  ;




/*Table structure for table  transaction_details*/ 


CREATE TABLE  transaction_details  (
   ID  int(11)  ,
   PRODUCTS  varchar(250)  ,
   QTY  varchar(250)  ,
   PRICE  varchar(250)  ,
   EMPLOYEE  varchar(250)  ,
   ROLE  varchar(250)  
)  ;




/*Table structure for table  type */


CREATE TABLE  type  (
   TYPE_ID  int(11)  ,
   TYPE  varchar(50)  
)  ;


/*Inserting data for table  type*/ 


INSERT INTO  type  ( TYPE_ID ,  TYPE ) VALUES
(1, 'Admin'),
(2, 'User');




/*Table structure for table  users */


CREATE TABLE  users  (
   ID  int(11)  ,
   EMPLOYEE_ID  int(11)  ,
   USERNAME  varchar(50)  ,
   PASSWORD  varchar(50)  ,
   TYPE_ID  int(11)  
)  ;





/*PRIMARY KEY CONSTRAINTS*/


ALTER TABLE  category 
  ADD PRIMARY KEY ( CATEGORY_ID );


ALTER TABLE  customer 
  ADD PRIMARY KEY ( CUST_ID );


ALTER TABLE  employee 
  ADD PRIMARY KEY ( EMPLOYEE_ID );
 

ALTER TABLE  job 
  ADD PRIMARY KEY ( JOB_ID );


ALTER TABLE  location 
  ADD PRIMARY KEY ( LOCATION_ID );


ALTER TABLE  product 
  ADD PRIMARY KEY ( PRODUCT_ID );


ALTER TABLE  supplier 
  ADD PRIMARY KEY ( SUPPLIER_ID );


ALTER TABLE  transaction 
  ADD PRIMARY KEY ( TRANS_ID );


ALTER TABLE  transaction_details 
  ADD PRIMARY KEY ( ID );


ALTER TABLE  type 
  ADD PRIMARY KEY ( TYPE_ID );


ALTER TABLE  users 
  ADD PRIMARY KEY ( ID );






/*AUTO_INCREMENT for table  category */

ALTER TABLE  category 
  MODIFY  CATEGORY_ID  int(11)   AUTO_INCREMENT;


/*AUTO_INCREMENT for table  customer */

ALTER TABLE  customer 
  MODIFY  CUST_ID  int(11)   AUTO_INCREMENT;


/*AUTO_INCREMENT for table  employee */

ALTER TABLE  employee 
  MODIFY  EMPLOYEE_ID  int(11)   AUTO_INCREMENT;


/*AUTO_INCREMENT for table  location*/ 

ALTER TABLE  location 
  MODIFY  LOCATION_ID  int(11)   AUTO_INCREMENT;


/*AUTO_INCREMENT for table  product */

ALTER TABLE  product 
  MODIFY  PRODUCT_ID  int(11)   AUTO_INCREMENT;


/*AUTO_INCREMENT for table  supplier */

ALTER TABLE  supplier 
  MODIFY  SUPPLIER_ID  int(11)   AUTO_INCREMENT;


/*AUTO_INCREMENT for table  transaction */

ALTER TABLE  transaction 
  MODIFY  TRANS_ID  int(50)   AUTO_INCREMENT;


/*AUTO_INCREMENT for table  transaction_details */

ALTER TABLE  transaction_details 
  MODIFY  ID  int(11)   AUTO_INCREMENT;


/*AUTO_INCREMENT for table  users */

ALTER TABLE  users 
  MODIFY  ID  int(11)   AUTO_INCREMENT;





/*Constraints for table  employee */

ALTER TABLE  employee 
  ADD CONSTRAINT  employee_fk_1  FOREIGN KEY ( LOCATION_ID ) REFERENCES  location  ( LOCATION_ID ),
  ADD CONSTRAINT  employee_fk_2  FOREIGN KEY ( JOB_ID ) REFERENCES  job  ( JOB_ID );


/*Constraints for table  manager */

ALTER TABLE  manager 
  ADD CONSTRAINT  manager_fk_1  FOREIGN KEY ( LOCATION_ID ) REFERENCES  location  ( LOCATION_ID );


/*Constraints for table  product */

ALTER TABLE  product 
  ADD CONSTRAINT  product_fk_1  FOREIGN KEY ( CATEGORY_ID ) REFERENCES  category  ( CATEGORY_ID ),
  ADD CONSTRAINT  product_fk_2  FOREIGN KEY ( SUPPLIER_ID ) REFERENCES  supplier  ( SUPPLIER_ID );


/*Constraints for table  supplier */

ALTER TABLE  supplier 
  ADD CONSTRAINT  supplier_fk_1  FOREIGN KEY ( LOCATION_ID ) REFERENCES  location  ( LOCATION_ID );


/*Constraints for table  transaction */

ALTER TABLE  transaction 
  ADD CONSTRAINT  transaction_fk_3  FOREIGN KEY ( CUST_ID ) REFERENCES  customer  ( CUST_ID );


/*Constraints for table  users */

ALTER TABLE  users 
  ADD CONSTRAINT  users_fk_3  FOREIGN KEY ( TYPE_ID ) REFERENCES  type  ( TYPE_ID ),
  ADD CONSTRAINT  users_fk_4  FOREIGN KEY ( EMPLOYEE_ID ) REFERENCES  employee  ( EMPLOYEE_ID );



