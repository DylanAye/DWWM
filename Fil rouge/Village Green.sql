DROP DATABASE IF EXISTS VillageGreen;
CREATE DATABASE VillageGreen;
USE VillageGreen;

CREATE TABLE categories(
    cat_id                  int AUTO_INCREMENT NOT NULL,
    cat_name                varchar(50) NOT NULL,
    cat_cat_id              int(10),
    PRIMARY KEY(cat_id),
    FOREIGN KEY(cat_cat_id) REFERENCES categories(cat_id)
);

CREATE TABLE customers(
    cus_id                  int AUTO_INCREMENT NOT NULL,
    cus_firstname           varchar(50) NOT NULL,
    cus_lastname            varchar(50) NOT NULL,
    cus_type                boolean NOT NULL,
    cus_address             varchar(100) NOT NULL,
    cus_zipcode             varchar(10) NOT NULL,
    cus_city                varchar(50) NOT NULL,
    cus_mail                varchar(50) NOT NULL,
    cus_phone               varchar(20) NOT NULL,
    cus_password            varchar(50) NOT NULL,
    cus_add_date            date NOT NULL,
    cus_coeff               float NOT NULL,
    cus_emp_id              int(10) NOT NULL,
    PRIMARY KEY(cus_id),
    FOREIGN KEY(cus_emp_id) REFERENCES employees(emp_id)
);

CREATE TABLE employees(
    emp_id                  int AUTO_INCREMENT NOT NULL,
    emp_lastname            varchar(50) NOT NULL,
    emp_lastname            varchar(50) NOT NULL,
    emp_address             varchar(100) NOT NULL,
    emp_zipcode             varchar(10) NOT NULL,
    emp_city                varchar(50) NOT NULL,
    emp_mail                varchar(50) NOT NULL,
    emp_phone               varchar(10) NOT NULL,
    emp_enter_date          date NOT NULL,
    emp_pos_id              int(10) NOT NULL,
    PRIMARY KEY(emp_id),
    FOREIGN KEY(emp_pos_id) REFERENCES posts(pos_id)
);

CREATE TABLE orders(
    ord_id                  int AUTO_INCREMENT NOT NULL,
    ord_order_date          date NOT NULL,
    ord_payment_date        date NOT NULL,
    ord_ship_date           date NOT NULL,
    ord_reception_date      date NOT NULL,
    ord_status              varchar(50) NOT NULL,
    ord_price               float NOT NULL,
    ord_address             varchar(100) NOT NULL,
    ord_zipcode             varchar(10) NOT NULL,
    ord_city                varchar(50) NOT NULL,
    ord_discount            float NOT NULL,
    ord_cus_id              int(10) NOT NULL,
    PRIMARY KEY(ord_id),
    FOREIGN KEY(ord_cus_id) REFERENCES customers(cus_id)
);

CREATE TABLE orders_details(
    ode_id                  int AUTO_INCREMENT NOT NULL,
    ode_unit_price          float NOT NULL,
    ode_discount            float NOT NULL,
    ode_quantity            int(10) NOT NULL
    ode_ord_id              int(10) NOT NULL,
    ode_pro_id              int(10) NOT NULL,
    PRIMARY KEY(ode_id),
    FOREIGN KEY(ode_ord_id) REFERENCES orders(ord_id),
    FOREIGN KEY(ode_pro_id) REFERENCES products(pro_id)
);

CREATE TABLE posts (
    pos_id                  int AUTO_INCREMENT NOT NULL,
    pos_libelle             varchar(50) NOT NULL,
    PRIMARY KEY(pos_id)
);

CREATE TABLE products(
    pro_id                  int AUTO_INCREMENT NOT NULL,
    pro_libelle             varchar(50) NOT NULL,
    pro_ref                 varchar(50) NOT NULL,
    pro_price               float NOT NULL,
    pro_stock               int(10) NOT NULL,
    pro_picture             varchar(50) NOT NULL,
    pro_sup_id              int(10) NOT NULL,
    pro_cat_id              int(10) NOT NULL,
    PRIMARY KEY(pro_id),
    FOREIGN KEY(pro_sup_id) REFERENCES suppliers(sup_id)
    FOREIGN KEY(pro_cat_id) REFERENCES categories(cat_id)
);

CREATE TABLE suppliers(
    sup_id                  int AUTO_INCREMENT NOT NULL,
    sup_name                varchar(50) NOT NULL,
    sup_address             varchar(100) NOT NULL,
    sup_zipcode             varchar(10) NOT NULL,
    sup_city                varchar(50) NOT NULL,
    sup_contact             varchar(50) NOT NULL,
    sup_mail                varchar(50) NOT NULL,
    sup_phone               varchar(10) NOT NULL,
    PRIMARY KEY(sup_id)
);