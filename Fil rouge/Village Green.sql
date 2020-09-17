DROP DATABASE IF EXISTS VillageGreen;
CREATE DATABASE VillageGreen;
USE VillageGreen;

CREATE TABLE posts(
    pos_id                          int AUTO_INCREMENT NOT NULL,
    pos_libelle                     varchar(50) NOT NULL,
    pos_description                 varchar(255) NOT NULL,
    PRIMARY KEY(pos_id)
);

CREATE TABLE employees(
    emp_id                          int AUTO_INCREMENT NOT NULL,
    emp_lastname                    varchar(50) NOT NULL,
    emp_firstname                   varchar(50) NOT NULL,
    emp_enter_date                  date NOT NULL,
    emp_leaving_date                date,
    emp_num_secu_social             int(20) NOT NULL,
    emp_sexe                        varchar(1) NOT NULL,
    emp_birthdate                   date NOT NULL,
    emp_address                     varchar(255) NOT NULL,
    emp_zipcode                     varchar(10) NOT NULL,
    emp_city                        varchar(50) NOT NULL,
    emp_phone                       varchar(10) NOT NULL,
    emp_mail                        varchar(50) NOT NULL,
    emp_password                    varchar(50) NOT NULL,
    emp_login                       varchar(50) NOT NULL,
    emp_client_type                 int(1) NOT NULL,
    emp_emp_id                      int(10),
    emp_pos_id                      int(10) NOT NULL,
    PRIMARY KEY(emp_id),
    FOREIGN KEY(emp_emp_id) REFERENCES employees(emp_id),
    FOREIGN KEY(emp_pos_id) REFERENCES posts(pos_id)
);

CREATE TABLE countries(
    cou_id                          char(2) NOT NULL,
    cou_name                        varchar(50) NOT NULL,
    PRIMARY KEY(cou_id)
);

CREATE TABLE customers(
    cus_id                          int AUTO_INCREMENT NOT NULL,
    cus_lastname                    varchar(50) NOT NULL,
    cus_firstname                   varchar(50) NOT NULL,
    cus_sexe                        varchar(1) NOT NULL,
    cus_birthdate                   date NOT NULL,
    cus_billing_address             varchar(255) NOT NULL,
    cus_shipping_address            varchar(255) NOT NULL,
    cus_zipcode                     varchar(10) NOT NULL,
    cus_city                        varchar(50) NOT NULL,
    cus_phone                       varchar(10) NOT NULL,
    cus_mail                        varchar(50) NOT NULL,
    cus_password                    varchar(50) NOT NULL,
    cus_login                       varchar(50) NOT NULL,
    cus_type                        tinyint(1) NOT NULL,
    cus_coeff                       decimal(4,2) NOT NULL,
    cus_ref                         varchar(10) NOT NULL,
    cus_cou_id                      char(2) NOT NULL,
    cus_emp_id                      int(10) NOT NULL,
    PRIMARY KEY(cus_id),
    FOREIGN KEY(cus_cou_id) REFERENCES countries(cou_id),
    FOREIGN KEY(cus_emp_id) REFERENCES employees(emp_id)
);

CREATE TABLE orders(
    ord_id                          int AUTO_INCREMENT NOT NULL,
    ord_ref                         varchar(50) NOT NULL,
    ord_discount                    decimal(7,2),
    ord_date                        date NOT NULL,
    ord_method_payment              varchar(50),
    ord_settlement_date             date NOT NULL,      -- Date à laquelle le client doit payer
    ord_payment_date                date,               -- Date à laquelle le client a réellement payé
    ord_status                      varchar(50) NOT NULL,
    ord_billing_address             varchar(255),
    ord_lateness_cost               decimal(4,2),
    ord_cus_id                      int(10),
    PRIMARY KEY(ord_id),
    FOREIGN KEY(ord_cus_id) REFERENCES customers(cus_id)
);

CREATE TABLE delivery(
    del_id                          int AUTO_INCREMENT NOT NULL,
    del_real_date                   date NOT NULL,
    del_preparation_date            date,
    del_shipment_date               date,
    del_address                     varchar(255) NOT NULL,
    del_ord_id                      int(10) NOT NULL,
    PRIMARY KEY(del_id),
    FOREIGN KEY(del_ord_id) REFERENCES orders(ord_id)
);

CREATE TABLE categories(
    cat_id                          int AUTO_INCREMENT NOT NULL,
    cat_name                        varchar(50) NOT NULL,
    cat_cat_id                      int(10),
    PRIMARY KEY(cat_id),
    FOREIGN KEY(cat_cat_id) REFERENCES categories(cat_id)
);

CREATE TABLE suppliers(
    sup_id                          int AUTO_INCREMENT NOT NULL,
    sup_name                        varchar(50) NOT NULL,
    sup_address                     varchar(255) NOT NULL,
    sup_zipcode                     varchar(10) NOT NULL,
    sup_city                        varchar(50) NOT NULL,
    sup_phone                       varchar(10) NOT NULL,
    sup_mail                        varchar(50) NOT NULL,
    sup_cou_id                      char(2) NOT NULL,
    PRIMARY KEY(sup_id),
    FOREIGN KEY(sup_cou_id) REFERENCES countries(cou_id)
);

CREATE TABLE products(
    pro_id                          int AUTO_INCREMENT NOT NULL,
    pro_name                        varchar(50) NOT NULL,
    pro_desc                        text NOT NULL,
    pro_price                       decimal(7,2) NOT NULL,
    pro_ref                         varchar(50) NOT NULL,
    pro_stock                       int(10) NOT NULL,
    pro_stock_alert                 int(10) NOT NULL,
    pro_color                       varchar(50) NOT NULL,
    pro_picture                     varchar(50) NOT NULL,
    pro_add_date                    date NOT NULL,
    pro_update_date                 date,
    pro_blocked                     tinyint(1) NOT NULL, -- Permet de savoir si le produit doit être affiché ou non sur le site
    pro_sup_id                      int(10) NOT NULL,
    pro_cat_id                      int(10) NOT NULL,
    PRIMARY KEY(pro_id),
    FOREIGN KEY(pro_sup_id) REFERENCES suppliers(sup_id),
    FOREIGN KEY(pro_cat_id) REFERENCES categories(cat_id)
);

CREATE TABLE orders_details(
    ode_id                          int AUTO_INCREMENT NOT NULL,
    ode_quantity                    int(10) NOT NULL,
    ode_unit_price                  float NOT NULL,
    ode_discount                    float,
    ode_ord_id                      int(10) NOT NULL,
    ode_del_id                      int(10) NOT NULL,
    ode_pro_id                      int(10) NOT NULL,
    PRIMARY KEY(ode_id),
    FOREIGN KEY(ode_ord_id) REFERENCES orders(ord_id),
    FOREIGN KEY(ode_del_id) REFERENCES delivery(del_id),
    FOREIGN KEY(ode_pro_id) REFERENCES products(pro_id)
);

CREATE TABLE quantity(
    qua_ode_id                      int(10) NOT NULL,
    qua_del_id                      int(10) NOT NULL,
    qua_quantity                    int(10) NOT NULL,
    PRIMARY KEY(qua_ode_id, qua_del_id),
    FOREIGN KEY(qua_ode_id) REFERENCES orders_details(ode_id),
    FOREIGN KEY(qua_del_id) REFERENCES delivery(del_id)
    );