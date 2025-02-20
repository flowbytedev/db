CREATE TABLE [dbo].[variant_option] (
    [cdc_key]     BIGINT         NOT NULL,
    [company_id]  NVARCHAR (10)  NOT NULL,
    [item_no]     NVARCHAR (255) NOT NULL,
    [name]        NVARCHAR (255) NOT NULL,
    [description] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_variant_option] PRIMARY KEY NONCLUSTERED ([company_id] ASC, [item_no] ASC, [name] ASC) ON [FLOWBYTE_DIM],
    CONSTRAINT [FK_variant_option_company] FOREIGN KEY ([company_id]) REFERENCES [dbo].[company] ([id]),
    CONSTRAINT [FK_variant_option_item] FOREIGN KEY ([company_id], [item_no]) REFERENCES [dbo].[item] ([company_id], [item_no])
) ON [FLOWBYTE_DIM] TEXTIMAGE_ON [FLOWBYTE_DIM];


GO
CREATE CLUSTERED INDEX [IX_variant_option_company_id_item]
    ON [dbo].[variant_option]([company_id] ASC, [item_no] ASC)
    ON [FLOWBYTE_DIM];

