CREATE TABLE [dbo].[order_line](
	[line_id] [int] IDENTITY(1,1) NOT NULL,
	[order_id] [int] NULL,
	[book_id] [int] NULL,
	[price] [decimal](5, 2) NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_orderline] PRIMARY KEY CLUSTERED 
(
	[line_id] ASC
)
) 
GO
