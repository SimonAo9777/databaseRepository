-- FileName: Assignment2_SimonAo040983402_DML.sql
-- Description: script to create Interior architecture design company database, create TABLEs
-- CST 8215
-- Author: Simon Ao
-- Year: 2020
-- Last Modified:20201121

--DELETE FROM additinal tables
DELETE FROM DesignExpert_T;
DELETE FROM DesignSkill_T;
DELETE FROM Designer_T;
DELETE FROM Telephone_T;
DELETE FROM DesignOffice_T;
DELETE FROM DesignDepartment_T;


--Add DesignOffice_T Date
INSERT INTO DesignOffice_T(DesignOffice_code,DesignOffice_address) 
VALUES('D11','4680 King Street');
INSERT INTO DesignOffice_T(DesignOffice_code,DesignOffice_address) 
VALUES('D12','2880 Fuli Street');
INSERT INTO DesignOffice_T(DesignOffice_code,DesignOffice_address) 
VALUES('D13','6880 Yong Street');
INSERT INTO DesignOffice_T(DesignOffice_code,DesignOffice_address) 
VALUES('D14','3580 Percy Street');
INSERT INTO DesignOffice_T(DesignOffice_code,DesignOffice_address) 
VALUES('D15','2380 Gloucester Street');
INSERT INTO DesignOffice_T(DesignOffice_code,DesignOffice_address) 
VALUES('D16','3880 Lisgar Street');

--Add Telephone_T date
INSERT INTO Telephone_T(DesignOffice_code,PhoneNumber)
VALUES('D11','613-3001328');
INSERT INTO Telephone_T(DesignOffice_code,PhoneNumber)
VALUES('D12','613-4001328');
INSERT INTO Telephone_T(DesignOffice_code,PhoneNumber)
VALUES('D13','613-5001328');
INSERT INTO Telephone_T(DesignOffice_code,PhoneNumber)
VALUES('D14','613-6001328');
INSERT INTO Telephone_T(DesignOffice_code,PhoneNumber)
VALUES('D15','613-7001328');
INSERT INTO Telephone_T(DesignOffice_code,PhoneNumber)
VALUES('D16','613-8001328');

--Add DesignDepartment_T date
INSERT INTO DesignDepartment_T(DesignDepartment_ID,DesignDepartment_name)
VALUES('U01','unit 25');
INSERT INTO DesignDepartment_T(DesignDepartment_ID,DesignDepartment_name)
VALUES('U02','unit 26');
INSERT INTO DesignDepartment_T(DesignDepartment_ID,DesignDepartment_name)
VALUES('U03','unit 27');
INSERT INTO DesignDepartment_T(DesignDepartment_ID,DesignDepartment_name)
VALUES('U04','unit 28');
INSERT INTO DesignDepartment_T(DesignDepartment_ID,DesignDepartment_name)
VALUES('U05','unit 29');
INSERT INTO DesignDepartment_T(DesignDepartment_ID,DesignDepartment_name)
VALUES('U06','unit 30');

--Add Designer_T date
INSERT INTO Designer_T(Designer_ID,DesignOffice_code,DesignDepartment_ID,Designer_Fname,Designer_Lname)
VALUES('0001','D11','U01','Tao','Wu');
INSERT INTO Designer_T(Designer_ID,DesignOffice_code,DesignDepartment_ID,Designer_Fname,Designer_Lname)
VALUES('0002','D12','U02','Zhao','Xion');
INSERT INTO Designer_T(Designer_ID,DesignOffice_code,DesignDepartment_ID,Designer_Fname,Designer_Lname)
VALUES('0003','D13','U03','Wen','Liu');
INSERT INTO Designer_T(Designer_ID,DesignOffice_code,DesignDepartment_ID,Designer_Fname,Designer_Lname)
VALUES('0004','D14','U04','Bao','Deng');
INSERT INTO Designer_T(Designer_ID,DesignOffice_code,DesignDepartment_ID,Designer_Fname,Designer_Lname)
VALUES('0005','D15','U05','Linn','Saka');
INSERT INTO Designer_T(Designer_ID,DesignOffice_code,DesignDepartment_ID,Designer_Fname,Designer_Lname)
VALUES('0006','D16','U06','Siou','Bau');

--Add DesignSkill_T date
INSERT INTO DesignSkill_T(DesignSkill_ID,DesignSkill_name,DesignSkill_description)
VALUES('K001','floor plan','preliminary plan');
INSERT INTO DesignSkill_T(DesignSkill_ID,DesignSkill_name,DesignSkill_description)
VALUES('K002','3D design drawing','color rendering1');
INSERT INTO DesignSkill_T(DesignSkill_ID,DesignSkill_name,DesignSkill_description)
VALUES('K003','CAD design drawing','detailed large sample drawing');
INSERT INTO DesignSkill_T(DesignSkill_ID,DesignSkill_name,DesignSkill_description)
VALUES('K004','color composition','color appearance drawing');
INSERT INTO DesignSkill_T(DesignSkill_ID,DesignSkill_name,DesignSkill_description)
VALUES('K005','material drawings','skeleton structure drawings');
INSERT INTO DesignSkill_T(DesignSkill_ID,DesignSkill_name,DesignSkill_description)
VALUES('K006','construction drawings','delivery drawings');
--Add DesignExpert_T date
INSERT INTO DesignExpert_T(Designer_ID,DesignSkill_ID,Level,Date_acquired)
VALUES('0001','K001','L1','2020-10-15');
INSERT INTO DesignExpert_T(Designer_ID,DesignSkill_ID,Level,Date_acquired)
VALUES('0002','K002','L2','2020-10-18');
INSERT INTO DesignExpert_T(Designer_ID,DesignSkill_ID,Level,Date_acquired)
VALUES('0003','K003','L3','2020-10-20');
INSERT INTO DesignExpert_T(Designer_ID,DesignSkill_ID,Level,Date_acquired)
VALUES('0004','K004','L4','2020-10-22');
INSERT INTO DesignExpert_T(Designer_ID,DesignSkill_ID,Level,Date_acquired)
VALUES('0005','K005','L5','2020-10-23');
INSERT INTO DesignExpert_T(Designer_ID,DesignSkill_ID,Level,Date_acquired)
VALUES('0006','K006','L6','2020-10-25');

-- eof: DesignOffice company database-DML.sql