CREATE TABLE [dbo].[customer](
	[customer_id] [int] NOT NULL,
	[first_name] [varchar](200) NULL,
	[last_name] [varchar](200) NULL,
	[email] [varchar](350) NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_customer] PRIMARY KEY CLUSTERED 
(
	[customer_id] ASC
)
) 
GO
