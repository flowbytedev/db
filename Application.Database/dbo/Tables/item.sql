CREATE TABLE [dbo].[item] (
    [company_id]  NVARCHAR (10)  NOT NULL,
    [item_no]     NVARCHAR (255) NOT NULL,
    [title]       NVARCHAR (255) NULL,
    [description] NVARCHAR (MAX) NULL,
    [brand]       NVARCHAR (255) NULL,
    [cdc_key]     BIGINT         NOT NULL,
    [created_on] DATETIME NULL, 
    [modified_on] DATETIME NULL, 
    [created_by] NVARCHAR(450) NULL, 
    [modified_by] NVARCHAR(450) NULL, 
    CONSTRAINT [PK_item] PRIMARY KEY CLUSTERED ([company_id] ASC, [item_no] ASC) ON [FLOWBYTE_DIM],
    CONSTRAINT [FK_item_company] FOREIGN KEY ([company_id]) REFERENCES [dbo].[company] ([id])
) ON [FLOWBYTE_DIM] TEXTIMAGE_ON [FLOWBYTE_DIM];


GO
CREATE NONCLUSTERED INDEX [IX_item_brand]
    ON [dbo].[item]([brand] ASC)
    ON [FLOWBYTE_DIM];


GO
CREATE NONCLUSTERED INDEX [IX_item_title]
    ON [dbo].[item]([title] ASC)
    ON [FLOWBYTE_DIM];

