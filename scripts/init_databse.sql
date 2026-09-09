/*
This script creates a database named datawarehouse after checking if it exists.The script sets up three schemas within the database: 'bronze', 'silver', 'gold'.
*/

USE master;
GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'datawarehouse')
BEGIN
  ALTER DATABASE datawarehouse SET SINGLE USER WITH ROLLBACK IMMEDIATE:
  DROP DATABASE datawarehouse;
END;
GO

-- Create Databases and schemas 

CREATE DATABASE datawarehouse;
USE datawarehouse;

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
