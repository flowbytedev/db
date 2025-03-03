CREATE TABLE [data].[data_job]
(
    id           INT IDENTITY(1,1),
    job_name         NVARCHAR(255) NOT NULL,
    source_system    NVARCHAR(50) NOT NULL,    -- 'dagster' or 'ssis'
    [description]      NVARCHAR(500) NULL,
    created_at       DATETIME DEFAULT GETDATE(),
    updated_at       DATETIME DEFAULT GETDATE(), 
    CONSTRAINT [PK_data_job] PRIMARY KEY ([id]) ON [FLOWBYTE_DIM],
    
) ON [FLOWBYTE_DIM]
