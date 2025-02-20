﻿CREATE TABLE [dbo].[application_user] (
    [id]                     NVARCHAR (450)     NOT NULL,
    [created_on]             DATETIME2 (7)      NOT NULL,
    [modified_on]            DATETIME2 (7)      NOT NULL,
    [created_by]             NVARCHAR (MAX)     NULL,
    [modified_by]            NVARCHAR (MAX)     NULL,
    [is_deleted]             BIT                NOT NULL,
    [user_name]              NVARCHAR (256)     NULL,
    [normalized_user_name]   NVARCHAR (256)     NULL,
    [email]                  NVARCHAR (256)     NULL,
    [normalized_email]       NVARCHAR (256)     NULL,
    [email_confirmed]        BIT                NOT NULL,
    [password_hash]          NVARCHAR (MAX)     NULL,
    [security_stamp]         NVARCHAR (MAX)     NULL,
    [concurrency_stamp]      NVARCHAR (MAX)     NULL,
    [phone_number]           NVARCHAR (MAX)     NULL,
    [phone_number_confirmed] BIT                NOT NULL,
    [two_factor_enabled]     BIT                NOT NULL,
    [lockout_end]            DATETIMEOFFSET (7) NULL,
    [lockout_enabled]        BIT                NOT NULL,
    [access_failed_count]    INT                NOT NULL,
    CONSTRAINT [PK_application_user] PRIMARY KEY CLUSTERED ([id] ASC) ON [FLOWBYTE_DIM]
) ON [FLOWBYTE_DIM] TEXTIMAGE_ON [FLOWBYTE_DIM];


GO
CREATE NONCLUSTERED INDEX [EmailIndex]
    ON [dbo].[application_user]([normalized_email] ASC)
    ON [FLOWBYTE_DIM];


GO
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex]
    ON [dbo].[application_user]([normalized_user_name] ASC) WHERE ([normalized_user_name] IS NOT NULL)
    ON [FLOWBYTE_DIM];

