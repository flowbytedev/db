CREATE TABLE [tmp].[item_temp] (
    [company_id]  NVARCHAR (10)  NOT NULL,
    [item_no]     NVARCHAR (255) NOT NULL,
    [title]       NVARCHAR (255) NULL,
    [description] NVARCHAR (MAX) NULL,
    [brand]       NVARCHAR (255) NULL,
    [cdc_key]     BIGINT         NOT NULL,
    CONSTRAINT [PK_item_temp] PRIMARY KEY CLUSTERED ([company_id] ASC, [item_no] ASC) ON [FLOWBYTE_DIM]
) ON [FLOWBYTE_DIM] TEXTIMAGE_ON [FLOWBYTE_DIM];

