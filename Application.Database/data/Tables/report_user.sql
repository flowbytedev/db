CREATE TABLE [data].[report_user]
(
	[workspace_id]     NVARCHAR(500) NOT NULL,
	[application]      NVARCHAR(500) NOT NULL,
	[report_id]        NVARCHAR(500) NOT NULL,
	[e-mail]           NVARCHAR(500) NOT NULL,
	[user_type]        NVARCHAR(500) NOT NULL,
	[name]             NVARCHAR(500) NOT NULL,
	[role]             NVARCHAR(500) NOT NULL,

    CONSTRAINT [PK_report_user] PRIMARY KEY ([workspace_id], [application], [report_id], [e-mail]) ON [FLOWBYTE_DIM],
	CONSTRAINT [FK_report_user_report] FOREIGN KEY ([workspace_id], [application], [report_id]) REFERENCES [data].[report]([id], [workspace_id], [application])

) ON [FLOWBYTE_DIM];