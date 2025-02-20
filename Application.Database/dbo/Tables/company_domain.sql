﻿CREATE TABLE [dbo].[company_domain] (
    [company_id] NVARCHAR (10)  NOT NULL,
    [domain]     NVARCHAR (450) NOT NULL,
    CONSTRAINT [PK_company_domain] PRIMARY KEY NONCLUSTERED ([company_id] ASC, [domain] ASC) ON [FLOWBYTE_DIM],
    CONSTRAINT [FK_company_domain_company_company_id] FOREIGN KEY ([company_id]) REFERENCES [dbo].[company] ([id])
) ON [FLOWBYTE_DIM];

