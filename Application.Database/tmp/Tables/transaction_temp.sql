﻿CREATE TABLE [tmp].[transaction_temp]
(
	
    [cdc_key]                BIGINT           NOT NULL,
    [company_id]             NVARCHAR (10)    NOT NULL,
    [posting_date]           DATETIME         NOT NULL,
    [entry_type]             NVARCHAR (100)   NOT NULL,
    [document_type]          NVARCHAR (255)   NOT NULL,
    [document_no]            NVARCHAR (255)   NOT NULL,
    [warehouse_code]         NVARCHAR (255)   NOT NULL,
    [source_no]              NVARCHAR (255)   NOT NULL,
    [item_id]                NVARCHAR (255)   NOT NULL,
    [item_no]                NVARCHAR (255)   NOT NULL,
    [variant_code]           NVARCHAR (255)   NOT NULL,
    [item_category]          NVARCHAR (255)   NOT NULL,
    [division]               NVARCHAR (255)   NULL,
    [cc_code]                NVARCHAR (255)   NOT NULL,
    [dep_code]               NVARCHAR (255)   NOT NULL,
    [gen_prod_posting_group] NVARCHAR (255)   NULL,
    [offer_no]               NVARCHAR (255)   NULL,
    [reason_code]            NVARCHAR (255)   NULL,
    [journal_batch_name]     NVARCHAR (255)   NULL,
    [document_entry_id]      INT              NULL,
    [item_charge_no]         NVARCHAR (30)    NULL,
    [quantity]               DECIMAL (38, 20) NOT NULL,
    [amount_lc]              DECIMAL (38, 20) NOT NULL,
    [amount_ac]              DECIMAL (38, 20) NOT NULL,
    [cost_amount_lc]         DECIMAL (38, 20) NOT NULL,
    [cost_amount_ac]         DECIMAL (38, 20) NOT NULL,
    CONSTRAINT [PK_transaction_temp] PRIMARY KEY CLUSTERED ([company_id] ASC, [warehouse_code] ASC, [posting_date] ASC, [entry_type] ASC, [document_type] ASC, [document_no] ASC),
    
);

