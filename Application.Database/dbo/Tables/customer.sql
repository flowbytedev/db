CREATE TABLE [dbo].[customer] (
    [company_id]            NVARCHAR (10)  NOT NULL,
    [customer_id]           NVARCHAR(255)            NOT NULL,
    [first_name]            NVARCHAR (255) NOT NULL,
    [last_name]             NVARCHAR (255) NOT NULL,
    [email]                 NVARCHAR (255) NULL,
    [contact_method]        NVARCHAR (255) NOT NULL,
    [contact_number]        NVARCHAR (255) NOT NULL,
    [date_of_birth]         DATE           NOT NULL,
    [date_joined]           DATE           NOT NULL,
    [status]                NVARCHAR (255) NULL,
    [gender]                NVARCHAR (255) NOT NULL,
    [note]                  NVARCHAR (MAX) NOT NULL,
    [customer_type]         NVARCHAR (255) NOT NULL,
    [loyality_group_id]     INT   NOT NULL,
    [scheme_code]           NVARCHAR(255)   NOT NULL,
    [cobranded_code]        NVARCHAR(255)   NULL,
    [country]               NVARCHAR(255)   NOT NULL,
    [mobile_phone_number]   NVARCHAR(255)   NOT NULL,
    [is_mobile_verified]    TINYINT         NOT NULL,
    [phone_number]          NVARCHAR(255)   NULL,
    [marital_status]        NVARCHAR(255)   NULL,
    [kadaa_code]            NVARCHAR(255)   NULL,
    [city]                  NVARCHAR(255)   NULL,
    [happy_code]            NVARCHAR(255)   NULL,
    [modified_on]           DATETIME        NULL,
    [modified_by]           NVARCHAR(255)   NULL,
    [registered_by_user]    NVARCHAR(255)   NULL,
    [registered_on]         DATETIME        NULL
    CONSTRAINT [PK_customer] PRIMARY KEY CLUSTERED ([company_id] ASC, [customer_id] ASC) ON [FLOWBYTE_DIM],
    CONSTRAINT [FK_customer_company] FOREIGN KEY ([company_id]) REFERENCES [dbo].[company] ([id]),
    CONSTRAINT [FK_customer_customer_type] FOREIGN KEY ([customer_type]) REFERENCES [dbo].[customer_type] ([code]),
    CONSTRAINT [FK_customer_status] FOREIGN KEY ([status]) REFERENCES [dbo].[customer_status] ([code]), 
    CONSTRAINT [FK_customer_loyalty_group] FOREIGN KEY ([loyality_group_id]) REFERENCES [loyalty_group]([id])
) ON [FLOWBYTE_DIM] TEXTIMAGE_ON [FLOWBYTE_DIM];


GO
CREATE NONCLUSTERED INDEX [IX_customer_company_id_customer_id]
    ON [dbo].[customer]([company_id] ASC, [customer_id] ASC)
    ON [FLOWBYTE_DIM];