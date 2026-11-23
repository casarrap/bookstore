CREATE TABLE [dbo].[book_language](
	[language_id] [int] NOT NULL,
	[language_code] [varchar](8) NULL,
	[language_name] [varchar](50) NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_language] PRIMARY KEY CLUSTERED 
(
	[language_id] ASC
)
) 
GO
