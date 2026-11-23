CREATE TABLE [dbo].[book](
	[book_id] [int] NOT NULL,
	[title] [varchar](400) NULL,
	[isbn13] [varchar](13) NULL,
	[language_id] [int] NULL,
	[num_pages] [int] NULL,
	[publication_date] [date] NULL,
	[publisher_id] [int] NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_book] PRIMARY KEY CLUSTERED 
(
	[book_id] ASC
)
) 
GO
