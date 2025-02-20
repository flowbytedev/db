CREATE TABLE [tmp].[inventory_temp] (
    [cdc_key]          BIGINT           NOT NULL,
    [company_id]       NVARCHAR (10)    NOT NULL,
    [item_no]          NVARCHAR (255)   NOT NULL,
    [variant_no]       NVARCHAR (255)   NOT NULL,
    [warehouse_code]   NVARCHAR (255)   NOT NULL,
    [unit]             NVARCHAR (50)    NULL,
    [quantity]         DECIMAL (38, 20) NULL,
    [amount]           INT              NULL,
    [inventory_type]   NVARCHAR (255)   NULL,
    [batch_no]         NVARCHAR (255)   NULL,
    [source_reference] NVARCHAR (255)   NULL,
    [expiration_date]  DATE             NULL,
    CONSTRAINT [PK_inventory_temp] PRIMARY KEY NONCLUSTERED ([company_id] ASC, [item_no] ASC, [variant_no] ASC, [warehouse_code] ASC) ON [FLOWBYTE_DIM]
) ON [FLOWBYTE_DIM];

