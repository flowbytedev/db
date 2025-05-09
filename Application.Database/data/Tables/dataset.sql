CREATE TABLE [data].[dataset]
(
	[id]               NVARCHAR(500) NOT NULL,
	[workspace_id]     NVARCHAR(500) NOT NULL,
	[application]      NVARCHAR(500) NOT NULL,
	[name]             NVARCHAR(500) NOT NULL,
	[url]              NVARCHAR(MAX) NOT NULL,
	[configured_by]    NVARCHAR(500) NOT NULL,
	[created_on]       DATETIME NOT NULL,

    CONSTRAINT [PK_dataset] PRIMARY KEY ([id], [workspace_id], [application]) ON [FLOWBYTE_DIM],
	CONSTRAINT [FK_dataset_table] FOREIGN KEY ([workspace_id],[application]) REFERENCES [data].[workspace]([id], [application])

) ON [FLOWBYTE_DIM];
