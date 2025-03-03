CREATE TABLE [dbo].[data_job_run]
(
	id         INT IDENTITY(1,1),
    job_id         INT NOT NULL,              -- Foreign key to data_job
    run_status     NVARCHAR(50) NOT NULL,     -- 'success', 'failed', 'running', etc.
    run_start_time DATETIME NOT NULL,         -- Start time of the job execution
    run_end_time   DATETIME NULL,             -- End time (null if still running)
    duration_sec   INT NULL,                  -- Execution duration in seconds
    log_details    NVARCHAR(MAX) NULL,        -- Any log messages or error details
    created_at     DATETIME DEFAULT GETDATE(), 
    CONSTRAINT [PK_data_job_run] PRIMARY KEY ([id]) ON [FLOWBYTE_DIM], 
    CONSTRAINT [FK_data_job_run_data_job] FOREIGN KEY ([job_id]) REFERENCES [data].[data_job]([id]),
) ON [FLOWBYTE_DIM]
