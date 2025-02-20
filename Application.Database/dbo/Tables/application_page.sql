﻿CREATE TABLE [dbo].[application_page] (
    [id]          NVARCHAR (255) NOT NULL,
    [name]        NVARCHAR (MAX) NOT NULL,
    [description] NVARCHAR (MAX) NOT NULL,
    CONSTRAINT [PK_application_page] PRIMARY KEY CLUSTERED ([id] ASC) ON [FLOWBYTE_DIM]
) ON [FLOWBYTE_DIM] TEXTIMAGE_ON [FLOWBYTE_DIM];

