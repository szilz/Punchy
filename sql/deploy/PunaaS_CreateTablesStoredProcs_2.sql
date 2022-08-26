-- =============================================
-- Author:  Karina Rivera
-- Create Date: 7/13/2022
-- Modified Date: 7/25/2022
-- Modified By: Karina Rivera, Benito Campos
-- Description:  Creates default Tables
-- =============================================

--Run this script against DadaBase


/****** Object:  UserDefinedTableType [dbo].[WORDLIST]    Script Date: 7/12/2022 1:44:36 PM ******/
CREATE TYPE [dbo].[WORDLIST] AS TABLE(
	[Word] [nvarchar](128) NULL
)
GO
/****** Object:  Table [dbo].[KeyWord]    Script Date: 7/12/2022 1:44:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KeyWord](
	[KeyWordID] [uniqueidentifier] NOT NULL,
	[Word] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_KeyWord] PRIMARY KEY CLUSTERED 
(
	[KeyWordID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UIX_KeyWord_Word] UNIQUE NONCLUSTERED 
(
	[Word] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PunSetup]    Script Date: 7/12/2022 1:44:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PunSetup](
	[PunSetupID] [uniqueidentifier] NOT NULL,
	[SetupPhrase] [nvarchar](1024) NOT NULL,
 CONSTRAINT [PK_PunSetup] PRIMARY KEY CLUSTERED 
(
	[PunSetupID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UIX_PunSetup_SetupPhrase] UNIQUE NONCLUSTERED 
(
	[SetupPhrase] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PunResp]    Script Date: 7/12/2022 1:44:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PunResp](
	[PunResponseID] [uniqueidentifier] NOT NULL,
	[ResponsePhrase] [nvarchar](1024) NOT NULL,
 CONSTRAINT [PK_PunResp] PRIMARY KEY CLUSTERED 
(
	[PunResponseID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UIX_PunResp_ResponsePhrase] UNIQUE NONCLUSTERED 
(
	[ResponsePhrase] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PunSetup_2022621]    Script Date: 7/12/2022 1:44:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PunSetup_2022621](
	[PunSetupID] [int] NOT NULL,
	[SetUpPhrase] [text] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PunSetupKeyWord]    Script Date: 7/12/2022 1:44:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PunSetupKeyWord](
	[PunSetupKeyWordID] [uniqueidentifier] NOT NULL,
	[PunSetupID] [uniqueidentifier] NOT NULL,
	[KeyWordID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PunSetupKeyWord] PRIMARY KEY CLUSTERED 
(
	[PunSetupKeyWordID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UIX_PunSetupKeyWord_PunSetupID_KeyWordID] UNIQUE NONCLUSTERED 
(
	[PunSetupID] ASC,
	[KeyWordID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[PunResponseKeyWord]    Script Date: 7/12/2022 1:44:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PunResponseKeyWord](
	[PunResponseKeyWordID] [uniqueidentifier] NOT NULL,
	[PunResponseID] [uniqueidentifier] NOT NULL,
	[KeyWordID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PunResponseKeyWord] PRIMARY KEY CLUSTERED 
(
	[PunResponseKeyWordID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UIX_PunResponseKeyWord_PunResponseID_KeyWordID] UNIQUE NONCLUSTERED 
(
	[PunResponseID] ASC,
	[KeyWordID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


/****** Object:  Table [dbo].[PunSetupResp]    Script Date: 7/12/2022 1:44:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PunSetupResp](
	[PunSetupResponseID] [uniqueidentifier] NOT NULL,
	[PunSetupID] [uniqueidentifier] NOT NULL,
	[PunResponseID] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_PunSetupResp] PRIMARY KEY CLUSTERED 
(
	[PunSetupResponseID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UIX_PunSetupResp_PunSetupID_PunResponseID] UNIQUE NONCLUSTERED 
(
	[PunSetupID] ASC,
	[PunResponseID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[KeyWord] ADD  CONSTRAINT [DF_KeyWord_KeyWord]  DEFAULT (newid()) FOR [KeyWordID]
GO
ALTER TABLE [dbo].[PunResp] ADD  CONSTRAINT [DF_PunResp_PunResponseID]  DEFAULT (newid()) FOR [PunResponseID]
GO
ALTER TABLE [dbo].[PunResponseKeyWord] ADD  CONSTRAINT [DF_PunResponseKeyWord_PunResponseKewWordID]  DEFAULT (newid()) FOR [PunResponseKeyWordID]
GO
ALTER TABLE [dbo].[PunSetup] ADD  CONSTRAINT [DF_PunSetup_PunSetupID]  DEFAULT (newid()) FOR [PunSetupID]
GO
ALTER TABLE [dbo].[PunSetupKeyWord] ADD  CONSTRAINT [DF_PunSetupKeyWord_PunSetupKewWordID]  DEFAULT (newid()) FOR [PunSetupKeyWordID]
GO
ALTER TABLE [dbo].[PunSetupResp] ADD  CONSTRAINT [DF_PunSetupResp_PunSetupResponseID]  DEFAULT (newid()) FOR [PunSetupResponseID]
GO
ALTER TABLE [dbo].[PunResponseKeyWord]  WITH CHECK ADD  CONSTRAINT [FK_PunResponseKeyWord_KeyWord] FOREIGN KEY([KeyWordID])
REFERENCES [dbo].[KeyWord] ([KeyWordID])
GO
ALTER TABLE [dbo].[PunResponseKeyWord] CHECK CONSTRAINT [FK_PunResponseKeyWord_KeyWord]
GO
ALTER TABLE [dbo].[PunResponseKeyWord]  WITH CHECK ADD  CONSTRAINT [FK_PunResponseKeyWord_PunResp] FOREIGN KEY([PunResponseID])
REFERENCES [dbo].[PunResp] ([PunResponseID])
GO
ALTER TABLE [dbo].[PunResponseKeyWord] CHECK CONSTRAINT [FK_PunResponseKeyWord_PunResp]
GO
ALTER TABLE [dbo].[PunSetupKeyWord]  WITH CHECK ADD  CONSTRAINT [FK_PunSetupKeyWord_KeyWord] FOREIGN KEY([KeyWordID])
REFERENCES [dbo].[KeyWord] ([KeyWordID])
GO
ALTER TABLE [dbo].[PunSetupKeyWord] CHECK CONSTRAINT [FK_PunSetupKeyWord_KeyWord]
GO
ALTER TABLE [dbo].[PunSetupKeyWord]  WITH CHECK ADD  CONSTRAINT [FK_PunSetupKeyWord_PunSetup] FOREIGN KEY([PunSetupID])
REFERENCES [dbo].[PunSetup] ([PunSetupID])
GO
ALTER TABLE [dbo].[PunSetupKeyWord] CHECK CONSTRAINT [FK_PunSetupKeyWord_PunSetup]
GO
ALTER TABLE [dbo].[PunSetupResp]  WITH CHECK ADD  CONSTRAINT [FK_PunSetupResp_PunResp] FOREIGN KEY([PunResponseID])
REFERENCES [dbo].[PunResp] ([PunResponseID])
GO
ALTER TABLE [dbo].[PunSetupResp] CHECK CONSTRAINT [FK_PunSetupResp_PunResp]
GO
ALTER TABLE [dbo].[PunSetupResp]  WITH CHECK ADD  CONSTRAINT [FK_PunSetupResp_PunSetup] FOREIGN KEY([PunSetupID])
REFERENCES [dbo].[PunSetup] ([PunSetupID])
GO
ALTER TABLE [dbo].[PunSetupResp] CHECK CONSTRAINT [FK_PunSetupResp_PunSetup]
GO

/****** Object:  Table [dbo].[ReactionType]    Script Date: 8/2/2022 7:33:47 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ReactionType](
	[ReactionTypeID] [uniqueidentifier] NOT NULL,
	[ReactionTypeName] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_ReactionType] PRIMARY KEY CLUSTERED 
(
	[ReactionTypeID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UIX_ReactionType_ReactionTypeName] UNIQUE NONCLUSTERED 
(
	[ReactionTypeName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ReactionType] ADD  CONSTRAINT [DF_ReactionType_ReactionTypeID]  DEFAULT (newid()) FOR [ReactionTypeID]
GO

/****** Object:  Table [dbo].[Conversation]    Script Date: 7/25/2022 10:48:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Conversation](
	[ConversationID] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[CreateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Conversation] PRIMARY KEY CLUSTERED 
(
	[ConversationID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UIX_Conversation_ConversationID_UserName] UNIQUE NONCLUSTERED 
(
	[ConversationID] ASC,
	[UserName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Conversation] ADD  CONSTRAINT [DF_Conversation_ConversationID]  DEFAULT (newid()) FOR [ConversationID]
GO

ALTER TABLE [dbo].[Conversation] ADD  CONSTRAINT [DF_Conversation_CreateDate]  DEFAULT (getutcdate()) FOR [CreateDate]
GO


/****** Object:  Table [dbo].[Reaction]    Script Date: 8/2/2022 7:33:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Reaction](
	[ReactionID] [uniqueidentifier] NOT NULL,
	[ConversationID] [uniqueidentifier] NOT NULL,
	[PunSetupID] [uniqueidentifier] NULL,
	[PunRespID] [uniqueidentifier] NOT NULL,
	[ReactionTypeID] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Reaction] PRIMARY KEY CLUSTERED 
(
	[ReactionID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Reaction] ADD  CONSTRAINT [DF_Reaction_ReactionID]  DEFAULT (newid()) FOR [ReactionID]
GO

ALTER TABLE [dbo].[Reaction] ADD  CONSTRAINT [DF_Reaction_CreateDate]  DEFAULT (getutcdate()) FOR [CreateDate]
GO

ALTER TABLE [dbo].[Reaction]  WITH CHECK ADD  CONSTRAINT [FK_Reaction_Conversation] FOREIGN KEY([ConversationID])
REFERENCES [dbo].[Conversation] ([ConversationID])
GO

ALTER TABLE [dbo].[Reaction] CHECK CONSTRAINT [FK_Reaction_Conversation]
GO

ALTER TABLE [dbo].[Reaction]  WITH CHECK ADD  CONSTRAINT [FK_Reaction_PunResp] FOREIGN KEY([PunRespID])
REFERENCES [dbo].[PunResp] ([PunResponseID])
GO

ALTER TABLE [dbo].[Reaction] CHECK CONSTRAINT [FK_Reaction_PunResp]
GO

ALTER TABLE [dbo].[Reaction]  WITH CHECK ADD  CONSTRAINT [FK_Reaction_PunSetup] FOREIGN KEY([PunSetupID])
REFERENCES [dbo].[PunSetup] ([PunSetupID])
GO

ALTER TABLE [dbo].[Reaction] CHECK CONSTRAINT [FK_Reaction_PunSetup]
GO

ALTER TABLE [dbo].[Reaction]  WITH CHECK ADD  CONSTRAINT [FK_Reaction_ReactionType] FOREIGN KEY([ReactionTypeID])
REFERENCES [dbo].[ReactionType] ([ReactionTypeID])
GO

ALTER TABLE [dbo].[Reaction] CHECK CONSTRAINT [FK_Reaction_ReactionType]
GO









/****** Object:  Table [dbo].[SubmitType]    Script Date: 8/1/2022 10:11:35 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SubmitType](
	[SubmitTypeID] [uniqueidentifier] NOT NULL,
	[SubmitTypeName] [nchar](128) NOT NULL,
 CONSTRAINT [PK_SubmitType] PRIMARY KEY CLUSTERED 
(
	[SubmitTypeID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UIX_SubmitType_SubmitTypeName] UNIQUE NONCLUSTERED 
(
	[SubmitTypeName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SubmitType] ADD  CONSTRAINT [DF_SubmitType_SubmitTypeID]  DEFAULT (newid()) FOR [SubmitTypeID]
GO

/****** Object:  Table [dbo].[ApprovalType]    Script Date: 8/1/2022 10:13:37 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ApprovalType](
	[ApprovalTypeID] [uniqueidentifier] NOT NULL,
	[ApprovalTypeName] [nchar](128) NOT NULL,
 CONSTRAINT [PK_ApprovalType] PRIMARY KEY CLUSTERED 
(
	[ApprovalTypeID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UIX_ApprovalType_ApprovalTypeName] UNIQUE NONCLUSTERED 
(
	[ApprovalTypeName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ApprovalType] ADD  CONSTRAINT [DF_ApprovalType_ApprovalTypeID]  DEFAULT (newid()) FOR [ApprovalTypeID]
GO

/****** Object:  Table [dbo].[PunSetupRespSubmit]    Script Date: 8/1/2022 10:12:16 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PunSetupRespSubmit](
	[PunSetupRespSubmitID] [uniqueidentifier] NOT NULL,
	[SetupPhrase] [nvarchar](1024) NULL,
	[ResponsePhrase] [nvarchar](1024) NOT NULL,
	[SubmitTypeID] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_PunSetupRespSubmit] PRIMARY KEY CLUSTERED 
(
	[PunSetupRespSubmitID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PunSetupRespSubmit] ADD  CONSTRAINT [DF_PunSetupRespSubmit_PunSetupRespSubmitID]  DEFAULT (newid()) FOR [PunSetupRespSubmitID]
GO

ALTER TABLE [dbo].[PunSetupRespSubmit] ADD  CONSTRAINT [DF_PunSetupRespSubmit_CreateDate]  DEFAULT (getutcdate()) FOR [CreateDate]
GO


/****** Object:  Table [dbo].[PunSetupRespSubmitApproval]    Script Date: 8/1/2022 10:12:49 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PunSetupRespSubmitApproval](
	[PunSetupRespSubmitApprovalID] [uniqueidentifier] NOT NULL,
	[PunSetupRespSubmitID] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[ApprovalTypeID] [uniqueidentifier] NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_PunSetupRespSubmitApproval] PRIMARY KEY CLUSTERED 
(
	[PunSetupRespSubmitApprovalID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UIX_PunSetupRespSubmitApproval_PunSetupRespSubmitID_UserName] UNIQUE NONCLUSTERED 
(
	[PunSetupRespSubmitID] ASC,
	[UserName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PunSetupRespSubmitApproval] ADD  CONSTRAINT [DF_PunSetupRespSubmitApproval_PunSetupRespSubmitApprovalID]  DEFAULT (newid()) FOR [PunSetupRespSubmitApprovalID]
GO

ALTER TABLE [dbo].[PunSetupRespSubmitApproval] ADD  CONSTRAINT [DF_PunSetupRespSubmitApproval_CreateDate]  DEFAULT (getutcdate()) FOR [CreateDate]
GO

ALTER TABLE [dbo].[PunSetupRespSubmitApproval]  WITH CHECK ADD  CONSTRAINT [FK_PunSetupRespSubmitApproval_ApprovalType] FOREIGN KEY([ApprovalTypeID])
REFERENCES [dbo].[ApprovalType] ([ApprovalTypeID])
GO

ALTER TABLE [dbo].[PunSetupRespSubmitApproval] CHECK CONSTRAINT [FK_PunSetupRespSubmitApproval_ApprovalType]
GO

ALTER TABLE [dbo].[PunSetupRespSubmitApproval]  WITH CHECK ADD  CONSTRAINT [FK_PunSetupRespSubmitApproval_PunSetupRespSubmit] FOREIGN KEY([PunSetupRespSubmitID])
REFERENCES [dbo].[PunSetupRespSubmit] ([PunSetupRespSubmitID])
GO

ALTER TABLE [dbo].[PunSetupRespSubmitApproval] CHECK CONSTRAINT [FK_PunSetupRespSubmitApproval_PunSetupRespSubmit]
GO





/****** Object:  Table [dbo].[PunSetupRespStage]    Script Date: 8/1/2022 10:14:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PunSetupRespStage](
	[PunSetupRespStageID] [uniqueidentifier] NOT NULL,
	[PunSetupRespSubmitID] [uniqueidentifier] NOT NULL,
	[PunSetupID] [uniqueidentifier] NULL,
	[PunRespID] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[CreateDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_PunSetupRespStage] PRIMARY KEY CLUSTERED 
(
	[PunSetupRespStageID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UIX_PunSetupRespStage_PunSetupRespSubmitID] UNIQUE NONCLUSTERED 
(
	[PunSetupRespSubmitID] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PunSetupRespStage] ADD  CONSTRAINT [DF_PunSetupRespStage_PunSetupRespStageID]  DEFAULT (newid()) FOR [PunSetupRespStageID]
GO

ALTER TABLE [dbo].[PunSetupRespStage] ADD  CONSTRAINT [DF_PunSetupRespStage_CreateDate]  DEFAULT (getutcdate()) FOR [CreateDate]
GO

ALTER TABLE [dbo].[PunSetupRespStage]  WITH CHECK ADD  CONSTRAINT [FK_PunSetupRespStage_PunResp] FOREIGN KEY([PunRespID])
REFERENCES [dbo].[PunResp] ([PunResponseID])
GO

ALTER TABLE [dbo].[PunSetupRespStage] CHECK CONSTRAINT [FK_PunSetupRespStage_PunResp]
GO

ALTER TABLE [dbo].[PunSetupRespStage]  WITH CHECK ADD  CONSTRAINT [FK_PunSetupRespStage_PunSetup] FOREIGN KEY([PunSetupID])
REFERENCES [dbo].[PunSetup] ([PunSetupID])
GO

ALTER TABLE [dbo].[PunSetupRespStage] CHECK CONSTRAINT [FK_PunSetupRespStage_PunSetup]
GO

ALTER TABLE [dbo].[PunSetupRespStage]  WITH CHECK ADD  CONSTRAINT [FK_PunSetupRespStage_PunSetupRespSubmit] FOREIGN KEY([PunSetupRespSubmitID])
REFERENCES [dbo].[PunSetupRespSubmit] ([PunSetupRespSubmitID])
GO

ALTER TABLE [dbo].[PunSetupRespStage] CHECK CONSTRAINT [FK_PunSetupRespStage_PunSetupRespSubmit]
GO

/****** Object:  StoredProcedure [dbo].[getPunResponse]    Script Date: 7/12/2022 1:44:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getPunResponse]
(
	@wordTable wordlist READONLY
)
	
AS	

SELECT
    [prkw].PunResponseKeyWordID
    ,[pr].*
    ,[kw].*
FROM [PunResponseKeyWord] AS [prkw]
    JOIN [PunResp] AS [pr] ON [prkw].[PunResponseID] = [pr].[PunResponseID]
    JOIN [KeyWord] AS [kw] ON [prkw].[KeyWordID] = [kw].[KeyWordID]
--WHERE kw.Word = 'news' OR kw.Word ='math'
WHERE kw.Word IN (SELECT Word FROM @wordTable)
GO
/****** Object:  StoredProcedure [dbo].[getPunSetupResponse]    Script Date: 7/12/2022 1:44:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getPunSetupResponse]
(
	@PunSetupWordTable wordlist READONLY
	,@PunResponseWordTable wordlist READONLY
)
	
AS	



SELECT
	[psr].PunSetupResponseID
     ,[ps].*
	 ,[pskw].*
	  ,[pr].*
	 ,[prkw].*
FROM [PunSetupResp] AS [psr]
	JOIN [PunSetup] AS [ps] ON [ps].[PunSetupID] = [psr].[PunSetupID]
	JOIN [PunSetupKeyWord] AS [pskwassoc] ON [pskwassoc].[PunSetupID] = [ps].[PunSetupID]
	JOIN [KeyWord] AS [pskw] ON [pskw].[KeyWordID] = [pskwassoc].[KeyWordID]


    JOIN [PunResp] AS [pr] ON [pr].[PunResponseID] = [psr].[PunResponseID]
	JOIN [PunResponseKeyWord] AS [prkwassoc] ON [prkwassoc].[PunResponseID] = [pr].[PunResponseID]
	JOIN [KeyWord] AS [prkw] ON [prkw].[KeyWordID] = [prkwassoc].[KeyWordID]
    
	

WHERE pskw.Word IN (SELECT Word FROM @PunSetupWordTable) OR prkw.Word IN (SELECT Word FROM @PunResponseWordTable)
GO
ALTER DATABASE [Dadabase] SET  READ_WRITE 
GO

/****** Object:  StoredProcedure [dbo].[getKeyWordByID]    Script Date: 8/23/2022 2:03:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getKeyWordByID]
(
	@ID uniqueidentifier
)
AS
SELECT KeyWord.Word FROM KeyWord WHERE KeyWord.KeyWordID = @ID
GO