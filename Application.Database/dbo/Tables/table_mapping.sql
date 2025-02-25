CREATE TABLE [dbo].[table_mapping] (
    [source_host]              NVARCHAR (255) NULL,
    [source_database]          NVARCHAR (255) NULL,
    [source_table]             NVARCHAR (255) NULL,
    [source_api_endpoint]      NVARCHAR (MAX) NULL,
    [destination_host]         NVARCHAR (255) NULL,
    [destination_database]     NVARCHAR (255) NULL,
    [destination_table]        NVARCHAR (255) NULL,
    [destination_api_endpoint] NVARCHAR (MAX) NULL,
    [query]                    NVARCHAR (MAX) NULL,
    [is_attribute]             TINYINT        NULL,
    [attribute_table_name]     NVARCHAR (255) NULL,
    [temp_table_name]          NVARCHAR (255) NULL,
    [is_incremental]           TINYINT        DEFAULT ((0)) NOT NULL,
    [incremental_column]       NVARCHAR (255) NULL, 
    [sequence] INT NULL
) ON [FLOWBYTE_DIM] TEXTIMAGE_ON [FLOWBYTE_DIM];

