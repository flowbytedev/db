CREATE TABLE [data].[database]
(
	[host]    NVARCHAR (200) NOT NULL,
	[name]    NVARCHAR (200) NOT NULL,
	[type]    NVARCHAR (200) NOT NULL, 
    CONSTRAINT [PK_database] PRIMARY KEY ([host], [name]) ON [FLOWBYTE_DIM], 
    CONSTRAINT [FK_database_host] FOREIGN KEY ([host]) REFERENCES [data].[host]([ip_address])
)  ON [FLOWBYTE_DIM];
