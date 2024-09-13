DROP TABLE If EXISTS products;

create table products
(
    product_id  INT            NOT NULL AUTO_INCREMENT,
    name        varchar(100)   NOT NULL,
    description varchar(200)   null,
    price       decimal(10, 2) not null,
    primary key (product_id)

);

Drop Table IF EXISTS orders;

create table orders
(
    order_id    int      not null auto_increment,
    customer_id int      not null,
    ordered_at  datetime not null,
    primary key (order_id)
);

DROP TABLE if exists order_items;

create table order_items
(
    order_item_id  int not null auto_increment,
    product_id     int not null,
    order_id       int not null,
    order_quantity int not null,
    primary key (order_item_id)
);



DROP TABLE IF EXISTS customers;

create table customers
(
    customer_id  int          not null AUTO_INCREMENT,
    name         varchar(100) not null,
    phone_numver varchar(100) null,
    address      varchar(100) not null,
    primary key (customer_id)
);