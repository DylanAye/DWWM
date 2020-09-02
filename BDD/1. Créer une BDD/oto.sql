DROP DATABASE IF EXISTS oto;
CREATE database oto;
USE oto;

CREATE TABLE vehicules(
    vehi_id                 int(10),
    vehi_brand              varchar(50),
    vehi_model              varchar(50),
    vehi_date_old           date,
    vehi_date_get           date,
    vehi_plate              varchar(50),
    vehi_state              boolean,
    PRIMARY KEY (vehi_id)
);

CREATE TABLE customers(
    cust_id                 int(10),
    cust_name               varchar(50),
    cust_firstname          varchar(50),
    cust_address            varchar(255),
    cust_pc                 int(10),
    cust_city               varchar(50),
    cust_email              varchar(50),
    cust_phone              varchar(50),
    PRIMARY KEY (cust_id)
);

CREATE TABLE orders(
    orders_id               int(10),
    orders_date             date,
    orders_type             varchar,
    PRIMARY KEY (orders_id)
);

CREATE TABLE orders_details(
    orders_id               int(10),
    quantity                int(10),
    discount                float(10),
    PRIMARY KEY (orders_id),
    FOREIGN KEY (orders_id) REFERENCES orders(orders_id)
);

CREATE TABLE accessories(
    acc_id                  varchar(50),
    acc_name                varchar(50),
    PRIMARY KEY (acc_id)
);