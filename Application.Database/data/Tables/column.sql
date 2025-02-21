CREATE TABLE [data].[column]
(
	[host]                NVARCHAR (200) NOT NULL,
	[database_name]            NVARCHAR (200) NOT NULL,
	[schema]              NVARCHAR (200) NOT NULL,
	[table_name]               NVARCHAR (200) NOT NULL,
	[name]                NVARCHAR (200) NOT NULL,
	[data_type]           NVARCHAR (200) NOT NULL,
	[precision]           NVARCHAR (200) NULL,
	[scale]               NVARCHAR (200) NULL, 
    CONSTRAINT [PK_column] PRIMARY KEY ([host], [database_name], [schema], [table_name], [name]) ON [FLOWBYTE_DIM], 
    CONSTRAINT [FK_column_table] FOREIGN KEY ([host], [database_name], [schema], [table_name]) REFERENCES [data].[table]([host], [database_name], [schema], [name]),
)  ON [FLOWBYTE_DIM];