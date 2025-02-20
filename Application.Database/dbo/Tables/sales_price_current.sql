CREATE TABLE [dbo].[sales_price_current] (
    [cdc_key]            BIGINT           NULL,
    [company_id]         NVARCHAR (10)    NOT NULL,
    [item_no]            NVARCHAR (255)   NOT NULL,
    [variant_code]       NVARCHAR (255)   NOT NULL,
    [sales_code]         NVARCHAR (255)   NOT NULL,
    [currency_code]      NVARCHAR (10)    NOT NULL,
    [unit_of_measure]    NVARCHAR (255)   NOT NULL,
    [promotion_code]     NVARCHAR (255)   NULL,
    [original_price]     DECIMAL (38, 20) NOT NULL,
    [discount_price]     DECIMAL (38, 20) NOT NULL,
    [original_price_vat] DECIMAL (38, 20) NOT NULL,
    [discount_price_vat] DECIMAL (38, 20) NOT NULL,
    CONSTRAINT [PK_sales_price_current] PRIMARY KEY NONCLUSTERED ([company_id] ASC, [item_no] ASC, [variant_code] ASC, [sales_code] ASC, [currency_code] ASC, [unit_of_measure] ASC) ON [FLOWBYTE_SALES],
    CONSTRAINT [FK_sales_price_current_company] FOREIGN KEY ([company_id]) REFERENCES [dbo].[company] ([id]),
    CONSTRAINT [FK_sales_price_current_currency] FOREIGN KEY ([currency_code]) REFERENCES [dbo].[currency] ([code]),
    CONSTRAINT [FK_sales_price_current_item] FOREIGN KEY ([company_id], [item_no]) REFERENCES [dbo].[item] ([company_id], [item_no])
) ON [FLOWBYTE_SALES];


GO
CREATE CLUSTERED INDEX [IX_sales_price_current_item_no_variant_code]
    ON [dbo].[sales_price_current]([item_no] ASC, [variant_code] ASC)
    ON [FLOWBYTE_SALES];


GO
CREATE NONCLUSTERED INDEX [IX_sales_price_current_company_id]
    ON [dbo].[sales_price_current]([company_id] ASC)
    ON [FLOWBYTE_SALES];


GO
CREATE NONCLUSTERED INDEX [IX_sales_price_current_sales_code]
    ON [dbo].[sales_price_current]([sales_code] ASC)
    ON [FLOWBYTE_SALES];

