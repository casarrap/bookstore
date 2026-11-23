CREATE TABLE [dbo].[address_status](
	[status_id] [int] NOT NULL,
	[address_status] [varchar](30) NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_addr_status] PRIMARY KEY CLUSTERED 
(
	[status_id] ASC
)
) 
GO