CREATE TABLE [dbo].[cust_order](
	[order_id] [int] IDENTITY(1,1) NOT NULL,
	[order_date] [datetime] NULL,
	[customer_id] [int] NULL,
	[shipping_method_id] [int] NULL,
	[dest_address_id] [int] NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_custorder] PRIMARY KEY CLUSTERED 
(
	[order_id] ASC
)
) 
GO