CREATE TABLE [dbo].[order_status](
	[status_id] [int] NOT NULL,
	[status_value] [varchar](20) NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_orderstatus] PRIMARY KEY CLUSTERED 
(
	[status_id] ASC
)
) 
GO
