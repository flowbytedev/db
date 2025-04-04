CREATE TABLE [data].[query_detail]
(
	[Id] INT NOT NULL IDENTITY(1,1), 
    [query] NVARCHAR(MAX) NULL, 
    [description] NVARCHAR(255) NULL, 
    [additional_condition] NVARCHAR(MAX) NULL 
)
