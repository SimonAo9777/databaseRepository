-- FileName: Assignment2_SimonAo040983402_DDL.sql
-- Description: script to create Interior architecture design company database, create TABLEs
-- CST 8215
-- Author: Simon Ao
-- Year: 2020
-- Last Modified:20201121

-- cleate the index

DROP INDEX IF EXISTS DesignSkill_information_IDX;
DROP INDEX IF EXISTS DesignExpert_information_IDX;

-- cleate the views
DROP VIEW IF EXISTS DisplayDesignOffice_T_V;
DROP VIEW IF EXISTS Designer_T_V;


--drop the additional tables
DROP TABLE IF EXISTS DesignExpert_T;
DROP TABLE IF EXISTS DesignSkill_T;
DROP TABLE IF EXISTS Designer_T;
DROP TABLE IF EXISTS Telephone_T;
DROP TABLE IF EXISTS DesignOffice_T;
DROP TABLE IF EXISTS DesignDepartment_T;

--create DesignOffice_T table
CREATE TABLE DesignOffice_T(
DesignOffice_code           CHAR(3),
DesignOffice_address        VARCHAR(30)NOT NULL,
CONSTRAINT PK_DesignOffice  PRIMARY KEY(DesignOffice_Code)
);
--create Telephone_T table
CREATE TABLE Telephone_T(
DesignOffice_code       CHAR(3),
PhoneNumber             VARCHAR( 15 ) NOT NULL,
CONSTRAINT FK_Telephone FOREIGN KEY(DesignOffice_code) REFERENCES DesignOffice_T(DesignOffice_code)
);
--create DesignDepartment_T table

CREATE TABLE DesignDepartment_T(
DesignDepartment_ID CHAR( 4 ) NOT NULL,
DesignDepartment_name VARCHAR( 30 ) NULL,
CONSTRAINT PK_DesignDepartment PRIMARY KEY(DesignDepartment_ID)
);
--create Designer_T table
CREATE TABLE Designer_T(
Designer_ID                 CHAR( 4 ) NOT NULL,
DesignOffice_code           CHAR(3),
DesignDepartment_ID         CHAR( 4 ) NOT NULL,
Designer_Fname              VARCHAR( 30 ) NULL,
Designer_Lname              VARCHAR( 30 ) NOT NULL,
CONSTRAINT PK_Designer PRIMARY KEY(Designer_ID),
CONSTRAINT FK_DesignOffice FOREIGN KEY (DesignOffice_code) REFERENCES DesignOffice_T(DesignOffice_code),
CONSTRAINT FK_Department FOREIGN KEY (DesignDepartment_ID) REFERENCES DesignDepartment_T(DesignDepartment_ID)
);
--create DesignSkill_T table
CREATE TABLE DesignSkill_T(
DesignSkill_ID             CHAR( 4 ) NOT NULL,
DesignSkill_name           VARCHAR( 30 ) NULL,
DesignSkill_description    VARCHAR( 60 ) NOT NULL,
CONSTRAINT PK_DesignSkill PRIMARY KEY (DesignSkill_ID)
);
--create DesignExpert_T table
CREATE TABLE DesignExpert_T(
Designer_ID         CHAR( 4 ) NOT NULL,
DesignSkill_ID      CHAR( 4 ) NOT NULL,
Level               CHAR( 4 ) NOT NULL,
Date_acquired       CHAR( 10 ) NOT NULL,
CONSTRAINT FK_Designer FOREIGN KEY (Designer_ID) REFERENCES Designer_T(Designer_ID),
CONSTRAINT FK_DesignSkill FOREIGN KEY(DesignSkill_ID)REFERENCES DesignSkill_T(DesignSkill_ID)
);

--create two views
--1.DisplayDesignOffice_T_V:show D13 office address

CREATE VIEW DisplayDesignOffice_T_V AS
SELECT designoffice_code,designoffice_address
FROM DesignOffice_T
WHERE designoffice_code = 'D13';

--2.Designer_T_V:show D12 office Designer_fname,Designer_lname,designOffice_code

CREATE VIEW Designer_T_V AS
SELECT Designer_ID,Designer_fname,Designer_lname,designOffice_code
FROM Designer_T
WHERE designOffice_code ='D12';

--create two index

CREATE INDEX DesignSkill_information_IDX ON DesignSkill_T(designskill_ID,designskill_name,designskill_description);

CREATE INDEX DesignExpert_information_IDX ON DesignExpert_T(designer_ID,designskill_ID,level,date_acquired);

-- eof: DesignOffice company database-DDL.sql