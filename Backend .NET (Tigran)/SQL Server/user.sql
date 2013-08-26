SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [text] NULL,
	[passowrd] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO


