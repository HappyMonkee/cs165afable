BEGIN;
--
-- Create model Business
--
CREATE TABLE "taxes_business" ("id" serial NOT NULL PRIMARY KEY, "SBN" integer NOT NULL, "Investment_Promotion" varchar(200) NOT NULL, "Legal_Basis" varchar(200) NOT NULL, "Incentive_Start" date NOT NULL, "Incentive_End" date NOT NULL, "Incentive_Granted" varchar(200) NOT NULL, "Accreditation_Number" integer NOT NULL, "Facility_Code" varchar(200) NOT NULL);
--
-- Create model Document
--
CREATE TABLE "taxes_document" ("id" serial NOT NULL PRIMARY KEY, "DLN" integer NOT NULL, "Single_Business_Number" integer NOT NULL, "Registering_Office" varchar(200) NOT NULL, "BIR_Registration_Date" date NOT NULL, "TIN" integer NOT NULL, "RDO_CODE" varchar(200) NOT NULL, "Municipality_Code" varchar(200) NOT NULL, "ID_Type" varchar(200) NOT NULL, "ID_Number" integer NOT NULL, "Date_of_Payment" date NOT NULL);
--
-- Create model Taxpayer
--
CREATE TABLE "taxes_taxpayer" ("id" serial NOT NULL PRIMARY KEY, "TIN" integer NOT NULL, "PSN" integer NOT NULL, "Tax_Type" varchar(200) NOT NULL, "Name" varchar(200) NOT NULL, "Gender" varchar(200) NOT NULL, "Civil_Status" varchar(200) NOT NULL, "Birthday" date NOT NULL, "Citizenship" varchar(200) NOT NULL, "Email" varchar(254) NOT NULL, "Avail_Income_Tax" boolean NOT NULL);
COMMIT;
