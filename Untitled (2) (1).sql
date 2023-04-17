CREATE TABLE  Category (
   cat_id int PRIMARY KEY,
   cat_name varchar(255) UNIQUE NOT NULL
);


CREATE TABLE  Products (
   p_id int PRIMARY KEY,
   p_name varchar(25) NOT NULL,
   price int NOT NULL,
   imgpath varchar(100),
   cat_id int,
   FOREIGN KEY (cat_id) REFERENCES Category(cat_id)
);

CREATE TABLE  Event (
   e_id int PRIMARY KEY,
   e_name varchar(255),
   e_start date,
   e_end date
);

CREATE TABLE  Coupon (
   c_id int,
   c_name varchar(25),
   e_id int,
   FOREIGN KEY (e_id) REFERENCES Event(e_id)
);

CREATE TABLE  Customers (
   cust_id int PRIMARY KEY,
   cust_name varchar(25) NOT NULL,
   cust_phone long NOT NULL,
   cust_email varchar(25) UNIQUE NOT NULL,
   cust_pwd varchar(25),
   cust_address varchar(25) NOT NULL
);

CREATE TABLE  Cart (
   cart_id int PRIMARY KEY,
   cust_id int,
   FOREIGN KEY (cust_id) REFERENCES Customers(cust_id)
);

CREATE TABLE  CartDetails (
   cd_id int PRIMARY KEY,
   quantity int,
   cart_id int,
    FOREIGN KEY (cart_id) REFERENCES Cart(cart_id),
   p_id int,
   FOREIGN KEY (p_id) REFERENCES Products(p_id)
);

CREATE TABLE  Payments (
   pay_id int PRIMARY KEY,
   cart_cost int,
   card_no long,
   cvv int,
   expiry date,
   cart_id int,
   FOREIGN KEY (cart_id) REFERENCES Cart(cart_id)
);

-- CREATE SEQUENCE  prod_inc
-- start with 101
-- INCREMENT by 1
-- minvalue 101
-- maxvalue 1000
-- cycle;

-- ALTER TABLE products MODIFY (P_ID DEFAULT prod_inc.NEXTVAL); 

-- create sequence Event_inc
-- start with 1001
-- INCREMENT by 1
--  CACHE 100;


-- ALTER TABLE event MODIFY (e_id DEFAULT Event_inc.NEXTVAL); 

ALTER TABLE products CHANGE P_ID P_ID INT AUTO_INCREMENT ;


alter table coupon add discount int;
