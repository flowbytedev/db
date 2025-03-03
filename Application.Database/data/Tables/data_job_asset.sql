CREATE TABLE [data].[data_job_asset]
(
	id       INT IDENTITY(1,1),
    job_id         INT NOT NULL,             -- Foreign key to data_job
    asset_name     NVARCHAR(255) NOT NULL,   -- Dagster asset key or SSIS data flow component
    asset_type     NVARCHAR(100) NOT NULL,   -- 'table', 'file', 'api', etc.
    created_at     DATETIME DEFAULT GETDATE(),
    updated_at     DATETIME DEFAULT GETDATE(),
    CONSTRAINT [PK_data_job_asset] PRIMARY KEY ([id]) ON [FLOWBYTE_DIM], 
    CONSTRAINT [FK_data_job_asset_data_job] FOREIGN KEY ([job_id]) REFERENCES [data].[data_job]([id])
) ON [FLOWBYTE_DIM]
