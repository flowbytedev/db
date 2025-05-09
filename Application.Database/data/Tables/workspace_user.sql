CREATE TABLE [data].[workspace_user]
(
	[workspace_id]     NVARCHAR(500) NOT NULL,
	[application]      NVARCHAR(500) NOT NULL,
	[e-mail]           NVARCHAR(MAX) NOT NULL,
	[user_type]        NVARCHAR(500) NOT NULL,
	[name]             NVARCHAR(500) NOT NULL,
	[role]             NVARCHAR(500) NOT NULL,

    CONSTRAINT [PK_workspace_user] PRIMARY KEY ([workspace_id], [application], [e-mail]) ON [FLOWBYTE_DIM],
	CONSTRAINT [FK_workspace_user_table] FOREIGN KEY ([workspace_id],[application]) REFERENCES [data].[workspace]([id], [application])

) ON [FLOWBYTE_DIM];