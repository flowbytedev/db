CREATE TABLE [tmp].[sales_price_current_temp] (
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
    
) ON [FLOWBYTE_SALES];


GO
CREATE CLUSTERED INDEX [IX_sales_price_current_temp_item_no_variant_code]
    ON [tmp].[sales_price_current_temp]([item_no] ASC, [variant_code] ASC)
    ON [FLOWBYTE_SALES];


GO
CREATE NONCLUSTERED INDEX [IX_sales_price_current_temp_company_id]
    ON [tmp].[sales_price_current_temp]([company_id] ASC)
    ON [FLOWBYTE_SALES];


GO
CREATE NONCLUSTERED INDEX [IX_sales_price_current_temp_sales_code]
    ON [tmp].[sales_price_current_temp]([sales_code] ASC)
    ON [FLOWBYTE_SALES];

