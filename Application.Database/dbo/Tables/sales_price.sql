CREATE TABLE [dbo].[sales_price] (
    [cdc_key]            BIGINT           NULL,
    [company_id]         NVARCHAR (10)    NOT NULL,
    [item_no]            NVARCHAR (255)   NOT NULL,
    [variant_code]       NVARCHAR (255)   NOT NULL,
    [date]               DATE             NOT NULL,
    [sales_code]         NVARCHAR (255)   NOT NULL,
    [unit_of_measure]    NVARCHAR (255)   NOT NULL,
    [promotion_code]     NVARCHAR (255)   NULL,
    [original_price]     DECIMAL (38, 20) NOT NULL,
    [discount_price]     DECIMAL (38, 20) NOT NULL,
    [original_price_vat] DECIMAL (38, 20) NOT NULL,
    [discount_price_vat] DECIMAL (38, 20) NOT NULL,
    [currency_code]      NVARCHAR (10)    NOT NULL,
    CONSTRAINT [PK_sales_price] PRIMARY KEY CLUSTERED ([company_id] ASC, [item_no] ASC, [date] ASC) ON [FLOWBYTE_SALES],
    CONSTRAINT [FK_sales_price_company] FOREIGN KEY ([company_id]) REFERENCES [dbo].[company] ([id]),
    CONSTRAINT [FK_sales_price_currency] FOREIGN KEY ([currency_code]) REFERENCES [dbo].[currency] ([code]),
    CONSTRAINT [FK_sales_price_item] FOREIGN KEY ([company_id], [item_no]) REFERENCES [dbo].[item] ([company_id], [item_no])
) ON [FLOWBYTE_SALES];


GO
CREATE NONCLUSTERED INDEX [IX_sales_price_company_id_item_no]
    ON [dbo].[sales_price]([company_id] ASC, [item_no] ASC)
    ON [FLOWBYTE_SALES];


GO
CREATE NONCLUSTERED INDEX [IX_sales_price_valid_from]
    ON [dbo].[sales_price]([date] ASC)
    ON [FLOWBYTE_TRANS];

