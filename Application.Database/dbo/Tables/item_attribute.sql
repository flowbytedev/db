CREATE TABLE [dbo].[item_attribute] (
    [company_id] NVARCHAR (10)  NOT NULL,
    [item_no]    NVARCHAR (255) NOT NULL,
    [attribute]  NVARCHAR (255) NOT NULL,
    [value]      NVARCHAR (MAX) NOT NULL,
    [cdc_key]    BIGINT         NOT NULL,
    CONSTRAINT [PK_item_attribute] PRIMARY KEY CLUSTERED ([company_id] ASC, [item_no] ASC, [attribute] ASC) ON [FLOWBYTE_DIM],
    CONSTRAINT [FK_item_attribute_company] FOREIGN KEY ([company_id]) REFERENCES [dbo].[company] ([id]),
    CONSTRAINT [FK_item_attribute_item] FOREIGN KEY ([company_id], [item_no]) REFERENCES [dbo].[item] ([company_id], [item_no])
) ON [FLOWBYTE_DIM] TEXTIMAGE_ON [FLOWBYTE_DIM];


GO
CREATE NONCLUSTERED INDEX [IX_item_attribute_attribute]
    ON [dbo].[item_attribute]([attribute] ASC)
    ON [FLOWBYTE_DIM];

