CREATE TABLE [dbo].[shipping_method](
	[method_id] [int] NOT NULL,
	[method_name] [varchar](100) NULL,
	[cost] [decimal](6, 2) NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_shipmethod] PRIMARY KEY CLUSTERED 
(
	[method_id] ASC
)
) 
GO
