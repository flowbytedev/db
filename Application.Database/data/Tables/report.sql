CREATE TABLE [data].[report]
(
	[id]               NVARCHAR(500) NOT NULL,
	[workspace_id]     NVARCHAR(500) NOT NULL,
	[application]      NVARCHAR(500) NOT NULL,
	[type]             NVARCHAR(500) NOT NULL,
	[name]             NVARCHAR(500) NOT NULL,
	[url]              NVARCHAR(MAX) NOT NULL,
    [dataset_id]       NVARCHAR(500) NOT NULL,

    CONSTRAINT [PK_report] PRIMARY KEY ([id], [workspace_id], [application]) ON [FLOWBYTE_DIM],
	CONSTRAINT [FK_report_dataset] FOREIGN KEY ([dataset_id], [workspace_id],[application]) REFERENCES [data].[dataset]([id], [workspace_id], [application])

) ON [FLOWBYTE_DIM];