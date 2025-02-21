CREATE TABLE [data].[index]
(
	[host]					NVARCHAR (200) NOT NULL,
	[database_name]			NVARCHAR (200) NOT NULL,
	[schema]				NVARCHAR (200) NOT NULL,
	[table_name]			NVARCHAR (200) NOT NULL,
	[name]					NVARCHAR (200) NOT NULL,
	[columns]				NVARCHAR (200) NULL,
	[type]					NVARCHAR (200) NULL,
	[used_space_mb]			DECIMAL(38,20) NULL,
	[allocated_space_mb]	DECIMAL(38,20) NULL, 
    CONSTRAINT [PK_index] PRIMARY KEY ([host], [database_name], [schema], [table_name]) ON [FLOWBYTE_DIM], 
    CONSTRAINT [FK_index_table] FOREIGN KEY ([host], [database_name], [schema], [table_name]) REFERENCES [data].[table]([host], [database_name], [schema], [name])
)  ON [FLOWBYTE_DIM];
