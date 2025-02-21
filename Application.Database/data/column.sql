CREATE TABLE [data].[column]
(
	[host]                NVARCHAR (200) NOT NULL,
	[database]            NVARCHAR (200) NOT NULL,
	[schema]              NVARCHAR (200) NOT NULL,
	[table]               NVARCHAR (200) NOT NULL,
	[name]                NVARCHAR (200) NOT NULL,
	[data_type]           NVARCHAR (200) NOT NULL,
	[precision]           NVARCHAR (200) NULL,
	[scale]               NVARCHAR (200) NULL,
)  ON [FLOWBYTE_DIM] TEXTIMAGE_ON [FLOWBYTE_DIM];