CREATE TABLE [dbo].[customer_address](
	[customer_id] [int] NOT NULL,
	[address_id] [int] NOT NULL,
	[status_id] [int] NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_custaddr] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC,
	[address_id] ASC
)
)
GO