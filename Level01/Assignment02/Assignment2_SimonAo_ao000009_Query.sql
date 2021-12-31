-- FileName: Assignment2_SimonAo040983402_DDL.sql
-- Description: script to create Interior architecture design company database, create TABLEs
-- CST 8215
-- Author: Simon Ao
-- Year: 2020
-- Last Modified:20201121

--table information
SELECT * FROM Designer_T;
SELECT * FROM DesignSkill_T;
SELECT * FROM DesignOffice_T;
SELECT * FROM DesignDepartment_T;
SELECT * FROM Telephone_T;
SELECT * FROM DesignExpert_T;

--Metadata information
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE
TABLE_NAME = 'designer_t' OR
TABLE_NAME = 'designskill_t' OR
TABLE_NAME = 'designoffice_t' OR
TABLE_NAME = 'designdepartment_t' OR
TABLE_NAME = 'telephone_t' OR
TABLE_NAME = 'designexpert_t';


SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE
TABLE_NAME = 'designer_t' ;



---- Mandatory data from the assignment guideline insert statements
INSERT INTO DesignExpert_T(Designer_ID,DesignSkill_ID,Level,Date_acquired)
VALUES('0006','K003','L7','2020-11-15');

INSERT INTO DesignExpert_T(Designer_ID,DesignSkill_ID,Level,Date_acquired,Da)
VALUES('0006','K003','L8','2020-11-15');

SELECT * FROM DesignExpert_T;


--left outer join
SELECT designer_t.designer_id,designskill_id
FROM  designer_t
left join designExpert_t
on designexpert_t.designer_id = designer_t.designer_id;


--right outer join
SELECT designOffice_t.designoffice_code,designDepartment_t.designDepartment_id
from designDepartment_t right join
designOffice_t on designOffice_t.designoffice_code = designDepartment_t.designDepartment_id;


SELECT designDepartment_t.designDepartment_id,designskill_id
from designDepartment_t 
right join designskill_t
on designskill_t.designskill_id = designDepartment_t.designDepartment_id;


--UNION join
SELECT  designer_id FROM Designer_T
UNION
SELECT  designer_id FROM DesignExpert_T;



--1.DisplayDesignOffice_T_V:show D13 office address
SELECT * FROM DisplayDesignOffice_T_V;
--2.Designer_T_V:show 0002 Designer_fname,Designer_lname,designOffice_code
SELECT * FROM Designer_T_V;



-- eof: DesignOffice company database-query.sql