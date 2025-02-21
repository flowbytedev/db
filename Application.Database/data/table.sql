CREATE TABLE [data].[table]
(
	[host]                NVARCHAR (200) NOT NULL,
	[database]            NVARCHAR (200) NOT NULL,
	[object_id]           NVARCHAR (200) NOT NULL,
	[schema]              NVARCHAR (200) NOT NULL,
	[name]                NVARCHAR (200) NOT NULL,
	[row_count]           INT  NOT NULL,
	[used_space_mb]       DECIMAL(38,20) NULL,
	[allocated_space_mb]  DECIMAL(38,20) NULL
)  ON [FLOWBYTE_DIM];