CREATE TABLE [data].[dataset_user]
(
	[workspace_id]     NVARCHAR(500) NOT NULL,
	[application]      NVARCHAR(500) NOT NULL,
	[dataset_id]       NVARCHAR(500) NOT NULL,
	[e-mail]           NVARCHAR(500) NOT NULL,
	[type]             NVARCHAR(500) NOT NULL,
	[name]             NVARCHAR(500) NOT NULL,
	[role]             NVARCHAR(500) NOT NULL,

    CONSTRAINT [PK_dataset_user] PRIMARY KEY ([workspace_id], [application], [dataset_id], [e-mail]) ON [FLOWBYTE_DIM],
	CONSTRAINT [FK_dataset_user_dataset] FOREIGN KEY ([dataset_id], [workspace_id], [application]) REFERENCES [data].[dataset]([id], [workspace_id], [application])

) ON [FLOWBYTE_DIM];