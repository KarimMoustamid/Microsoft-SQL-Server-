-- Create a new table called '[TableName]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[TableName]', 'U') IS NOT NULL
DROP TABLE [dbo].[TableName]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Students] (
    [id]          INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]   NVARCHAR (50) NOT NULL,
    [LastName]    NVARCHAR (50) NOT NULL,
    [DateOfBirth] DATE          NULL,
    [StudentId]   NVARCHAR (10) NOT NULL,
    CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED ([id] ASC)
);
GO