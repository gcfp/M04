USE [IABD]

	DELETE FROM [DWH_ALL_SALES];
	DELETE FROM [DWH_CUSTOMERS];
	DELETE FROM [DWH_SALES_REP];
	DELETE FROM [DWH_STORE]; 
	DELETE FROM [DWH_PRODUCTS_FULL];
	DELETE FROM [DWH_CUSTOMER_TYPE];
	DELETE FROM [DWH_PRODUCT_CLASS];
	DELETE FROM [DWH_PRODUCT_FAMILY];
	DELETE FROM [DWH_PRODUCT_LINE];
	

INSERT INTO [dbo].[DWH_STORE]
           ([ID_store]
           ,[name_store]
           ,[city_store]
           ,[ISO_country]
           ,[country_store]
           ,[sq_feet_store]
           ,[Insert_date])
     VALUES (1, 'Roma #2', 'Roma', 'IT', 'Italy', 200,	NULL),
(2, 'Flagship', 'Roma', 'IT', 'Italy',	4800,	NULL),
(3, 'Roma #1',	'Roma', 'IT', 'Italy',	2000, NULL),
(4, 'Milano #1', 'Milan', 'IT', 'Italy', 800,	NULL),
(5, 'Milano #2', 'Milan', 'IT', 'Italy',1250,	NULL),
(6, 'Palermo #1', 'Palermo', 'IT', 'Italy',900,	NULL),
(7, 'Poblenou', 'Barcelona', 'ES', 'Spain',2000,	NULL),
(8, 'Centro', 'Barcelona', 'ES', 'Spain', 900,	NULL),
(9, 'Rambla', 'Barcelona', 'ES', 'Spain', 950,	NULL),
(10, 'Kutxa', 'Bilbao', 'ES', 'Spain',750,	NULL),
(11, 'Maestranza', 'Sevilla', 'ES', 'Spain', 1100,	NULL),
(12, 'Granada', 'Granada', 'ES', 'Spain', 950,	NULL),
(13, 'Madrid #1', 'Madrid', 'ES', 'Spain', 0,	NULL),
(14, 'Madrid #2', 'Madrid', 'ES', 'Spain', 0,	NULL),
(15, 'Madrid #3', 'Madrid', 'ES', 'Spain', 0,	NULL),
(16, 'Malagueta', 'Malaga', 'ES', 'Spain', 0,	NULL);

INSERT INTO [dbo].[DWH_SALES_REP]
           ([ID_sales_rep]
           ,[name_sales_rep]
           ,[birthday_sales_rep]
           ,[salary]
           ,[ID_team_manager]
           ,[ID_store]
           ,[Currency]
           ,[Insert_date])
     VALUES (228, 'Hiroko Hunt', '1992-03-04',1600,	8,	1,	'EUR',NULL),
(229, 'Adara Matthews', '1979-01-21',1600,	14,	2,	'EUR',NULL),
(230, 'Leandra Valentine', '1979-09-14',2000,	14,	1,	'EUR',	NULL),
(231, 'Lydia Jacobs', '1982-11-18',1600,	12,	3,	'EUR',NULL),
(232, 'Tasha Hinton', '1985-08-14',2000,	4,	4,	'EUR',	NULL),
(233, 'Alea Mack', '1986-12-05',1600,	2,	2,	'EUR',NULL),
(234, 'Walker Young', '1989-07-07',1600,	2,	1,	'EUR',NULL),
(235, 'John Mayer', '1989-09-09',2000,	7,	4,	'EUR',NULL),
(236, 'Henry Duke', '1990-02-23',2000,	1,	3,	'EUR',NULL),
(237, 'Hollee Padilla', '1990-12-23',2000,	11,	2,	'EUR',NULL),
(238, 'April Bird', '1993-04-30',2000,	15,	4,	'EUR',NULL),
(239, 'Linda Petersen', '1994-08-03',2000,	16,	1,	'EUR',NULL),
(240, 'Alisa Harrington', '1995-05-29',2000,	9,	3,	'EUR',NULL),
(241, 'Dorian Stout', '1996-05-27',2000,	8,	2,	'EUR',NULL),
(242, 'Samuel Heath', '1996-06-03',2000,	2,	4,	'EUR',NULL),
(243, 'Maryam Miller', '1999-02-19',2000,	6,	4,	'EUR',NULL),
(244, 'Catherine Mcclain', '1990-11-24',2000,	8,	2,	'EUR',NULL),
(245, 'Michael Santana', '1991-10-23',2000,	9,	2,	'EUR',NULL),
(246, 'Xyla Kim', '1991-11-27',2000,	3,	3,	'EUR',NULL),
(247, 'Amos Burgess', '1992-06-11',2000,	2,	4,	'EUR',	NULL);

INSERT INTO [dbo].[DWH_CUSTOMER_TYPE]
           ([ID_Customer_Type]
           ,[Name_Customer_Type]
           ,[Insert_date])
     VALUES (0,	'No asignado',	NULL),
(1,	'Large Retailer',	NULL),
(2,	'Small Retailer',	NULL),
(3,	'No asignado',	NULL),
(4,	'No asignado',	NULL),
(5,	'No asignado',	NULL),
(6,	'No asignado',	NULL),
(7,	'No asignado',	NULL);

INSERT INTO [dbo].[DWH_CUSTOMERS]
           ([ID_customer]
           ,[ID_sales_rep]
           ,[ID_Type_customer]
           ,[Name_company]
           ,[City_customer]
           ,[Estimated_revenue_customer]
           ,[Estimated_num_employees_customer]
           ,[Currency]
           ,[Country_ISO]
           ,[Insert_date])
     VALUES (0,	NULL,	0,	'No identificado',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(2122,	245,	2,	'Atlantic Stores', 'Roma', 10500000, 84, 'EUR', 'IT', '2023-04-10 18:16:47.000'),
(2123,	241,	2,	'Alms and Doepke', 'Roma', 4500000, 36, 'EUR', 'IT', '2023-04-10 18:16:47.000'),
(2124,	242,	3,	'Best Sportswear', 'Roma', 4500000, 36, 'EUR', 'IT', '2023-04-10 18:16:47.000'),
(2125,	234,	6,	'Bargain City', 'Roma', 9000000, 72, 'EUR', 'IT', '2023-04-10 18:16:47.000'),
(2126,	239,	6,	'Bailey Brothers', 'Roma', 9000000, 72, 'EUR', 'IT', '2023-04-10 18:16:47.000'),
(2127,	244,	4,	'Bragdon', 'Roma', 3000000, 24, 'EUR', 'IT', '2023-04-10 18:16:47.000'),
(2128,	243,	2,	'Buckeye Mart', 'Roma', 6000000, 48, 'EUR', 'IT', '2023-04-10 18:16:47.000'),
(2129,	234,	5,	'Clark', 'Roma', 9000000,	72, 'EUR', 'IT', '2023-04-10 18:16:47.000'),
(2130,	231,	7,	'Concord City', 'Roma', 13500000, 108, 'EUR', 'IT', '2023-04-10 18:16:47.000');




INSERT INTO [dbo].[DWH_PRODUCT_CLASS]
           ([ID_product_class]
           ,[Name_product_class]
           ,[Insert_date])
     VALUES
           ('0',	'No identificado',	NULL),
('ACC',	'Accessories',	'2023-04-10 18:16:45.000'),
('EQ',	'Equipment',	'2023-04-10 18:16:45.000'),
('M',	'Men Clothing',	'2023-04-10 18:16:45.000'),
('W',	'Women Clothing',	'2023-04-10 18:16:45.000');

INSERT INTO [dbo].[DWH_PRODUCT_FAMILY]
           ([ID_product_family]
           ,[Name_product_family]
           ,[Insert_date])
     VALUES
           (0,	'No identificado',	NULL),
(1,	'Yoga',	'2023-04-10 18:16:45.000'),
(2,	'CrossFit',	'2023-04-10 18:16:45.000');

INSERT INTO [dbo].[DWH_PRODUCT_LINE]
           ([ID_product_line]
           ,[Name_product_line]
           ,[Insert_date])
     VALUES
           (0,	'No identificado',	NULL),
(1,	'Bag',	'2023-04-10 18:16:45.000'),
(2,	'Cleaner',	'2023-04-10 18:16:45.000'),
(3,	'Jewellery', '2023-04-10 18:16:45.000'),
(4,	'Media', '2023-04-10 18:16:45.000'),
(5,	'Mat', '2023-04-10 18:16:45.000'),
(6,	'Meditation', '2023-04-10 18:16:45.000'),
(7,	'	Lift Assist', '2023-04-10 18:16:45.000'),
(8,	'Prop',	'2023-04-10 18:16:45.000'),
(9, 'Bottoms - Pants',	'2023-04-10 18:16:45.000'),
(10, 'Bottoms - Shorts',	'2023-04-10 18:16:45.000'),
(11, 'Socks And Underwear',	'2023-04-10 18:16:45.000'),
(12, 'Tops',	'2023-04-10 18:16:45.000'),
(13, 'Tops - Jackets & Hoodies',	'2023-04-10 18:16:45.000'),
(14,	'Bra Tops',	'2023-04-10 18:16:45.000'),
(15,	'Gloves',	'2023-04-10 18:16:45.000'),
(16,	'Headbands',	'2023-04-10 18:16:45.000'),
(17,	'ops - Tanks',	'2023-04-10 18:16:45.000');

INSERT INTO [dbo].[DWH_PRODUCTS_FULL]
           ([ID_product]
           ,[ID_product_family]
           ,[ID_product_class]
           ,[Product_line]
           ,[Name_product_item]
           ,[Retail_price_ES]
           ,[Retail_price_ITA]
           ,[Sales_price]
           ,[COGS_percentage]
           ,[Currency_ES]
           ,[Currency_ITA]
           ,[Tax_ES]
           ,[Tax_ITA]
           ,[Price_with_tax_ES]
           ,[Price_with_tax_ITA]
           ,[Insert_date])
     VALUES (0,	NULL,	NULL,	NULL,	'No identificado',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
(200001,	1,	'ACC',	1,	'Fancy Mat Bag',	28.50,	29.90,	22.80,	0.4300,	'EUR', 'EUR', 0.2100,	0.2300,	6.19,	7.10, '2023-04-10 18:16:44.000'),
(200002,	1,	'ACC',	1,	'Yoga Equipment Bag',	60.00,	63.00,	48.00,	0.5000,	'EUR', 'EUR',	0.2100,	0.2300,	12.81,	14.72, '2023-04-10 18:16:44.000'),
(200003,	1,	'EQ',	1,	'Yoga Tote',	65.00,	68.20,	52.00,	0.5000, 'EUR', 'EUR', 0.2100,	0.2300,	13.86,	15.91, '2023-04-10 18:16:44.000'),
(200004,	1,	'ACC',	2,	'Zen Mat Cleaner',	5.00,	5.20,	4.00,	0.5400,	'EUR', 'EUR',	0.2100,	0.2300,	1.26,	1.42, '2023-04-10 18:16:44.000'),
(200005,	1,	'M',	3,	'Mala Bead Bracelet - Amethyst',	20.00,	21.00,	16.00,	0.4800,	'EUR', 'EUR', 0.2100,	0.2300,	4.41,	5.06, '2023-04-10 18:16:44.000'),
(200006,	1,	'ACC',	3,	'Mala Bead Bracelet - Turquoise',	20.00,	21.00,	16.00,	0.5200,	'EUR', 'EUR',	0.2100,	0.2300,	4.41,	5.06, '2023-04-10 18:16:44.000'),
(200007,	1,	'W',	3,	'Mala Bead Necklace - Carnelian',	50.00,	52.50,	40.00,	0.4900,	'EUR', 'EUR',0.2100,	0.2300,	10.71,	12.30, '2023-04-10 18:16:44.000'),
(200008,	1,	'W',	3,	'Mala Bead Necklace - Citrine',	55.00,	57.70,	44.00,	0.5200,	'EUR', 'EUR', 0.2100,	0.2300,	11.76,	13.50, '2023-04-10 18:16:44.000'),
(200009,	1,	'ACC',	4,	'Moksha Bliss By Rauri Das',	21.90,	23.00,	17.50,	0.5400,	'EUR', 'EUR',	0.2100,	0.2300,	4.80,	5.52, '2023-04-10 18:16:44.000');


INSERT INTO [dbo].[DWH_ALL_SALES]
           ([Date_sales]
           ,[ID_customer]
           ,[Order_number]
           ,[ID_sales_rep]
           ,[ID_product]
           ,[Quantity]
           ,[Discount]
           ,[Insert_date])
     VALUES
           ('2020-01-01', 2122,	43403,	237,	200001,	650, 'y', '2023-04-10 18:16:45.000'),
('2020-01-01',	2124,	43455,	235,	200002,	1000, 'n', '2023-04-10 18:16:45.000'),
('2020-01-01',	2123,	43565,	236,	200003,	930, 'n', '2023-04-10 18:16:45.000'),
('2020-01-02',	2124,	43486,	233,	200004,	820, 'n', '2023-04-10 18:16:45.000'),
('2020-01-02',	2122,	43568,	245,	200005,	1060, 'n', '2023-04-10 18:16:45.000'),
('2020-01-03',	2124,	43519,	240,	200003,	1455, 'n', '2023-04-10 18:16:45.000'),
('2020-01-04',	2122,	43444,	247,	200005,	930, 'n', '2023-04-10 18:16:45.000'),
('2020-01-04',	2124,	43447,	238,	200006,	970, 'n', '2023-04-10 18:16:45.000'),
('2020-01-04',	2129,	43507,	245,	200003,	515, 'n', '2023-04-10 18:16:45.000'),
('2020-01-04',	2125,	43509,	239,	200002,	835, 'n', '2023-04-10 18:16:45.000'),
('2020-01-04',	2130,	43519,	242,	200008,	935, 'n', '2023-04-10 18:16:45.000'),
('2020-01-04',	2126,	43543,	235,	200007,	335, 'n', '2023-04-10 18:16:45.000'),
('2020-01-04',	2129,	43587,	241,	200004,	480, 'n', '2023-04-10 18:16:45.000'),
('2020-01-05',	2122,	43420,	246,	200001,	120, 'n', '2023-04-10 18:16:45.000'),
('2020-01-05',	2126,	43446,	247,	200002,	190, 'n', '2023-04-10 18:16:45.000'),
('2020-01-05',	2127,	43449,	242,	200005,	20, 'y', '2023-04-10 18:16:45.000'),
('2020-01-05',	2127,	43456,	239,	200006,	125, 'n', '2023-04-10 18:16:45.000'),
('2020-01-05',	2128,	43461,	244,	200008,	220, 'n', '2023-04-10 18:16:45.000'),
('2020-01-05',	2122,	43500,	247,	200009,	240, 'n', '2023-04-10 18:16:45.000'),
('2020-01-05',	2124,	43528,	229,	200007,	115, 'n', '2023-04-10 18:16:45.000'),
('2020-01-05',	2125,	43534,	238,	200004,	100, 'n', '2023-04-10 18:16:45.000'),
('2020-01-05',	2128,	43537,	236,	200002,	235, 'n', '2023-04-10 18:16:45.000'),
('2020-01-05',	2127,	43556,	237,	200001,	425, 'n', '2023-04-10 18:16:45.000');
