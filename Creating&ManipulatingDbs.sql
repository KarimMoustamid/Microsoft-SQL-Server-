-- noinspection SqlNoDataSourceInspectionForFile

-- List All existing databases 
SELECT name , database_id , create_DATE FROM sys.databases;



-- ***********************************************************************

-- Create a new database called 'SchoolManagement_Db'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT [name]
        FROM sys.databases
        WHERE [name] = N'SchoolManagement_Db'
)
CREATE DATABASE SchoolManagement_Db
GO


-- ***********************************************************************


-- Drop the database 'DatabaseName'
-- Connect to the 'master' database to run this snippet
USE master
GO
-- Uncomment the ALTER DATABASE statement below to set the database to SINGLE_USER mode if the drop database command fails because the database is in use.
-- ALTER DATABASE DatabaseName SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
-- Drop the database if it exists
IF EXISTS (
    SELECT [name]
        FROM sys.databases
        WHERE [name] = N'NewDBTest'
)
DROP DATABASE NewDBTest
GO

-- ***********************************************************************


ALTER DATABASE SchoolManagement_Db MODIFY NAME = SchoolManagement;
