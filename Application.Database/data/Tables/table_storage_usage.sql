CREATE TABLE [dbo].[table_storage_usage]
(
	[date]				  DATETIME NULL,
	[host]                NVARCHAR (200) NOT NULL,
	[database_name]            NVARCHAR (200) NOT NULL,
	[schema]              NVARCHAR (200) NOT NULL,
	[table_name]                NVARCHAR (200) NOT NULL,
	[row_count]           INT  NOT NULL,
	[used_space_mb]       DECIMAL(38,20) NULL,
	[allocated_space_mb]  DECIMAL(38,20) NULL, 
    
)  ON [FLOWBYTE_DIM];
