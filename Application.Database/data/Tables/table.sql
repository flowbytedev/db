CREATE TABLE [data].[table]
(
	[host]                NVARCHAR (200) NOT NULL,
	[database_name]            NVARCHAR (200) NOT NULL,
	[schema]              NVARCHAR (200) NOT NULL,
	[name]                NVARCHAR (200) NOT NULL,
	[row_count]           DECIMAL(38,20) NULL,
	CONSTRAINT [PK_table] PRIMARY KEY ([host], [database_name], [schema], [name]) ON [FLOWBYTE_DIM],
    CONSTRAINT [FK_table_database] FOREIGN KEY ([host], [database_name]) REFERENCES [data].[database]([host], [name])
)  ON [FLOWBYTE_DIM];