CREATE TABLE [dbo].[variant_option_value] (
    [cdc_key]      BIGINT         NULL,
    [company_id]   NVARCHAR (10)  NOT NULL,
    [item_no]      NVARCHAR (255) NOT NULL,
    [variant_code] NVARCHAR (255) NOT NULL,
    [option_name]  NVARCHAR (255) NOT NULL,
    [status]       INT            NULL,
    [description]  NVARCHAR (255) NULL,
    [value]        NVARCHAR (255) NOT NULL,
    CONSTRAINT [PK_variant_option_value] PRIMARY KEY CLUSTERED ([company_id] ASC, [item_no] ASC, [variant_code] ASC, [option_name] ASC) ON [FLOWBYTE_DIM],
    CONSTRAINT [FK_variant_option_value_company] FOREIGN KEY ([company_id]) REFERENCES [dbo].[company] ([id]),
    CONSTRAINT [FK_variant_option_value_item] FOREIGN KEY ([company_id], [item_no]) REFERENCES [dbo].[item] ([company_id], [item_no]),
    CONSTRAINT [FK_variant_option_value_option_name] FOREIGN KEY ([company_id], [item_no], [option_name]) REFERENCES [dbo].[variant_option] ([company_id], [item_no], [name])
) ON [FLOWBYTE_DIM];


GO
CREATE NONCLUSTERED INDEX [IX_variant_option_value_company_id_item]
    ON [dbo].[variant_option_value]([company_id] ASC, [item_no] ASC)
    ON [FLOWBYTE_DIM];


GO
CREATE NONCLUSTERED INDEX [IX_variant_option_value_option_name]
    ON [dbo].[variant_option_value]([option_name] ASC)
    ON [FLOWBYTE_DIM];

