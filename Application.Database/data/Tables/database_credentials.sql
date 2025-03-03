CREATE TABLE [data].[database_credentials]
(
	[host]    NVARCHAR (200) NOT NULL,
	[database_name] NVARCHAR(200) NOT NULL,
	[username]       NVARCHAR (200) NOT NULL,
	[password]       NVARCHAR (200) NOT NULL, 
    CONSTRAINT [PK_database_credentials] PRIMARY KEY ([host], [database_name], [username])  ON [FLOWBYTE_DIM], 
    CONSTRAINT [FK_database_credentials_host] FOREIGN KEY ([host]) REFERENCES [data].[host]([ip_address]), 
    CONSTRAINT [FK_database_credentials_database] FOREIGN KEY ([host], [database_name]) REFERENCES [data].[database]([host], [name]), 
)  ON [FLOWBYTE_DIM];
