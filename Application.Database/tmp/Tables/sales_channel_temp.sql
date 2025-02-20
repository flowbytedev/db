﻿CREATE TABLE [tmp].[sales_channel_temp] (
    [cdc_key]        BIGINT           NOT NULL,
    [company_id]     NVARCHAR (10)    NOT NULL,
    [code]           NVARCHAR (255)   NOT NULL,
    [name]           NVARCHAR (MAX)   NULL,
    [country]        NVARCHAR (255)   NULL,
    [region]         NVARCHAR (MAX)   NULL,
    [address]        NVARCHAR (MAX)   NULL,
    [city]           NVARCHAR (255)   NULL,
    [latitude]       DECIMAL (38, 20) NULL,
    [longitude]      DECIMAL (38, 20) NULL,
    [postal_code]    NVARCHAR (255)   NULL,
    [email_address]  NVARCHAR (255)   NULL,
    [cost_center]    NVARCHAR (255)   NULL,
    [warehouse_code] NVARCHAR (255)   NULL,
    [store_group]    NVARCHAR (MAX)   NULL,
    [created_on]     DATETIME2 (7)    NULL,
    [modified_on]    DATETIME2 (7)    NULL,
    [created_by]     NVARCHAR (MAX)   NULL,
    [modified_by]    NVARCHAR (MAX)   NULL,
    [is_deleted]     BIT              NULL,
    CONSTRAINT [PK_sales_channel_temp] PRIMARY KEY CLUSTERED ([company_id] ASC, [code] ASC) ON [FLOWBYTE_DIM]
) ON [FLOWBYTE_DIM] TEXTIMAGE_ON [FLOWBYTE_DIM];

