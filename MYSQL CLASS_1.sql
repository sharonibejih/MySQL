--USING CREATE, ALTER and DROP DATA DEFINITION LANGUAGES:--


USE SALES_DATA;

--PRIMARY KEYS CONSTRAINT:
create table sales (
purchase_no int auto_increment primary key,
date_of_purchase date,
customer_id varchar(10),
item_code varchar(5)
);
ALTER Table sales
add column email_address varchar(255);

--UNIQUE KEYS CONSTRAINT:
ALTER TABLE sales
ADD UNIQUE KEY (email_address); 

ALTER Table sales
DROP INDEX email_address;

CREATE TABLE CUSTOMERS 
(
customer_id INT,
first_name varchar(55),
last_name varchar(55),
email_address varchar(255),
number_of_complaints int,
primary key (customer_id)
); 
DROP TABLE CUSTOMERS;

Create table ITEMS
(
item_code varchar(255),
item varchar(255),
unit_price numeric(10,2),
company_id varchar(255),
primary key (item_code)
);

--FOREIGN KEYS CONSTRAINT:
ALTER TABLE ITEMS
ADD FOREIGN KEY(company_id) references COMPANIES(company_id) ON DELETE CASCADE;

ALTER TABLE ITEMS
DROP FOREIGN KEY items_ibfk_1;

Create table COMPANIES
(
company_id varchar(255),
company_name varchar(255),
headquarters_phone_number int(12),
primary key(company_id)
);
Drop database sales;
create table customers (
customers_id int auto_increment,
first_name varchar(255),
last_name varchar(255),
email_address varchar(255),
number_of_complaints int,
PRIMARY KEY (customers_id)
);
ALTER table customers
ADD column gender enum('m','f') after last_name;

insert into customers (first_name, last_name, gender, email_address, number_of_complaints)
values ('John', 'Mackinley', 'M', 'john.mckinley@365careers.com', 0);

--DEFAULT CONSTRAINT:
ALTER TABLE customers
CHANGE column number_of_complaints number_of_complaints INT DEFAULT 0;
INSERT INTO customers (first_name, last_name, gender)
values ('Peter', 'Figaro', 'M');

SELECT * FROM customers;

DROP TABLE companies;
CREATE TABLE companies (
company_id varchar(255),
company_name varchar(255) DEFAULT 'X',
headquarters_phone_number varchar(11) unique key
);

--NOT NULL CONSTRAINT:

ALTER TABLE COMPANIES
MODIFY COLUMN headquarters_phone_number VARCHAR(255) NULL;

ALTER TABLE companies
CHANGE COLUMN headquarters_phone_number headquarters_phone_number VARCHAR(255) NOT NULL;

