create database IABD;
use IABD;
CREATE TABLE STA_PRODUCTS_FULL(
    ID_product integer identity(200000, 1) primary key,
    ID_product_family integer,
    ID_product_class Varchar(3),
    Product_line integer,
    Name_product_item Varchar(255),
    Retail_price_ES decimal(10, 2),
    Retail_price_ITA decimal(10, 2),
    Sales_price decimal(10, 2),
    COGS_percentage decimal(5, 4)
);
CREATE TABLE STA_PRODUCT_FAMILY(
    ID_product_family integer identity(1, 1) primary key,
    Name_product_family varchar(255)
);
CREATE TABLE STA_PRODUCT_CLASS(
    ID_product_class varchar(3) check (ID_product_class IN ('ACC', 'EQ', 'M', 'W')) primary key,
    Name_product_class varchar(255)
);
CREATE TABLE STA_PRODUCT_LINE(
    ID_product_line integer CHECK (
        ID_product_line BETWEEN 1 AND 17
    ) primary key,
    Name_product_line varchar(255)
);