-- FileName: Assign1_Simon Ao040983402_DDL.sql
-- Description: script to create InventoryNew database, create TABLEs
-- Author: Simon Ao
-- Year: 2020
-- Last Modified: 20201013

--claer the views
drop view if exists CityCanada_V;
drop view if exists CountryMaxPopulation_V;

--drop the additional tables
drop table if exists Invoice_Line_T;
drop table if exists Product_T;
drop table if exists Invoice_T;
drop table if exists Customer_T;
drop table if exists City_T;
drop table if exists Country_T;

--create customer t table
create table Customer_T(
Cust_Id        char(4),
Cust_Fname     varchar(30) null,
Cust_Lname     varchar(30)not null,
Cust_Phone     varchar(15)not null,
Cust_Address   varchar(20)not null,
Cust_Country   varchar(15)not null,
Cust_City      varchar(15)not null,
Cust_Prov      char(2)null,
Cust_PostCode  char(6)not null,
Cust_Balance   decimal(9,2),
constraint PK_Customer primary key(Cust_Id)
);

--create invoice_t table
create table Invoice_T (
  Invoice_Number     char( 6 ),
  Cust_Id            char( 4 ) not null,
  Invoice_Date       date default now(),
  constraint PK_Invoice primary key( Invoice_Number ),
  constraint FK_Cust_ID foreign key( Cust_Id ) references Customer_T( Cust_ID )
  );

-- create product_t table
create table Product_T (
  Prod_Code        char( 5 ),
  Prod_Description varchar( 60 ) not null,
  Prod_Indate      date not null default now(),
  Prod_QOH         integer not null,
  Prod_Min         integer,
  Prod_Price       decimal( 5, 2 ) not null,
  Prod_Discount    integer,
  Cntry_Origin     varchar(15)not null,
  constraint PK_Product primary key( Prod_Code )
);
-- create invoice_line_t table
create table Invoice_Line_T (
  Invoice_Number       char( 6 ),
  Invoice_Line         integer,
  Prod_Code char( 5 )  not null,
  Line_Unit            integer not null,
  Line_Price           decimal( 9, 2 ) not null,
  constraint PK_Invoice_Line  primary key( Invoice_Number, Invoice_Line ),
  constraint FK1_Invoice_Line foreign key( Invoice_Number ) references Invoice_T( Invoice_Number ),
  constraint FK2_Invoice_Line foreign key( Prod_Code ) references Product_T( Prod_Code )
);


create table Country_T (
Cntry_Code char(3),
Cntry_Name varchar(30) not null,
Cntry_Population integer null,
constraint PK_Country primary key( Cntry_Code )
);

-- Create the City_T table. Add foreigh_key
create table City_T (
City_ID integer,
City_Name varchar(30) not null,
Cntry_Code char(3),
City_Population integer,
constraint PK_City primary key(City_ID),
constraint FK_City_T foreign key (Cntry_Code) references Country_T(Cntry_Code)
);


-- Modity Customer_T table. Add column Cust_Country and foreigh_key.

alter table Customer_T add Cust_Country char(3);
alter table Customer_T add constraint FK_Customer_T foreign key (Cust_Country) references Country_T(Cntry_Code);

-- Modity Product_T table. Add column Cntry_Origin and foreigh_key
alter table Product_T add Cntry_Origin char(3);
alter table Product_T add constraint FK_Product_T foreign key (Cntry_Origin) references Country_T(Cntry_Code);

-- Create two views
-- 1.CityCanada_V: show the cities of Canada

create view CityCanada_V as select  City_ID,City_Name,Cntry_Code FROM City_T WHERE Cntry_Code = 'CAN';

-- 2.CountryPopulation_V: show the country which has the largest population

create view CountryMaxPopulation_V as
select * from Country_T
where Cntry_Population = (select max(Cntry_Population) from Country_T)


-- eof: Country-City-DDL.sql
