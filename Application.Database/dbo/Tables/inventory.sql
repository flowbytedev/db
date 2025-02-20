CREATE TABLE [dbo].[inventory] (
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
    CONSTRAINT [PK_inventory] PRIMARY KEY NONCLUSTERED ([company_id] ASC, [item_no] ASC, [variant_no] ASC, [warehouse_code] ASC) ON [FLOWBYTE_DIM],
    CONSTRAINT [FK_inventory_company] FOREIGN KEY ([company_id]) REFERENCES [dbo].[company] ([id]),
    CONSTRAINT [FK_inventory_company_id_item_no] FOREIGN KEY ([company_id], [item_no]) REFERENCES [dbo].[item] ([company_id], [item_no]),
    CONSTRAINT [FK_inventory_warehouse] FOREIGN KEY ([company_id], [warehouse_code]) REFERENCES [dbo].[warehouse] ([company_id], [code])
) ON [FLOWBYTE_DIM];


GO
CREATE NONCLUSTERED INDEX [IX_inventory_item_no_variant_no]
    ON [dbo].[inventory]([item_no] ASC, [variant_no] ASC)
    ON [FLOWBYTE_DIM];


GO
CREATE NONCLUSTERED INDEX [IX_inventory_warehouse]
    ON [dbo].[inventory]([warehouse_code] ASC)
    ON [FLOWBYTE_DIM];

