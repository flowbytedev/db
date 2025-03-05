CREATE TABLE [dbo].[customer_subscription]
(
	[id] INT IDENTITY(1,1) ,
    [customer_code] NVARCHAR(255) NOT NULL,
    [subscription_id] INT NOT NULL,
    [status] INT NOT NULL, 
    [company_id] NVARCHAR(10) NULL, 
    CONSTRAINT [PK_customer_subscription] PRIMARY KEY ([id]), 
    CONSTRAINT [FK_customer_subscription] FOREIGN KEY ([subscription_id]) REFERENCES [subscription]([id]), 
    CONSTRAINT [FK_customer_subscription_ToTable] FOREIGN KEY ([company_id], [customer_code]) REFERENCES [customer]([company_id],[customer_id])
)
