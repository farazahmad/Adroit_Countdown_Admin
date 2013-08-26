SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [popup](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[title] [text] NULL,
	[details] [text] NULL,
	[button1] [text] NULL,
	[button2] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


