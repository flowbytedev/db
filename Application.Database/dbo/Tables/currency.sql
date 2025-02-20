CREATE TABLE [dbo].[currency] (
    [code]        NVARCHAR (10)  NOT NULL,
    [name]        NVARCHAR (255) NOT NULL,
    [description] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_currency] PRIMARY KEY CLUSTERED ([code] ASC) ON [FLOWBYTE_DIM]
) ON [FLOWBYTE_DIM] TEXTIMAGE_ON [FLOWBYTE_DIM];

