CREATE TABLE [data].[data_job_trigger]
(
	[Id] INT NOT NULL IDENTITY(1,1), 
    [job_id] INT NULL, 
    [trigger_type] NVARCHAR(100) NULL, 
    [triggered_by] NVARCHAR(255) NULL
)
