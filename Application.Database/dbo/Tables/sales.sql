﻿CREATE TABLE [dbo].[sales] (
    [cdc_key]                  BIGINT           NOT NULL,
    [company_id]               NVARCHAR (10)    NOT NULL,
    [sales_channel_code]       NVARCHAR (255)   NOT NULL,
    [pos_number]               NVARCHAR (255)   NOT NULL,
    [transaction_number]       BIGINT           NOT NULL,
    [line_no]                  INT              NOT NULL,
    [receipt_no]               NVARCHAR (100)   NOT NULL,
    [date]                     DATETIME         NOT NULL,
    [time]                     DATETIME         NOT NULL,
    [item_no]                  NVARCHAR (255)   NOT NULL,
    [variant_code]             NVARCHAR (255)   NOT NULL,
    [item_id]                  NVARCHAR (255)   NOT NULL,
    [item_division_code]       NVARCHAR (255)   NULL,
    [item_category_code]       NVARCHAR (255)   NULL,
    [item_group_code]          NVARCHAR (255)   NULL,
    [quantity]                 DECIMAL (38, 20) NOT NULL,
    [net_price]                DECIMAL (38, 20) NOT NULL,
    [net_amount_lcy]           DECIMAL (38, 20) NOT NULL,
    [net_amount_acy]           DECIMAL (38, 20) NULL,
    [exchange_rate]            DECIMAL (38, 20) NULL,
    [vat_amount]               DECIMAL (38, 20) NOT NULL,
    [rounded_amount]           DECIMAL (38, 20) NOT NULL,
    [line_discount]            DECIMAL (38, 20) NOT NULL,
    [periodic_discount_type]   INT              NOT NULL,
    [periodic_discount_group]  NVARCHAR (20)    NOT NULL,
    [periodic_discount_amount] DECIMAL (38, 20) NOT NULL,
    [other_discount_amount]    DECIMAL (38, 20) NOT NULL,
    [total_discount_amount]    DECIMAL (38, 20) NOT NULL,
    [staff_id]                 NVARCHAR (50)    NULL,
    [scale_operator_id]        NVARCHAR (5)     NULL,
    CONSTRAINT [PK_sales] PRIMARY KEY CLUSTERED ([company_id] ASC, [receipt_no] ASC, [sales_channel_code] ASC, [pos_number] ASC, [transaction_number] ASC, [line_no] ASC) ON [FLOWBYTE_SALES],
    CONSTRAINT [FK_sales_company] FOREIGN KEY ([company_id]) REFERENCES [dbo].[company] ([id]),
    CONSTRAINT [FK_sales_company_id_item_no] FOREIGN KEY ([company_id], [item_no]) REFERENCES [dbo].[item] ([company_id], [item_no])
) ON [FLOWBYTE_SALES];

