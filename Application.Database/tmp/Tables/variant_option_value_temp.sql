CREATE TABLE [tmp].[variant_option_value_temp]
(
	[cdc_key]      BIGINT         NULL,
    [company_id]   NVARCHAR (10)  NOT NULL,
    [item_no]      NVARCHAR (255) NOT NULL,
    [variant_code] NVARCHAR (255) NOT NULL,
    [option_name]  NVARCHAR (255) NOT NULL,
    [status]       INT            NULL,
    [description]  NVARCHAR (255) NULL,
    [value]        NVARCHAR (255) NOT NULL,
    CONSTRAINT [PK_variant_option_value_temp] PRIMARY KEY CLUSTERED ([company_id] ASC, [item_no] ASC, [variant_code] ASC, [option_name] ASC) ON [FLOWBYTE_DIM],
    
) ON [FLOWBYTE_DIM];


GO
CREATE NONCLUSTERED INDEX [IX_variant_option_value_company_id_item]
    ON [tmp].[variant_option_value_temp]([company_id] ASC, [item_no] ASC)
    ON [FLOWBYTE_DIM];


GO
CREATE NONCLUSTERED INDEX [IX_variant_option_value_option_name]
    ON [tmp].[variant_option_value_temp]([option_name] ASC)
    ON [FLOWBYTE_DIM];