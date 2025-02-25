CREATE TABLE [tmp].[variant_option_temp] (
    [cdc_key]     BIGINT         NOT NULL,
    [company_id]  NVARCHAR (10)  NOT NULL,
    [item_no]     NVARCHAR (255) NOT NULL,
    [name]        NVARCHAR (255) NOT NULL,
    [description] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_variant_option_temp] PRIMARY KEY NONCLUSTERED ([company_id] ASC, [item_no] ASC, [name] ASC) ON [FLOWBYTE_DIM],
    
) ON [FLOWBYTE_DIM] TEXTIMAGE_ON [FLOWBYTE_DIM];


GO
CREATE CLUSTERED INDEX [IX_variant_option_company_id_item]
    ON [tmp].[variant_option_temp]([company_id] ASC, [item_no] ASC)
    ON [FLOWBYTE_DIM];