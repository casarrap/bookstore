CREATE TABLE [dbo].[author](
	[author_id] [int] NOT NULL,
	[author_name] [varchar](400) NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_author] PRIMARY KEY CLUSTERED 
(
	[author_id] ASC
)
) 
GO
