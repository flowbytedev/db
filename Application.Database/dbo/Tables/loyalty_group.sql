CREATE TABLE [dbo].[loyalty_group]
(
	[id] INT IDENTITY(1,1) ,
    [name] NVARCHAR(255) NOT NULL,
    [description] NVARCHAR(255) NULL, 
    CONSTRAINT [PK_loyalty_group] PRIMARY KEY ([id])
)
