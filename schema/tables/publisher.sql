CREATE TABLE [dbo].[publisher](
	[publisher_id] [int] NOT NULL,
	[publisher_name] [varchar](400) NULL,
	[rowversion] [timestamp] NOT NULL,
 CONSTRAINT [pk_publisher] PRIMARY KEY CLUSTERED 
(
	[publisher_id] ASC
)
) 
GO
