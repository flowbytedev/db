CREATE TABLE [data].[index_storage_usage]
(
	[date]			      DATETIME NULL,
	[host]                NVARCHAR (200) NOT NULL,
	[database]            NVARCHAR (200) NOT NULL,
	[schema]              NVARCHAR (200) NOT NULL,
	[table]               NVARCHAR (200) NOT NULL,
	[name]                NVARCHAR (200) NOT NULL,
	[columns]             NVARCHAR (200) NULL,
	[type]                NVARCHAR (200) NULL,
	[used_space_mb]       DECIMAL(38,20) NULL,
	[allocated_space_mb]  DECIMAL(38,20) NULL, 
    
)  ON [FLOWBYTE_DIM];
