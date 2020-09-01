DROP DATABASE IF EXISTS gescomB;
CREATE DATABASE gescomB;
USE gescomB;

CREATE TABLE posts(
    pos_id                  int(10) NOT NULL,
    pos_libelle             varchar(50) NOT NULL,
    PRIMARY KEY (pos_id)
);

CREATE TABLE employees(
    emp_id                  int(10) NOT NULL,
    emp_pos_id              int(10) NOT NULL,
    emp_lastname            varchar(50) NOT NULL,
    emp_firstname           varchar(50) NOT NULL,
    emp_address             varchar(50) NOT NULL,
    emp_zipcode             int(10) NOT NULL,
    emp_city                varchar(50) NOT NULL,
    emp_mail                varchar(50) NOT NULL,
    emp_phone               varchar(20) NOT NULL,
    emp_enter_date          date NOT NULL,
    emp_gender              char(2) NOT NULL,
    emp_children            int(2) NOT NULL,
    emp_superior_id         int(10) NOT NULL,
    PRIMARY KEY(emp_id),
    FOREIGN KEY(emp_pos_id) REFERENCES posts(pos_id),
    KEY emp_superior_id (emp_superior_id)
);


CREATE TABLE customers(
    cus_id                  int(10) NOT NULL,
    cus_lastname            varchar(50) NOT NULL,
    cus_firstname           varchar(50) NOT NULL,
    cus_address             varchar(100) NOT NULL,
    cus_zipcode             varchar(10) NOT NULL,
    cus_city                varchar(50) NOT NULL,
    cus_mail                varchar(50) NOT NULL,
    cus_phone               varchar(20) NOT NULL,
    cus_password            varchar(30) NOT NULL,
    cus_add_date            date NOT NULL,
    cus_update_date         date,
    PRIMARY KEY(cus_id)
);

CREATE TABLE suppliers(
    sup_id                  int(10) NOT NULL,
    sup_name                varchar(50) NOT NULL,
    sup_city                varchar(50) NOT NULL,
    sup_address             varchar(100) NOT NULL,
    sup_zipcode             varchar(10) NOT NULL,
    sup_contact             varchar(50) NOT NULL,
    sup_phone               varchar(20) NOT NULL,
    sup_mail                varchar(50) NOT NULL,
    PRIMARY KEY(sup_id)
);

CREATE TABLE orders(
    ord_id                  int(10) NOT NULL,
    ord_order_date          date NOT NULL,
    ord_payment_date        date,
    ord_ship_date           date,
    ord_reception_date      date,
    ord_status              varchar(50) NOT NULL,
    ord_cus_id              int(10),
    PRIMARY KEY(ord_id),
    FOREIGN KEY(ord_cus_id) REFERENCES customers(cus_id)
);

CREATE TABLE categories(
    cat_id                  int(10) NOT NULL,
    cat_name                varchar(50) NOT NULL,
    cat_parent_id           int(10) NOT NULL,
    PRIMARY KEY(cat_id),
    KEY cat_parent_id (cat_parent_id)
);

CREATE TABLE products(
    pro_id                  int(10) NOT NULL,
    pro_price               float NOT NULL,
    pro_ref                 varchar(50) NOT NULL,
    pro_ean                 varchar(50) NOT NULL,
    pro_stock               int(10) NOT NULL,
    pro_stock_alert         int(10) NOT NULL,
    pro_color               varchar(20) NOT NULL,
    pro_name                varchar(50) NOT NULL,
    pro_desc                text NOT NULL,
    pro_add_date            date NOT NULL,
    pro_update_date         date,
    pro_picture             varchar(50),
    pro_cat_id              int(10) NOT NULL,
    pro_sup_id              int(10) NOT NULL,
    PRIMARY KEY(pro_id),
    FOREIGN KEY(pro_cat_id) REFERENCES categories(cat_id),
    FOREIGN KEY(pro_sup_id) REFERENCES suppliers(sup_id)
);

CREATE TABLE orders_details(
    ode_id                  int(10) NOT NULL,
    ode_unit_price          float NOT NULL,
    ode_discount            float,
    ode_quantity            int(10) NOT NULL,
    ode_ord_id              int(10) NOT NULL,
    ode_pro_id              int(10) NOT NULL,
    PRIMARY KEY(ode_id),
    FOREIGN KEY(ode_ord_id) REFERENCES orders(ord_id),
    FOREIGN KEY(ode_pro_id) REFERENCES products(pro_id)
);