﻿CREATE TABLE [dbo].[user_login] (
    [login_provider]        NVARCHAR (450) NOT NULL,
    [provider_key]          NVARCHAR (450) NOT NULL,
    [provider_display_name] NVARCHAR (MAX) NULL,
    [user_id]               NVARCHAR (450) NOT NULL,
    CONSTRAINT [PK_user_login] PRIMARY KEY CLUSTERED ([login_provider] ASC, [provider_key] ASC) ON [FLOWBYTE_DIM],
    CONSTRAINT [FK_user_login_application_user_user_id] FOREIGN KEY ([user_id]) REFERENCES [dbo].[application_user] ([id])
) ON [FLOWBYTE_DIM] TEXTIMAGE_ON [FLOWBYTE_DIM];


GO
CREATE NONCLUSTERED INDEX [IX_user_login_user_id]
    ON [dbo].[user_login]([user_id] ASC)
    ON [FLOWBYTE_DIM];

