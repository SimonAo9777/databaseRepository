-- FileName: Assign1_Simon Ao040983402_DML.sql
-- Description: script to update InventoryNew database, insert data into TABLEs
-- Author: Simon Ao
-- Year: 2020
-- Last Modified: 20201013

--delete date


delete from  Product_T;
delete from  Invoice_T;
delete from  Customer_T;
delete from  City_T;
delete from  Country_T;

-- Populate Country table

insert into COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) values( 'RUS', 'Russian Federation', 144192450 );
insert into COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) values( 'MEX', 'Mexico', 119530753 );
insert into COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) values( 'DZA', 'Algeria', 40400000 );
insert into COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) values( 'CHN', 'China', 1376049000 );
insert into COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) values( 'CHL', 'Chile', 18006407 );
insert into COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) values( 'CAN', 'Canada', 36155487 );
insert into COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) values( 'ITA', 'Italy', 57680000 );
insert into COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) values( 'JPN', 'Japan', 126714000 );
insert into COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) values( 'DEU', 'Germany', 82164700 );
insert into COUNTRY_T( Cntry_Code, Cntry_Name, Cntry_Population ) values( 'NPL', 'Nepal', 23930000 );


-- Populate Customer data, add at least one customer from Canada
insert into Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_Country, Cust_City, Cust_Prov, Cust_PostCode, Cust_Balance )
values( 'C001', 'Your first name', 'Your Last Name', '613-727-4723', '1385 Woodroffe Ave', 'CAN', 'Ottawa', 'ON', 'K2G1V8', 0 );
insert into Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_Country, Cust_City, Cust_Prov, Cust_PostCode, Cust_Balance )
values( 'C002', 'Your First Name', 'Your Last Name', '613-727-4723', '1385 Woodroffe Ave', 'CAN', 'Ottawa', 'ON', 'K2G1V8', 0 );
insert into Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_Country, Cust_City, Cust_Prov, Cust_PostCode, Cust_Balance )
values( 'C003', 'Your First Name', 'Your Last Name', '613-727-4723', '1385 Woodroffe Ave', 'CAN', 'Ottawa', 'ON', 'K2G1V8', 0 );
insert into Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_Country, Cust_City, Cust_Prov, Cust_PostCode, Cust_Balance )
values( 'C004', 'Your First Name', 'Your Last Name', '613-727-4723', '854 Younge Street' , 'CAN', 'Toronto','ON', 'K2G1V8', 0 );
insert into Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_Country, Cust_City, Cust_Prov, Cust_PostCode, Cust_Balance )
values( 'C005', 'Your First Name', 'Your Last Name', '613-727-4723', '264 Main Street'   , 'CAN', 'Kitchener', 'ON', 'K2G1V8', 0 );
insert into Customer_T( Cust_Id, Cust_Fname, Cust_Lname, Cust_Phone, Cust_Address, Cust_Country, Cust_City, Cust_Prov, Cust_PostCode, Cust_Balance )
values( 'C006', 'Your First Name', 'Your Last Name', '613-727-4723', '357 Rue Catherine' , 'CAN', 'Montreal', 'ON', 'K2G1V8', 0 );

-- Add Invocie data

insert into Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  values( 'I23001', 'C001', '2011-02-15' );
insert into Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  values( 'I23002', 'C001', '2011-04-25' );
insert into Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  values( 'I23003', 'C004', '2011-06-12' );
insert into Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  values( 'I23004', 'C002', '2011-07-08' );
insert into Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  values( 'I23005', 'C005', '2011-08-24' );
insert into Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  values( 'I23006', 'C006', '2011-09-07' );
insert into Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  values( 'I23007', 'C006', '2010-12-28' );
insert into Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
  values( 'I23008', 'C006', '2011-12-15' );

-- Populate Product data, add one from RUS and one from CHL
insert into Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount, Cntry_Origin )
values( 'P2011', 'Compac Presario', '2011-02-14', 20, 5, 499.99, 0, 'RUS' );
insert into Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount, Cntry_Origin ) 
  values( 'P2012', 'HP laptop', '2010-09-25', 40, 5, 529.99, 0, 'CHL' );
insert into Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount, Cntry_Origin ) 
  values( 'P2013', 'Samsung LCD', '2010-02-15', 22, 8, 329.99, 0, 'CAN' );
insert into Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount, Cntry_Origin ) 
  values( 'P2014', 'Brother Network All-In-One Laser Printer', '2010-10-10', 50, 10, 159.99, 0, 'CAN' );
insert into Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount, Cntry_Origin ) 
  values( 'P2015', 'Western Digital External Hard drive', '2010-04-08', 30, 10, 149.99, NULL, 'CAN' );
insert into Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount, Cntry_Origin ) 
  values( 'P2016', 'Apple iPad 2 with Wi-Fi + 3G', '2011-02-23', 90, 200, 849.00, 0, 'CAN' );
insert into Product_T( Prod_Code, Prod_Description, Prod_Indate, Prod_QOH, Prod_Min, Prod_Price, Prod_Discount, Cntry_Origin ) 
  values( 'P2017', 'iPAD 2 Smart Cover', '2011-02-14', 70, 10, 45.00, 10, 'CAN' );

-- Add Invoice Line Data
insert into Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
 values( 'I23001', 1, 'P2011', 1, 650.75 ); 
insert into Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  values( 'I23001', 2, 'P2014', 3, 159.99 );
insert into Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  values( 'I23002', 1, 'P2012', 1, 529.99 );
insert into Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  values( 'I23003', 1, 'P2015', 3, 140.75 );
insert into Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  values( 'I23004', 1, 'P2014', 1, 159.99 );
insert into Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  values( 'I23005', 1, 'P2016', 1, 798.99 );
insert into Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  values( 'I23006', 1, 'P2011', 1, 499.99 );
insert into Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  values( 'I23007', 1, 'P2012', 1, 529.99 );
insert into Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  values( 'I23008', 1, 'P2016', 3, 689.00 );
insert into Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code, Line_Unit, Line_Price )
  values( 'I23008', 2, 'P2017', 3, 35.99 );


-- Populate data in table City_t
insert into City_t values (1,'Moscow','RUS',8389200);
insert into City_t values (2,'Omsk','RUS',1148900);
insert into City_t values (3,'Toluca','MEX',665617);
insert into City_t values (4,'Saltillo','MEX',577352);
insert into City_t values (5,'Alger','DZA',2168000);
insert into City_t values (6,'Oran','DZA',609823);
insert into City_t values (7,'Shanghai','CHN',9696300);
insert into City_t values (8,'Peking','CHN',7472000);
insert into City_t values (9,'Arica','CHL',189036);
insert into City_t values (10,'Talca','CHL',187557);
insert into City_t values (11,'Toronto','CAN',688275);
insert into City_t values (12,'Ottawa','CAN',335277);
insert into City_t values (13,'Roma','ITA',2643581);
insert into City_t values (14,'Milano','ITA',1300977);
insert into City_t values (15,'Osaka','JPN',2595674);
insert into City_t values (16,'Sakai','JPN',797735);
insert into City_t values (17,'Berlin','DEU',3386667);
insert into City_t values (18,'Hamburg','DEU',1704735);
insert into City_t values (19,'Kathmandu','NPL',591836);
insert into City_t values (20,'Biratanagar','NPL',157764);

-- Mandatory data from the assignment guideline

insert into Customer_T( Cust_ID, Cust_FName, Cust_LName, Cust_Phone, Cust_Address, 
	Cust_City, Cust_Prov, Cust_PostCode, Cust_Country, Cust_Balance )
	values( 'C098', 'Oas', 'Qblsi', '7-751-707-7243', 'Ulitsa Aleutskaya','Valdivostok', 'VL','VL7SK4', 'RUS', 0 );
	insert into Product_T( Prod_Code, Prod_Description, Prod_InDate, Prod_QOH, Prod_Min,
	Cntry_Origin, Prod_Price, Prod_Discount )
	values( 'P2118', 'Organic Chard', '2018-01-14', 240, 100, 'RUS', 15.00, 5 );
insert into Product_T( Prod_Code, Prod_Description, Prod_InDate, Prod_QOH, Prod_Min,
	Cntry_Origin, Prod_Price, Prod_Discount )
	values( 'P2021', 'Organic Collard Green', '2018-01-14', 140, 110, 'RUS', 11.00, 5 );
insert into Invoice_T( Invoice_Number, Cust_Id, Invoice_Date )
	values( 'I78001', 'C097', '2018-01-15' );
insert into Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code,
	Line_Unit, Line_Price )
	values( 'I78001', 1, 'P2119', 3, 15.00 );
insert into Invoice_Line_T( Invoice_Number, Invoice_Line, Prod_Code,
	Line_Unit, Line_Price )
	values( 'I78001', 2, 'P2020', 3, 11.00 );




