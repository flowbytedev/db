CREATE TABLE [data].[database_credentials]
(
	[database_id]    NVARCHAR (200) NOT NULL,
	[username]       NVARCHAR (200) NOT NULL,
	[password]       NVARCHAR (200) NOT NULL
)  ON [FLOWBYTE_DIM];
