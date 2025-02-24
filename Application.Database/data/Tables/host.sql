CREATE TABLE [data].[host]
(
	[ip_address]    NVARCHAR (200) NOT NULL,
	[name]    NVARCHAR (200) NOT NULL,
	[type]    NVARCHAR (200) NOT NULL, 
    CONSTRAINT [PK_host] PRIMARY KEY ([ip_address]) ON [FLOWBYTE_DIM]
)  ON [FLOWBYTE_DIM];
