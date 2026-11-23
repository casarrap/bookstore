CREATE TABLE [dbo].[country](
	[country_id] [int] NOT NULL,
	[country_name] [varchar](200) NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_country] PRIMARY KEY CLUSTERED 
(
	[country_id] ASC
)
) 
GO
