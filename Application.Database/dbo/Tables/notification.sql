CREATE TABLE [dbo].[notification]
(
	[id] INT NOT NULL PRIMARY KEY,
	[section] NVARCHAR(50) NOT NULL, -- data_job, others
	[message] NVARCHAR(255) NOT NULL,
	[data] NVARCHAR(MAX) NOT NULL,
	created_at DATETIME DEFAULT GETDATE(),
	updated_at DATETIME DEFAULT GETDATE()
)
