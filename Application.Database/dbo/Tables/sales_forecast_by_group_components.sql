﻿CREATE TABLE [dbo].[sales_forecast_by_group_components] (
    [company_id]               NVARCHAR (10)    NOT NULL,
    [date]                     DATETIME         NOT NULL,
    [store_group]              NVARCHAR (10)    NOT NULL,
    [model]                    NVARCHAR (255)   NOT NULL,
    [trend]                    DECIMAL (38, 20) NULL,
    [trend_lower]              DECIMAL (38, 20) NULL,
    [trend_upper]              DECIMAL (38, 20) NULL,
    [yearly_seasonality]       DECIMAL (38, 20) NULL,
    [yearly_seasonality_lower] DECIMAL (38, 20) NULL,
    [yearly_seasonality_upper] DECIMAL (38, 20) NULL,
    [weekly_seasonality]       DECIMAL (38, 20) NULL,
    [weekly_seasonality_lower] DECIMAL (38, 20) NULL,
    [weekly_seasonality_upper] DECIMAL (38, 20) NULL,
    [extra_regressors]         DECIMAL (38, 20) NULL,
    [extra_regressors_lower]   DECIMAL (38, 20) NULL,
    [extra_regressors_upper]   DECIMAL (38, 20) NULL,
    [specific_regressors]      NVARCHAR (MAX)   NULL,
    CONSTRAINT [PK_sales_forecast_by_group_components] PRIMARY KEY NONCLUSTERED ([company_id] ASC, [date] ASC, [store_group] ASC, [model] ASC) ON [FLOWBYTE_SALES]
) ON [FLOWBYTE_SALES] TEXTIMAGE_ON [FLOWBYTE_SALES];


GO
CREATE CLUSTERED INDEX [IX_sales_forecast_by_group_components_Column]
    ON [dbo].[sales_forecast_by_group_components]([date] ASC)
    ON [FLOWBYTE_SALES];

