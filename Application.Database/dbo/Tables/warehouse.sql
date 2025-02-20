﻿CREATE TABLE [dbo].[warehouse] (
    [cdc_key]                   BIGINT          NULL,
    [company_id]                NVARCHAR (10)   NOT NULL,
    [code]                      NVARCHAR (255)  NOT NULL,
    [name]                      NVARCHAR (255)  NOT NULL,
    [address]                   NVARCHAR (255)  NOT NULL,
    [city]                      NVARCHAR (255)  NULL,
    [postal_code]               NVARCHAR (255)  NULL,
    [phone_no]                  NVARCHAR (255)  NULL,
    [latitude]                  DECIMAL (18, 6) NULL,
    [longitude]                 DECIMAL (18, 6) NULL,
    [email]                     NVARCHAR (255)  NULL,
    [cost_center]               NVARCHAR (255)  NULL,
    [is_in_transit_warehouse]   TINYINT         NULL,
    [store_group]               NVARCHAR (255)  NULL,
    [in_transit_warehouse_code] NVARCHAR (255)  NULL,
    CONSTRAINT [PK_warehouse] PRIMARY KEY CLUSTERED ([company_id] ASC, [code] ASC) ON [FLOWBYTE_DIM],
    CONSTRAINT [FK_warehouse_company_id] FOREIGN KEY ([company_id]) REFERENCES [dbo].[company] ([id])
) ON [FLOWBYTE_DIM];


GO
CREATE NONCLUSTERED INDEX [IX_warehouse_city]
    ON [dbo].[warehouse]([city] ASC)
    ON [FLOWBYTE_DIM];


GO
CREATE NONCLUSTERED INDEX [IX_warehouse_name]
    ON [dbo].[warehouse]([name] ASC)
    ON [FLOWBYTE_DIM];

