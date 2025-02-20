CREATE TABLE [dbo].[sales_forecast_by_store] (
    [company_id]           NVARCHAR (10)    NOT NULL,
    [date]                 DATETIME         NOT NULL,
    [sales_channel_code]   NVARCHAR (255)   NOT NULL,
    [net_amount_acy]       DECIMAL (38, 20) NOT NULL,
    [net_amount_acy_upper] DECIMAL (38, 20) NOT NULL,
    [net_amount_acy_lower] DECIMAL (38, 20) NOT NULL,
    CONSTRAINT [PK_sales_forecast_by_store] PRIMARY KEY NONCLUSTERED ([company_id] ASC, [date] ASC, [sales_channel_code] ASC) ON [FLOWBYTE_SALES]
) ON [FLOWBYTE_SALES];


GO
CREATE CLUSTERED INDEX [IX_sales_forecast_by_store_date]
    ON [dbo].[sales_forecast_by_store]([date] ASC)
    ON [FLOWBYTE_SALES];

