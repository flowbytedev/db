﻿CREATE TABLE [dbo].[token] (
    [user_id]        NVARCHAR (450) NOT NULL,
    [login_provider] NVARCHAR (450) NOT NULL,
    [name]           NVARCHAR (450) NOT NULL,
    [value]          NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_token] PRIMARY KEY CLUSTERED ([user_id] ASC, [login_provider] ASC, [name] ASC) ON [FLOWBYTE_DIM],
    CONSTRAINT [FK_token_application_user_user_id] FOREIGN KEY ([user_id]) REFERENCES [dbo].[application_user] ([id])
) ON [FLOWBYTE_DIM] TEXTIMAGE_ON [FLOWBYTE_DIM];

