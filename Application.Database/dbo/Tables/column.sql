﻿CREATE TABLE [dbo].[column] (
    [id]          NVARCHAR (255) NOT NULL,
    [table_id]    NVARCHAR (450) NOT NULL,
    [name]        NVARCHAR (450) NOT NULL,
    [created_on]  DATETIME2 (7)  NULL,
    [modified_on] DATETIME2 (7)  NULL,
    [created_by]  NVARCHAR (MAX) NULL,
    [modified_by] NVARCHAR (MAX) NULL,
    [is_deleted]  BIT            NULL,
    CONSTRAINT [PK_column] PRIMARY KEY CLUSTERED ([id] ASC) ON [FLOWBYTE_DIM]
) ON [FLOWBYTE_DIM] TEXTIMAGE_ON [FLOWBYTE_DIM];


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_column_table_id_name]
    ON [dbo].[column]([table_id] ASC, [name] ASC)
    ON [FLOWBYTE_DIM];

