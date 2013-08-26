
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [settings](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_open_app] [int] NULL,
	[user_open_app_count] [int] NULL,
	[after_editing_countdown] [int] NULL,
	[after_editing_color_countdown] [int] NULL,
	[after_swiping_events] [int] NULL,
	[after_share_or_save] [int] NULL,
	[after_crate_new_event] [int] NULL,
	[selecting_multiple_countdown] [int] NULL,
	[selecting_countdown_in_multiple] [int] NULL
) ON [PRIMARY]

GO


