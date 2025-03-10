CREATE TABLE [dbo].[subscription]
(
	 [id] INT IDENTITY(1,1) ,
    [name] NVARCHAR(255) NOT NULL,
    [description] NVARCHAR(255) NULL,
    [type] INT NOT NULL, 
    CONSTRAINT [PK_subscription] PRIMARY KEY ([id])
)
