CREATE TABLE [dbo].[variant] (
    [cdc_key]            BIGINT           NULL,
    [company_id]         NVARCHAR (10)    NOT NULL,
    [item_no]            NVARCHAR (255)   NOT NULL,
    [variant_code]       NVARCHAR (255)   NOT NULL,
    [description]        NVARCHAR (255)   NULL,
    [status]             INT              NOT NULL,
    [option_1]           NVARCHAR (255)   NULL,
    [value_1]            NVARCHAR (255)   NULL,
    [option_2]           NVARCHAR (255)   NULL,
    [value_2]            NVARCHAR (255)   NULL,
    [option_3]           NVARCHAR (255)   NULL,
    [value_3]            NVARCHAR (255)   NULL,
    [packaging_material] INT              NULL,
    [width]              DECIMAL (38, 20) NULL,
    [height]             DECIMAL (38, 20) NULL,
    [depth]              DECIMAL (38, 20) NULL,
    CONSTRAINT [PK_variant] PRIMARY KEY CLUSTERED ([company_id] ASC, [item_no] ASC, [variant_code] ASC)
);

