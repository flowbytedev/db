CREATE TABLE [dbo].[field_mapping] (
    [source_host]           NVARCHAR (255) NOT NULL,
    [source_database]       NVARCHAR (255) NOT NULL,
    [source_table]          NVARCHAR (255) NOT NULL,
    [source_column]         NVARCHAR (255) NOT NULL,
    [destination_host]      NVARCHAR (255) NOT NULL,
    [destination_database]  NVARCHAR (255) NOT NULL,
    [destination_table]     NVARCHAR (255) NOT NULL,
    [destination_column]    NVARCHAR (255) NOT NULL,
    [source_data_type]      NVARCHAR (255) NOT NULL,
    [destination_data_type] NVARCHAR (255) NOT NULL,
    [is_group_by]           BIT            DEFAULT ((0)) NOT NULL,
    [is_sum]                BIT            DEFAULT ((0)) NOT NULL,
    [is_count]              BIT            DEFAULT ((0)) NOT NULL,
    [filter_query]          NVARCHAR (MAX) NULL,
    [default_value]         NVARCHAR (MAX) NULL,
    [is_attribute]          TINYINT        DEFAULT ((0)) NOT NULL,
    [is_attribute_key]      TINYINT        DEFAULT ((0)) NOT NULL,
    [is_primary_key]        TINYINT        DEFAULT ((0)) NOT NULL
) ON [FLOWBYTE_DIM] TEXTIMAGE_ON [FLOWBYTE_DIM];

