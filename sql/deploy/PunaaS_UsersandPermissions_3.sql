-- =============================================
-- Author:  Karina Rivera
-- Create Date: 7/13/2022
-- Modified Date: 8/1/2022
-- Modified By: Karina Rivera
-- Description:  Creates users in Dadabase
-- =============================================

--Run this script against Dadabase

CREATE USER strinh FOR LOGIN strinh
CREATE USER devuser3 FOR LOGIN devuser3
CREATE USER devuser2 FOR LOGIN devuser2
CREATE USER devuser FOR LOGIN devuser
CREATE USER devuser4 FOR LOGIN devuser4

GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.KeyWord TO strinh
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunResp TO strinh
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunResponseKeyWord TO strinh
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunSetup TO strinh
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunSetupKeyWord TO strinh
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunSetupResp TO strinh
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.Conversation TO strinh
GRANT SELECT ON dbo.Reaction TO strinh
GRANT SELECT ON dbo.ReactionType TO strinh
GRANT SELECT ON dbo.SubmitType TO strinh
GRANT SELECT ON dbo.PunSetupRespSubmitApproval TO strinh
GRANT SELECT ON dbo.PunSetupRespSubmit TO strinh
GRANT SELECT ON dbo.PunSetupRespStage TO strinh
GRANT SELECT ON dbo.ApprovalType TO strinh
GRANT EXEC ON dbo.getPunResponse TO strinh
GRANT EXEC ON dbo.getPunSetupResponse TO strinh

REVOKE INSERT, UPDATE, DELETE ON dbo.KeyWord FROM strinh
REVOKE INSERT, UPDATE, DELETE ON dbo.PunResp FROM strinh
REVOKE INSERT, UPDATE, DELETE ON dbo.PunResponseKeyWord FROM strinh
REVOKE INSERT, UPDATE, DELETE ON dbo.PunSetup FROM strinh
REVOKE INSERT, UPDATE, DELETE ON dbo.PunSetupKeyWord FROM strinh
REVOKE INSERT, UPDATE, DELETE ON dbo.PunSetupResp FROM strinh

GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.KeyWord TO devuser3
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunResp TO devuser3
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunResponseKeyWord TO devuser3
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunSetup TO devuser3
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunSetupKeyWord TO devuser3
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunSetupResp TO devuser3
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.Conversation TO devuser3
GRANT SELECT ON dbo.Reaction TO devuser3
GRANT SELECT ON dbo.ReactionType TO devuser3
GRANT SELECT ON dbo.SubmitType TO devuser3
GRANT SELECT ON dbo.PunSetupRespSubmitApproval TO devuser3
GRANT SELECT ON dbo.PunSetupRespSubmit TO devuser3
GRANT SELECT ON dbo.PunSetupRespStage TO devuser3
GRANT SELECT ON dbo.ApprovalType TO devuser3
GRANT EXEC ON dbo.getPunResponse TO devuser3
GRANT EXEC ON dbo.getPunSetupResponse TO devuser3

REVOKE INSERT, UPDATE, DELETE ON dbo.KeyWord FROM devuser3
REVOKE INSERT, UPDATE, DELETE ON dbo.PunResp FROM devuser3
REVOKE INSERT, UPDATE, DELETE ON dbo.PunResponseKeyWord FROM devuser3
REVOKE INSERT, UPDATE, DELETE ON dbo.PunSetup FROM devuser3
REVOKE INSERT, UPDATE, DELETE ON dbo.PunSetupKeyWord FROM devuser3
REVOKE INSERT, UPDATE, DELETE ON dbo.PunSetupResp FROM devuser3

GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.KeyWord TO devuser2
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunResp TO devuser2
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunResponseKeyWord TO devuser2
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunSetup TO devuser2
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunSetupKeyWord TO devuser2
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunSetupResp TO devuser2
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.Conversation TO devuser2
GRANT SELECT ON dbo.Reaction TO devuser2
GRANT SELECT ON dbo.ReactionType TO devuser2
GRANT SELECT ON dbo.SubmitType TO devuser2
GRANT SELECT ON dbo.PunSetupRespSubmitApproval TO devuser2
GRANT SELECT ON dbo.PunSetupRespSubmit TO devuser2
GRANT SELECT ON dbo.PunSetupRespStage TO devuser2
GRANT SELECT ON dbo.ApprovalType TO devuser2
GRANT EXEC ON dbo.getPunResponse TO devuser2
GRANT EXEC ON dbo.getPunSetupResponse TO devuser2

REVOKE INSERT, UPDATE, DELETE ON dbo.KeyWord FROM devuser2
REVOKE INSERT, UPDATE, DELETE ON dbo.PunResp FROM devuser2
REVOKE INSERT, UPDATE, DELETE ON dbo.PunResponseKeyWord FROM devuser2
REVOKE INSERT, UPDATE, DELETE ON dbo.PunSetup FROM devuser2
REVOKE INSERT, UPDATE, DELETE ON dbo.PunSetupKeyWord FROM devuser2
REVOKE INSERT, UPDATE, DELETE ON dbo.PunSetupResp FROM devuser2


GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.KeyWord TO devuser
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunResp TO devuser
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunResponseKeyWord TO devuser
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunSetup TO devuser
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunSetupKeyWord TO devuser
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunSetupResp TO devuser
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.Conversation TO devuser
GRANT SELECT ON dbo.Reaction TO devuser
GRANT SELECT ON dbo.ReactionType TO devuser
GRANT SELECT ON dbo.SubmitType TO devuser
GRANT SELECT ON dbo.PunSetupRespSubmitApproval TO devuser
GRANT SELECT ON dbo.PunSetupRespSubmit TO devuser
GRANT SELECT ON dbo.PunSetupRespStage TO devuser
GRANT SELECT ON dbo.ApprovalType TO devuser
GRANT EXEC ON dbo.getPunResponse TO devuser
GRANT EXEC ON dbo.getPunSetupResponse TO devuser

REVOKE INSERT, UPDATE, DELETE ON dbo.KeyWord FROM devuser
REVOKE INSERT, UPDATE, DELETE ON dbo.PunResp FROM devuser
REVOKE INSERT, UPDATE, DELETE ON dbo.PunResponseKeyWord FROM devuser
REVOKE INSERT, UPDATE, DELETE ON dbo.PunSetup FROM devuser
REVOKE INSERT, UPDATE, DELETE ON dbo.PunSetupKeyWord FROM devuser
REVOKE INSERT, UPDATE, DELETE ON dbo.PunSetupResp FROM devuser

GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.KeyWord TO devuser4
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunResp TO devuser4
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunResponseKeyWord TO devuser4
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunSetup TO devuser4
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunSetupKeyWord TO devuser4
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.PunSetupResp TO devuser4
GRANT SELECT, INSERT, UPDATE, DELETE ON dbo.Conversation TO devuser4
GRANT SELECT ON dbo.Reaction TO devuser4
GRANT SELECT ON dbo.ReactionType TO devuser4
GRANT SELECT ON dbo.SubmitType TO devuser4
GRANT SELECT ON dbo.PunSetupRespSubmitApproval TO devuser4
GRANT SELECT ON dbo.PunSetupRespSubmit TO devuser4
GRANT SELECT ON dbo.PunSetupRespStage TO devuser4
GRANT SELECT ON dbo.ApprovalType TO devuser4
GRANT EXEC ON dbo.getPunResponse TO devuser4
GRANT EXEC ON dbo.getPunSetupResponse TO devuser4

REVOKE INSERT, UPDATE, DELETE ON dbo.KeyWord FROM devuser4
REVOKE INSERT, UPDATE, DELETE ON dbo.PunResp FROM devuser4
REVOKE INSERT, UPDATE, DELETE ON dbo.PunResponseKeyWord FROM devuser4
REVOKE INSERT, UPDATE, DELETE ON dbo.PunSetup FROM devuser4
REVOKE INSERT, UPDATE, DELETE ON dbo.PunSetupKeyWord FROM devuser4
REVOKE INSERT, UPDATE, DELETE ON dbo.PunSetupResp FROM devuser4