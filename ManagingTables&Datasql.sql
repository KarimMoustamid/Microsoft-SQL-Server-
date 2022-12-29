USE SchoolManagement

-- Create a new table called '[Lecturers]' in schema '[dbo]'
-- Create the table in the specified schema
CREATE TABLE [dbo].[Lecturers] (
    [id] INT PRIMARY KEY IDENTITY(1, 1) NOT NULL,
    [FirstName] NVARCHAR(50) NOT NULL,
    [LastName] NVARCHAR(50) NOT NULL,
    [DateOfBirth] DATE,
    [StaffId] NVARCHAR(10) NOT NULL UNIQUE
);
GO



-- Insert rows into table 'TableName' in schema '[dbo]'
INSERT INTO [dbo].[TableName]
( -- Columns to insert data into
 [ColumnName1], [ColumnName2], [ColumnName3]
)
VALUES
( -- First row: values for the columns in the list above
 ColumnValue1, ColumnValue2, ColumnValue3
),
( -- Second row: values for the columns in the list above
 ColumnValue1, ColumnValue2, ColumnValue3
)
-- Add more rows here
GO

-- Single Insert without Specified Columns 
INSERT INTO Lecturers
 VALUES 
('Elan','Mask','1972-12-26', '124545'),
('lora','shaw','1995-12-26', '45487');
