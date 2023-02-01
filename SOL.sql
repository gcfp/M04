USE IABD;
CREATE TABLE STA_PRODUCTS_FULL(
    ID_product integer primary key,
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
    ID_product_family integer primary key,
    Name_product_family varchar(255)
);
CREATE TABLE STA_PRODUCT_CLASS(
    ID_product_class varchar(3) primary key,
    Name_product_class varchar(255)
);
CREATE TABLE STA_PRODUCT_LINE(
    ID_product_line integer primary key,
    Name_product_line varchar(255)
);
CREATE TABLE STA_SALES_REP(
	ID_sales_rep integer identity(1, 1) primary key,
	name_sales_rep varchar(30),
	birthday_sales_rep integer,
	salary integer,
	ID_team_manager integer,
	ID_store integer
);
CREATE TABLE STA_TEAM_MANAGER(
	ID_team_manager integer primary key,
	Name_team_manager varchar(255),
	Birthday_team_manager date,
	Salary_team_manager decimal(15,2)
);
CREATE TABLE STA_STORES(
	ID_store integer primary key,
	name_store varchar(30),
	city_store varchar(30),
	ISO_countrt varchar(3),
	country_store varchar(15),
	sq_feet_store integer
);
CREATE TABLE STA_CUSTOMERS(
	ID_customer integer primary key,
	ID_sales_rep integer,
	Name_company varchar(255),
	Country_customer varchar(255),
	City_customer varchar(255),
	Estimated_revenue_customer decimal(15,2),
	Estimated_num_employees_customer integer
);
CREATE TABLE STA_ALL_SALES(
	Date_sales date,
	ID_customer integer,
	Order_number integer,
	ID_sales_rep integer,
	ID_product integer,
	Quantity integer,
	Discount bit,
	primary key (Date_sales, Order_number, ID_product)
);