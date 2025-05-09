CREATE TABLE [data].[workspace]
(
	[id]           NVARCHAR(500) NOT NULL,
	[name]         NVARCHAR(500) NOT NULL,
	[application]  NVARCHAR(500) NOT NULL,

	 CONSTRAINT [PK_workspace] PRIMARY KEY ([id], [application]) ON [FLOWBYTE_DIM], 
) ON [FLOWBYTE_DIM];
