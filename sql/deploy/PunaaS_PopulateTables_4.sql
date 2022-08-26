-- =============================================
-- Author:  Karina Rivera
-- Create Date: 7/13/2022
-- Modified Date: 7/13/2022
-- Modified By: Karina Rivera
-- Description:  Populates tables in Dadabase
-- =============================================

--Run this script against Dadabase

DELETE FROM [PunSetupResp]
DELETE FROM [PunResponseKeyWord]
DELETE FROM [PunSetupKeyWord]
DELETE FROM [PunSetup]
DELETE FROM [PunResp]
DELETE FROM [KeyWord]

GO
INSERT [dbo].[KeyWord] ([KeyWordID], [Word]) VALUES (N'248bf3fd-ed15-4107-a568-e1b53022642a', N'cold')
GO
INSERT [dbo].[KeyWord] ([KeyWordID], [Word]) VALUES (N'e2a7b040-35db-43f0-b75d-f431e1ea4fa2', N'dad')
GO
INSERT [dbo].[KeyWord] ([KeyWordID], [Word]) VALUES (N'4780ee3f-de95-47b1-84c2-76b3a9639509', N'eyes')
GO
INSERT [dbo].[KeyWord] ([KeyWordID], [Word]) VALUES (N'3b5797be-613e-4a52-bf94-53a7c01b49b0', N'food')
GO
INSERT [dbo].[KeyWord] ([KeyWordID], [Word]) VALUES (N'91bfdac1-22ff-469f-8277-0ed0920eb0c7', N'game')
GO
INSERT [dbo].[KeyWord] ([KeyWordID], [Word]) VALUES (N'2eb838c6-cd8c-4c16-95b6-2af7a1f2557a', N'math')
GO
INSERT [dbo].[KeyWord] ([KeyWordID], [Word]) VALUES (N'87ba8817-c645-431e-b36c-59dc7d9ba484', N'money')
GO
INSERT [dbo].[KeyWord] ([KeyWordID], [Word]) VALUES (N'245779f2-27ab-4d8a-a464-8ec16fdcee42', N'news')
GO
INSERT [dbo].[KeyWord] ([KeyWordID], [Word]) VALUES (N'7910e645-4bdc-4e1b-9538-e8d4fb0a7c80', N'stats')
GO
INSERT [dbo].[KeyWord] ([KeyWordID], [Word]) VALUES (N'ea485f6c-f2a8-4641-b912-45f58ccb9663', N'street')
GO
INSERT [dbo].[KeyWord] ([KeyWordID], [Word]) VALUES (N'124bbdd2-7051-4f75-9517-2577694b455c', N'tree')
GO
INSERT [dbo].[KeyWord] ([KeyWordID], [Word]) VALUES (N'46daa6d5-c83b-496a-a2c1-84bbde51bd34', N'weather')
GO

INSERT [dbo].[PunSetup] ([PunSetupID], [SetupPhrase]) VALUES (N'948960e0-5131-4413-ac2a-ffd5c9cda224', N'A cheese factory exploded in France.')
INSERT [dbo].[PunSetup] ([PunSetupID], [SetupPhrase]) VALUES (N'cdc5bded-3c4d-494b-a26a-0096efc28a26', N'How do the trees get on the internet?')
INSERT [dbo].[PunSetup] ([PunSetupID], [SetupPhrase]) VALUES (N'8568205a-7ec7-422c-b66f-d55190645fb7', N'I asked a Frenchman if he played video games.')
INSERT [dbo].[PunSetup] ([PunSetupID], [SetupPhrase]) VALUES (N'28d0dc21-dbd6-4f1c-b7aa-4a755e508aac', N'I wanted to take pictures of the fog this morning.')
INSERT [dbo].[PunSetup] ([PunSetupID], [SetupPhrase]) VALUES (N'64ba7be1-1990-4c5d-bc32-dba6d9634380', N'The quickest way to make antifreeze?')
INSERT [dbo].[PunSetup] ([PunSetupID], [SetupPhrase]) VALUES (N'6b4c09aa-eb80-430b-9a31-028ba238e46f', N'What did the buffalo say to his son?')
INSERT [dbo].[PunSetup] ([PunSetupID], [SetupPhrase]) VALUES (N'063eced1-f574-44e0-bb2b-c48dbdb31f9c', N'What do computers eat for a snack?')
INSERT [dbo].[PunSetup] ([PunSetupID], [SetupPhrase]) VALUES (N'f88d7abb-e451-4e79-8074-1d63b81aabaf', N'What dress does everyone have but never wears?')
INSERT [dbo].[PunSetup] ([PunSetupID], [SetupPhrase]) VALUES (N'8e77e490-b4a4-4546-b1a7-2242e12d7707', N'Why did the coach go to the bank?')
INSERT [dbo].[PunSetup] ([PunSetupID], [SetupPhrase]) VALUES (N'9641609a-80ce-4277-a760-07473903ccad', N'Why did the phone wear glasses?')
INSERT [dbo].[PunSetup] ([PunSetupID], [SetupPhrase]) VALUES (N'472a3047-b806-41d9-a8af-0861cfaeadf0', N'Why was 6 afraid of 7?')
GO 

INSERT INTO [dbo].[PunSetupKeyWord]
           ([PunSetupID]
           ,[KeyWordID])
SELECT(SELECT PunSetupID from PunSetup WHERE SetupPhrase = 'A cheese factory exploded in France.'), (SELECT KeyWordID from KeyWord WHERE Word = 'news')
UNION
SELECT(SELECT PunSetupID from PunSetup WHERE SetupPhrase = 'Why was 6 afraid of 7?'), (SELECT KeyWordID from KeyWord WHERE Word = 'math')
UNION
SELECT(SELECT PunSetupID from PunSetup WHERE SetupPhrase = 'How do the trees get on the internet?'), (SELECT KeyWordID from KeyWord WHERE Word = 'tree')
UNION
SELECT(SELECT PunSetupID from PunSetup WHERE SetupPhrase = 'Why did the coach go to the bank?'), (SELECT KeyWordID from KeyWord WHERE Word = 'money')
UNION
SELECT(SELECT PunSetupID from PunSetup WHERE SetupPhrase = 'Why did the phone wear glasses?'), (SELECT KeyWordID from KeyWord WHERE Word = 'eyes')
UNION
SELECT(SELECT PunSetupID from PunSetup WHERE SetupPhrase = 'What dress does everyone have but never wears?'), (SELECT KeyWordID from KeyWord WHERE Word = 'street')
UNION
SELECT(SELECT PunSetupID from PunSetup WHERE SetupPhrase = 'What do computers eat for a snack?'), (SELECT KeyWordID from KeyWord WHERE Word = 'food')
UNION
SELECT(SELECT PunSetupID from PunSetup WHERE SetupPhrase = 'I wanted to take pictures of the fog this morning.'), (SELECT KeyWordID from KeyWord WHERE Word = 'weather')
UNION
SELECT(SELECT PunSetupID from PunSetup WHERE SetupPhrase = 'What did the buffalo say to his son?'), (SELECT KeyWordID from KeyWord WHERE Word = 'dad')
UNION
SELECT(SELECT PunSetupID from PunSetup WHERE SetupPhrase = 'The quickest way to make antifreeze?'), (SELECT KeyWordID from KeyWord WHERE Word = 'cold')
UNION
SELECT(SELECT PunSetupID from PunSetup WHERE SetupPhrase = 'I asked a Frenchman if he played video games.'), (SELECT KeyWordID from KeyWord WHERE Word = 'game')
GO 


INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'509c2927-75f8-491c-b1f4-26e5e0bdcb49', N'"A newspaper is a collection of half- injustices"')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'12dfe20c-161e-4c43-b81f-f5aab099cb8e', N'"All my hidden skills are undiscovered."- Clinton')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e946b70e-e14f-4015-a370-d677fef7046a', N'"And we had to chisel taglines into the walls of the cave...."')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aaa319e5-f542-4c2d-bbb0-6c238655ca88', N'"Bother," said Pooh, as he torched the forest.....')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5d858e2f-2e4f-405f-a02f-4cdb4698ce16', N'"Graphic Artist seeks Boss with vision impairment."')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b3d229f2-ccbf-452c-adff-4ef1eb519346', N'"Happiness is a warm puppy," said the anaconda.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'da7c3aed-67b0-4804-8cab-a81aac4355f5', N'"I'' d like to buy a schwa, Pat."')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5844252b-29c5-4495-97d9-5fa282bf2c57', N'"I drank WHAT?!?!"- Socrates')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6455c2f3-bccb-4257-90f3-837e43035cda', N'"I'' m sick! I ought to be home in bed with a nurse."')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'390122da-5aaa-49bb-9462-463cbb2d3fd2', N'"I never met a chocolate I didn'' t like."-- Deanna Troi')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c44eb3cb-e2b6-4ca3-9019-af88e98a38f9', N'"Oops."-- Richard Nixon')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9fa08756-8b9d-4c2d-8412-9348adc22c2e', N'"Please return stewardess to original upright position"')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'09bc6d9d-9eb7-4d95-a56f-8a12e2bbf7e8', N'"She'' s dead, Jim. Still warm, though. Flip ya for her?"')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0b158e31-a087-47c6-8c9d-44660bd91089', N'"Tea, Early Grey, hot"- Picard.." Ale, Romulan, lots."- Kirk')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a129921a-705d-4b09-b57f-4bc78ae6de40', N'"Ummm, trouble with grammar have I? Yes!"-- Yoda')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7be5be1c-6123-4633-8a45-c895f5e80555', N'"Very funny, Scotty. Now beam up my clothes."')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4076bc6e-d654-41b3-a06a-c920bcc79f0e', N'"Well done" is better than" well said".')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f8ab3439-d316-4d06-951c-03e504cfd5dc', N'"WHO CARES where Carmen Sandiego is?"')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6daa569c-a131-45d4-8a75-a5eccdb71f1e', N'(A) bort,( R) etry,( F) ail,( G) rab_ Hammer')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd8b5455c-0c68-4b46-afaf-f771f9fc3e5e', N'(a) Fast,( b) Reliable,( c) Inexpensive- Pick Two.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1b2a4c1b-d252-4331-95c5-9d517d7888cd', N'...I multi- task, I read in the bathroom.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9ec7d870-688e-48b2-87a5-052e275fe157', N'...So simple a child could do it? Go find me a child!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'99b6c240-e7a2-4bc8-9da9-36d3cbd70a66', N'1 + 2 = 3; Therefore, 4 + 5 = 6.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b25c3ea7-2f69-4e1f-aace-3d02e6bac96b', N'2 Rules for Success: Rule# 1: Never reveal everything you know.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'46c8c59c-8d73-4c08-b48f-5ca3a2f95ec3', N'''''3. 14159265,'''' Tom said piously.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'01f0b784-cbe6-48bf-9f18-8cd53cfbd906', N'3. 142 Tom enumerated piously.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ceddd16c-da99-4807-a653-d4f812319bf7', N'5 billion years the earth takes to form, and we get THIS?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'20a47a03-583c-4d89-8ca6-eb6c1436b8f7', N'50 percent of something is better than one hundred percent of nothing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e0b88924-1119-4200-9895-637faf9da903', N'50 Shades of Grace')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9dc7d23d-197c-4046-b381-6f0dac6977db', N'53. 7% of all statistics are totally incorrect')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ba0dfb5d-28a3-4b6b-9108-e592b5f301f6', N'7 days without prayer makes 1 weak')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'98b6a787-5bc2-4be6-a256-1bddd56f23cd', N'80 percent of life is showing up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bf98ff20-0759-4efd-bb02-2635c6d52117', N'85% of all statistics are made up on the spot.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5bd0a370-e599-4d7b-a5b6-9257153208b3', N'86 of Borg: You will be assimilated. Would you believe, stood close to?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'406a560a-740e-4299-99ab-c15979b69a71', N'911: Press 1 if robbery. Press 2 if house on fire. Press 3...')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd5492e6c-32ca-4b7f-8b5d-3e58af2ccc94', N'96. 37% of all statistics are useless..')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'50b01e60-d4a0-40bb-b499-bd27a75118f4', N'A bacteria walked into a bar and the bartender said,'' We don'' t serve bacteria in this place.'' The bacteria said,'' But I work here, I'' m staph.''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4429b786-08ec-411a-ad7e-34cd578554b5', N'A bad settlement is better than a good lawsuit.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b4bb917e-16d9-4bad-8c3a-e250e7cff4a5', N'A bad workman blames his tools.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b59509f3-437a-469c-adbf-3c325525fa8a', N'A baker always put too much flour in his bread because he was a gluten for punishment.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fe3c2e6f-427d-4d9c-a67e-a0c642119f0e', N'A baker stopped making donuts after he got tired of the hole thing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6371e04f-3de9-49d6-a4e4-c1ed83b19f45', N'A balding man and his hair are soon parted.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f296b65a-0644-4b84-b59f-fb07976f6525', N'A band of teenagers cruised past my neighbor'' s house and pelted it with rotten tomatoes. Police described it as a drive- by fruiting.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4f01da72-d788-457a-b0d1-512d2baf2b70', N'A bank manager who was also a high jumper spent most of his time in the vault.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'463eeee0-3483-4867-b5a5-7b2434aaeb12', N'A baseball pitcher asked if he had a good curve ball, but wanted a straight answer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd898cfb2-843a-4155-b9b8-19849812ca64', N'A baseball player can sell himself to a new team if he has a good pitch.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3f0decb1-18cf-4d6b-8ff3-c05b76fb1aa1', N'A baseball player joined the army and did the round of military bases.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1bb0aaff-e6fe-4029-8e91-217a3d42056a', N'A baseball player was a thief. He was always trying to steal.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'872316c6-5f00-4543-9cf4-12285d949e1c', N'A basketball player couldn'' t control his saliva but he could sure dribble.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8b042efa-25a4-45f0-a7b2-43708ecb1da1', N'A bee keeper will sell you honey with swarm wishes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b0219d7a-b751-4f9a-b1bf-1c58d3327005', N'A belly button is for salt when you eat celery in bed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a615b078-8e47-45de-9d16-fd526ada8403', N'A bellyful is one of meat, drink, or sorrow.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a81be8c8-3911-4a0a-89ce-9c35c02ee95d', N'A bible falling apart belongs to someone who isn’t.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cead92f6-ce07-4b95-bf84-e83b4232555e', N'A big enough hammer can usually fix anything.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e3448e58-d28f-443e-9946-158289c79d55', N'A bird in the hand is a big mistake.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd7ca7ed3-0547-446a-bb64-9640aa170d24', N'A bird in the hand is better than one overhead!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cc560dcd-9a30-4eeb-b23b-e0650360fdd2', N'A bird in the hand is worth two in the bush.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c2527024-9175-4d20-95fe-ab00089cebda', N'A bird with a headache might just migrane south.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'de7268b3-0c97-469c-ad20-353e5a73cebd', N'A blow with a word strikes deeper than a blow with a sword.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cbf6128a-72d0-4751-a080-a6df33c72143', N'A boating accident between the yacht, Red Dawn, and the schooner, Blue Lagoon, left the survivors marooned.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1d8c0a92-116e-4172-8d54-1a43f89e3014', N'A boiled egg in the morning is hard to beat.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'33570ba9-bcbf-44ec-a246-f0ca5a606787', N'A boiled egg is hard to beat.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'75b15797-cd51-43f3-95bc-589bb4976f46', N'A book called'' Current Trends in Wiring your House'' turned out to be a shocking failure.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'83e4d403-642f-40f3-923d-2cdadb755166', N'A book is a friend.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bd518042-8028-4e70-851e-70d952217b8b', N'A bowling team was called'' lightning'' because they had so many strikes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dac0a096-148f-49cc-9ec2-f27f6f3d5485', N'A boxer who wants to get married has the ring to worry about.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b06cd607-f7c4-439e-bd62-4b0ee04ec529', N'A boy saving up for a car has a lot of driving ambition.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'960f24fe-5b70-435b-aae5-2210e721a175', N'A boy told his parents he wanted to raise goats for a living, but he was only kidding.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8413f7eb-fe86-4811-85ee-9508e43d399b', N'A boy who instinctively waves at people has a natural hi.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cb443af6-ac40-45f3-baae-5f9d57e3ae68', N'A broken watch is right two times a day.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7c5079b0-195b-486c-bcab-50aa560ddef1', N'A budget helps us live below our yearnings')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4b36583c-ba2d-45e8-9245-5eca384869c8', N'A bunch of robins followed the priest wherever he went. Birds of a father flock together.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'178f8730-5ac4-4fa6-ad75-06945bfaf534', N'A burnt child dreads the fire.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5188815f-9b07-488a-ab03-9b4aa1c9a71a', N'A busy barber is quite harried.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bf725c78-0f3a-46c4-aa43-e012b8679506', N'A butcher was trying so hard to be funny, but he just wasn'' t making the cut.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4ef73f43-43ea-4976-a82f-719bd6610d33', N'A candle loses nothing by lighting another candle.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f7283cc5-cf85-49ac-8c11-531d9231b8b8', N'A cannibal'' s favourite game is'' swallow the leader''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'94fdb41e-e869-45af-af1c-3d4ab0007e67', N'A cardboard belt would be a waist of paper.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f3ee5527-d1aa-4d05-adb5-5aa11f1f1b4a', N'A career is a job that takes about 20 more hours a week.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1edf311e-19d5-4767-8770-f354b07ecea1', N'A carpenter sat on his drill and was bored to tears.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f5febeec-b1ac-415b-afc7-82bb1683cabd', N'A case of disappearing bison had police completely buffaloed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5219cbb4-ecd7-4a1d-8c45-f21c8245951b', N'A cat ate some cheese and waited for a mouse with baited breath.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e536047c-887e-4120-8894-75ac616095f5', N'A cat found a mysterious sweater, but the mystery was soon unravelled.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c3a67b91-a154-467a-a037-4bbc82a709b9', N'A cat may look at a king.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7d2ea853-b734-42da-88d1-566afc95c13b', N'A cat that swallowed a ball of wool had mittens.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5fbb97c5-b9c6-4cd7-b4e7-298b71997b27', N'A chain is only as strong as its weakest link.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c9039313-62d5-402d-8fa8-fffcd98afc19', N'A chaplain on the sea leads the soldiers in their warship.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b6184cb9-cf40-4b60-8db4-a2f39a2c9f3f', N'A chemist has discovered a drug that will keep dogs from howling at night. Now, not every dog will have his bay.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd87577c4-97a0-4f3d-b4c9-b533f65bcf5a', N'A chicken crossing the road is poultry in motion.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f94eee12-cab7-4d3a-9ac5-6ae627a9a4ef', N'A chicken farmer'' s favorite car is a coupe.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f687836e-0b0d-40b4-9f32-528757257c7c', N'A china doll was marked in tiny letters:'' maid in USA''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b919ee1f-0e25-4a4f-a633-70e2f18923a8', N'A church fair is a bazaar experience.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bf7165b9-638f-45a4-acc4-9b87f41bd9e2', N'A church welcomed all denominations but preferred tens and twenties.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'40b1a493-8aaf-48fc-8d64-2304fb455a0a', N'A circus lion won'' t eat clowns because they taste funny.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'752ab008-7a62-4fa0-9131-f67b628c5bbe', N'A city worker who campaigned for new sewer pipes finally had to go underground.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'684ba30a-df20-4d8f-b4b0-3086dc30e0ff', N'A civil question deserves a civil answer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'779b5bc8-d332-4212-b145-4d6126c24797', N'A clean desk is a sign of a cluttered desk drawer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cc62b76d-42d7-4d2f-9083-33b339da3e20', N'A clean thief always makes a stainless steal.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f4a30ebb-eeaf-4d55-b300-063d6bf12695', N'A cloth maker'' s daughter told him she was too young to dye.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd4470db0-6b58-430b-a653-7d527ec79c08', N'A computer program attached to an electric chair would have to have its execution checked carefully.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'17d2f0c8-fa1a-4b5b-9ff3-dc51928ecd47', N'A contest held by fire fighters is called a'' match''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c9776d6c-eb4e-44f8-a7ae-5262fa9f219b', N'A cook made pancakes flippantly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8f54b583-585d-4a4a-a40b-176c99533485', N'A course offered to introduce French in five easy liaisons.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7cd95361-0e90-4cb6-bae9-16c4d968b79a', N'A cow that is pampered too much will give spoiled milk.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bd98e891-a3a7-49f6-be35-74f05208d660', N'A cowboy who was also an artist could draw fast.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4d5bde60-eae1-4b02-afa7-d5faa2128acd', N'A crazy programmer with a cold is a coughing hacker.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7670456e-2472-443a-9442-a1c3620be424', N'A cross between a puppy and a bunny is a rabid dog.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'412ae136-5586-47dd-8f8b-2e52ba59aa9c', N'A crow in a telephone booth had no money so he had to make a collect caw.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'454f348b-1bf8-4481-952a-6f40a25a3459', N'A Crucifix? Oy vey, have YOU got the wrong vampire...')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5b3b25e3-6a3f-424b-bbe5-97c6d80d90ac', N'A cutlery manufacturing company was built at a fork in the road.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'25a2e26b-8d9e-4430-8a89-a368a0ba2043', N'A cynic smells flowers and looks for the casket.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'eb99adc2-b455-4102-8ee1-44a4beaa2c6e', N'A dentist has to tell a patient the whole tooth.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'daa4f468-c307-4d15-b49b-f4ea0befa8aa', N'A dentist with a toothache could have a bad impact on his patients.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fed4797c-fd57-42dc-88c7-21c501c8b124', N'A discussion of digging a new mine shaft was too deep for him.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd2de3139-7a7b-4f02-914c-86a9c6984e50', N'A ditch digger was entrenched in his career.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ef84f0f3-39fb-4dac-83fc-830e950de278', N'A doctor drank while putting on patients'' casts. He was soon plastered.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f680ce4c-1266-4b30-9f7f-7c6a89344a8b', N'A doctor'' s mistakes go six feet under; a dentist'' s cover an acre.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b31dbd76-37e8-4a95-b0b5-2c1ed5913069', N'A doctor who became a bartender was always giving out shots!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'824c67b4-b031-4b02-845a-6e948fe6a436', N'A doctor who fell on his funny bone had a nurse tell him it was a humerus incident.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f9dbdafb-110e-4f91-9a77-5c3e07411b8a', N'''''A dog bit me,'''' said Tom rabidly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'083e765a-6467-4522-9ca8-5d1a2376ab6f', N'A dog gave birth to puppies near the road and was ticketed for littering.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dd3473b5-51c9-4de3-ae51-0bc1cb7adf67', N'A dog who played baseball always got walked.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f6364901-b2ae-4ebc-84c9-06778614ee32', N'A doorbell salesman joined the choir, and chimed right in.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e8f827fa-fdf6-4c18-ad40-1af94e34e6ca', N'A drowning man will clutch at a straw.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9d8bdb49-eb1f-407f-a21b-f28dbebe005f', N'A drummer can cymbalize the enthusiasm of a band.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'185d39f0-0bd8-4529-a535-112ade8bfa05', N'A dry cleaners had a dozen suits in court.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5fb97b20-8c61-4eda-b6ad-25bf0cbbb017', N'A dying artist painted himself into a coroner.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ade9420b-d0f1-4215-ab71-0480bdd3bacf', N'A family went to watch a 007 movie at the theatre, it was a bonding experience.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'df6b5d23-b46d-4779-88cd-2bf061b1d329', N'A farmer wanting to kill a chicken for dinner has to move faster than a speeding pullet.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'635208f1-9a7b-4c7c-8894-e07f7ec01c05', N'A farmer with a rip in his clothes has an overall problem.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4b52fb3b-436f-463d-9bca-93218057e3ca', N'A fight over love and money would be duel purpose.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c87eca7b-0d10-4578-ab17-4841bd333817', N'A fisherman hated fish and chips but he didn'' t tell a sole.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd05fd25e-816e-410d-9fe2-81cd317ae562', N'A fisherman took pain pills because of a persistent haddock.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'597927fb-eb65-4ce7-8dc7-f7c51177e092', N'A fisherman tried boxing, but he only threw hooks.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'60ea79d3-8a37-4e0d-840c-62945b5c6e80', N'A fisherman who was also a pianist was an expert with scales.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a3646311-d61e-46d7-9bde-4523c2d5c3db', N'A flute teacher is a tutor.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c82f0131-3d7b-4382-b753-21d4330c3775', N'A fool is ever laughing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b96c559e-655a-40f8-adf0-dc59e61b5e4c', N'A fool with a tool is a well- equipped fool')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ca451a35-0ff9-4769-bbd4-96c52cf8d693', N'A former doctor, while auditioning for a play, broke his leg. But luckily, he could still make the cast.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0f164481-5ce6-47ab-9957-9ddeb2080d12', N'A friend cannot be known in prosperity nor an enemy be hidden in adversity.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4c9d6a11-625b-4bcb-a2d6-319acff0e1dc', N'A friend is best found in adversity.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'960ea515-4d2f-4616-bdda-50aa85aeff6f', N'A friend told me he dug a hole in my backyard and filled it with water. I thought he meant well.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'818032e7-0f66-4b82-b859-e8badf9a53fd', N'A frightened bird dog that runs from everything is known as the Golden Retreater.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a4c1dd14-770d-48fa-ac5a-f640a8e2ea5a', N'A gambling gardener usually hedges his bets.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4137434b-ef71-4793-976b-5025b119fb3f', N'A gardener who moved back to his home town rediscovered his roots.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1130f642-8a61-42cc-b529-6071d694aae8', N'A gardening store owner who often called long distance for importing realized that talk and dirt aren'' t necessarily cheap.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'848d8e54-4eef-4010-893e-6e05ddbe822f', N'A girl a day keeps the wife away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'53d25ff2-645f-4150-86fa-e48c3c19f69a', N'A girl and her boyfriend went to a party as a barcode. They were an item.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd5d51fcd-8f80-4e3f-9695-d5392928771f', N'A goat that ate office supplies was on a staple diet.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'983ef7fa-e9fb-4f09-9a5b-bf7c6b74dba0', N'A golden bit does not make the horse any better.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a6059202-ea23-4b48-812c-80382c685f81', N'A good baker will rise to the occasion, it'' s the yeast he can do.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'537988dc-e4f2-4f41-93ac-4f196dfd0261', N'A good beginning makes a good ending.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3b204541-5a57-4211-900c-1842d42802b8', N'A good carpenter will do his work and then varnish without a trace.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'57a548f3-c393-45bb-97f9-73c8dbc25156', N'A good friend never offends.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd2eb2f68-b5c3-48a6-9063-54da393a3d79', N'A good marriage outlasts the first box of dental floss.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'748eda73-86f9-47fc-b9dc-a968d310e960', N'A good mind possesses a kingdom.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0956add9-c740-4cb9-bdd5-14038c20ed22', N'A good name is the best of all treasures.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f719bc48-7a2b-4db7-bfdb-9a7299811a19', N'A good surgeon has an eagle'' s eye, a lion'' s heart, and a lady'' s hand.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'732b0d1c-3817-4a76-b988-c998a6b22ca5', N'A gossip is someone with a great sense of rumor.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'176a18d4-0207-4e08-b4a2-fc44d28f1805', N'A group called the Balloons sings pop music.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8cf195ab-af2c-47fb-8a1c-8a025883fe32', N'A group of physicists is called a nucleus.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'52b7026c-cd15-4e7c-8a69-b9fb55ca069c', N'A group of singers wore coral necklaces.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c4d91dd8-8f17-415e-98a6-9966b1e60e69', N'A guilty conscience needs no accuser.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c0bad363-689e-4b3d-b86b-cc19f1aa6c53', N'A guy became so good with a chainsaw that he was promoted to branch manager.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c2ba904a-18c1-4c5c-9a76-72903dd415d9', N'A guy swallowed a spoon and found he couldn'' t stir.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'69fb4f5e-1a20-48bf-baa2-772219605c48', N'A guy went to a costume party dressed as a knife, and he really looked sharp.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bf4c857b-bfa2-42ac-bd55-1ba8662c65e2', N'A guy who accidentally drove his small import into a giant shrink- wrap machine had his Fiat sealed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'85ed1aaf-fb4c-48b9-879f-f6939481ef68', N'A half truth is a whole lie.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'70747bb3-511d-4303-adc6-448ce4a84509', N'A ham walked out of the hospital and said'''' I'' m cured''''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'466135e4-9e93-4ad3-a8ff-05acdcd7a7ce', N'A hangman will always keep you in the loop.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'506bbc5c-a6e3-4a53-888a-573df3ab1135', N'A hay farmer in jail could get out on bale.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3e249cab-068c-498d-9474-40770786fc6d', N'A heavy drinker of hard liquor appears to be in high spirits.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'63fa6f3b-44a7-4b3b-9a55-7db58f72e348', N'A hedge between keeps friends green.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd73f16f7-8133-4e46-b7fa-e253c6114845', N'A hermit drove to town and was charged with recluse driving.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'03e6d872-4070-4073-8de4-21722f6375b1', N'A high scoring football game can be very offensive.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4554f3d1-00b2-4d4b-a5f9-f113eb8802fe', N'A hole has been found in the nudist camp wall. The police are looking into it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'46e69e91-d5d9-4dad-b992-39de2e171712', N'A home is not home without mom')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'af0ebf03-9a43-4339-a56d-b137cdb5ae8a', N'A horse is a very stable animal.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'82e9c79e-a853-468c-9ce7-06d2e49693ed', N'A husband and wife argued over the weather, but it soon blew over.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2d70db02-5dfc-4dfb-9c29-a1df06ff28a4', N'A husband is a lover who pushed his luck too far.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2aaa3dad-d100-4148-8370-50a71002821d', N'A husband who thinks he is as solid as a rock may have a wife who wishes he was a little bolder.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'71144232-a073-42c7-a53a-7994ef3caf53', N'A janitor with a broom in hand swept her off her feet.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8b149a6d-07c7-4115-909a-0d9eaa078995', N'A jelly truck and a biscuit truck collided yesterday- police are a trifle concerned.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bdb77a92-7ac9-4c40-a2f0-0183f14287c7', N'A jerk present in a group indicates a jerk in charge.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'32796ca3-2992-4b7a-84e7-2e5cd38fa2cd', N'A job circumcising elephants isn'' t so bad. The base salary is small but the tips are big.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'63680f2f-cec7-4ba3-9f5b-b91106e69759', N'A kangaroo that can'' t jump is completely hopless.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f75c8f1e-7072-4b98-9467-41b98c065142', N'A karate school restaurant served mainly chops.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0e101301-4f75-4d6a-9ac7-2059a83f8842', N'A kettle on the stove was singing'' Home on the Range''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b1e4417d-746d-4398-b9f5-3ae68c9d0e8e', N'A king is old when he reaches the age of sovereignty.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4d855814-4e5d-4615-acc8-2411fc1abd7f', N'A lawyer asked his dentist to give him a retainer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5a77018e-2665-4f3a-8370-c584797d5c8f', N'A lawyer'' s opinion is worth nothing unless paid for.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'287e8aae-2c46-425e-be3e-35769aa3953e', N'A lawyer was defending a math teacher. He had to sum up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f6b4a933-3675-45e4-af19-3b8697819a5b', N'A leak in the back of a boat is a stern warning.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'82d5a7a5-b700-4f17-bbae-9d46d3b0d25c', N'A letter carrier career is a mail dominated profession.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c7203224-cdd8-4b71-9a61-50e2f9164baa', N'A library should have several floors because it is a multi story building.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8d99bbe4-2e95-419d-9e9e-52328405062f', N'A lie can be halfway around the world before the truth gets its boots on.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd48dc609-27db-453b-9690-11436bc6c96f', N'A lingerie thief gave a police officer the slip.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'de4b1a1a-2cba-48c8-b37b-9420c99b89de', N'A little boy called his father who made balloons'' pop''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a4349bad-2b68-4d2a-b57a-8724fbdfce0c', N'A little boy fired his light- colored crayons because they wouldn'' t show up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5731b2e9-5f09-42a6-873a-81f44ce87bdd', N'A little boy found out from his mother that grime does not pay.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'52a153bd-b148-444c-be45-8b3c57014d6f', N'A little greed can get you lots of stuff')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'72ec6240-eade-4f05-8c82-97ddfd83af5c', N'A little knowledge is a dangerous thing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a795b87e-0399-4240-a564-e9f07b650dc7', N'A little pot is easily hot.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6dd156f2-175d-40a1-92c8-7a219dbb14f2', N'A locksmith has to have a good Combination of skills.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'622cb356-933d-4985-b529-237c1ed86a12', N'A logger went to his doctor because of a problem with the lumbar.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'86f6de91-b745-4e96-ba6e-c5e5a63b6af5', N'A lot of big delivery companies are always trying to courier favour.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b523409c-28ce-4408-93b5-4fa8bc39002d', N'A lot of kneeling will keep you in good standing')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'73db369d-a926-43d4-8385-697d2e8aa108', N'A lot of trees were dying, but they needed to figure out the root of the problem.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bf94a27a-37ae-4bc7-a936-1a09b73f18da', N'A lovely lady who lost her watch became a timeless beauty.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd336c0c8-7c31-4450-828c-0d5762707088', N'A low yield atomic bomb is like being a bit pregnant.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'50d6da6a-a0ed-4dc8-9f94-222aff0ed70c', N'A man attempting to walk around the world DROWNED today..')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b7cbe8b0-5d83-42a8-b0b2-a67f766b43ea', N'A man brought his retriever to the vet for some tests and had to pay a lab fee.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0c2ab496-eeed-44cd-b8c9-b2fd854eb79f', N'A man given a watch at his retirement said'' it'' s about time''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e5cb1faa-44a3-4fa9-ba4b-5e22a5700a9f', N'A man giving a speech by candle- light can wax eloquent.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'40f42972-0d96-4571-8074-2132c8fbb331', N'A man is known by the company he keeps.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'13215149-aad7-43d6-8131-91222af0d17a', N'A man of words and not of deeds, is like a garden full of weeds.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aea5cffe-ee0d-4b1e-8ff8-0a99ac5c34bd', N'A man'' s best fortune or his worst is a wife.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e28322ec-25fc-4501-a3a5-4c2611c66da2', N'A man'' s home is his castle in a manor of speaking.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7866ede9-9ce8-46c8-8ed0-7b5aa6141127', N'A man'' s home is his castle.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'13c29e63-8de9-4336-8711-feab97cf1464', N'A man sprayed a boy with ceiling foam. He was arrested for insulating behavior.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7a7e37c1-87d1-4f8d-921c-f00f79e9f69c', N'A man stole a case of soap from the corner store. The police said he made a clean getaway.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8dc7e62e-f5bc-48f5-8b34-9738b831c314', N'A man threatened to jump off the side of a building- alledgedly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'83101311-26cb-430f-b1ea-bd42d3119e72', N'A man too busy to take care of his health is like a mechanic too busy to take care of his tools.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9d7f3890-d043-4b8d-b105-e5176cc31aa7', N'A man tried working in a shoe store, but he just couldn'' t seem to fit in.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ab4beb33-74ae-4540-828d-61ae20f3ed13', N'A mans worst enemies are often those of his own house.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'439c935a-385d-4841-aa17-7baa7313186a', N'A manufacturer that made lamps gave their employees a light workload.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fed6c9c3-dfde-4123-a9c0-2ce155a5a764', N'A massage therapist kneaded new customers.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7e73fff1-df8c-43a2-b26d-4f2114b5f9c9', N'A mathematician that couldn'' t stop adding up recently went incremental.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'651cbf08-0794-43bf-a9af-894f10863633', N'A mechanic who was also a musician was good at tuning things.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'80ce514d-090b-4071-96b0-b293b25c2702', N'A men'' s wear store has opening and clothing times.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'da28ed64-056e-4c7c-bd89-26b46d2547ea', N'A miss by an inch is a miss by a mile.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c6e8f646-ed1d-4483-bfb2-a25d036bb672', N'A motorcycle rider with bad teeth is the leader of the plaque.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd45e6017-0f0d-47b6-9593-8f47fe5bd9ef', N'A music store owner has to have sound business practices.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'52712407-7a9f-4eb9-b5e3-6093bca7b0cc', N'A music store was robbed. The thief made away with the lute.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'597de4e2-3549-4e86-bf55-eea6b35f2ab1', N'A musician went to hospital after playing too many accidentals.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b0b1a97b-4539-478b-a3cf-6371532bb6c7', N'A new batter joined the baseball team, and he was a real hit.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'10f7f4e2-cd14-443e-b7d6-e66eda2ad78e', N'A new broome sweepeth cleane.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9c87f4ad-8dd0-4e6d-972b-9a2fd4d97cbb', N'A new type of broom came out, it is sweeping the nation.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4faac087-d09c-40ca-97c4-496e38fdcddb', N'A nod'' s as good as a wink to a blind horse.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'11e92d6c-344b-40b2-883e-3fea1f881ecd', N'A noun and a verb were dating but they broke up because the noun was too possessive.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'17195ab6-9e04-413c-aa97-964e958c4cf6', N'A nuclear war can ruin your whole day...')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c3a830b4-ff83-46bd-aa33-6d711bca18e3', N'A nudist has no reason to fear a pickpocket.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4c8b2b35-895b-48c1-96d1-0b14d12792ea', N'A paid up computer is, by definition, obsolete.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2da7b062-c755-4cb1-a32f-c3e3ba72d1d9', N'A pair of loud twins were stereo speakers.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'60d8aff6-fd74-4a29-b1f1-95a68bda9003', N'A parade of horses went down Mane street.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4aab9069-56ef-48f0-a57a-62a479eee373', N'A paramedic got a new job as a chauffeur: an ambiance driver.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'10f83cb6-cb70-4512-90c6-8f4caaabd351', N'A pediatrician is a doctor of little patients.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0182c531-e8b1-4c97-a431-24bcfd38dd7f', N'A penny saved is a Congressional oversight.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'179f1872-508a-4a93-9b25-29769aaec8b2', N'A perfect woman is one that is inflated to 40 psi.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'802f1e42-8077-4083-abdd-d977353bfff7', N'A perfectly spherical pumpkin makes good pi.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'83d9c686-f8f1-492c-8919-7efbf3f12f74', N'A person who would make a banking joke is of no account.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd8316192-19b6-47d7-8cc9-d164b07bd18e', N'A pet store had a bird contest with no perches necessary.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e6aab323-7d2b-4d6e-87ba-18fe619ee64d', N'A photographer taking pictures of golfers says'' watch the birdie''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9c722838-7320-43d0-b6b7-8d48ba942a55', N'A pickle maker fell into one of the vats at work. At hospital it was determined he had a brine injury.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'edf39de0-6ffa-4137-8700-fd0651e6640f', N'A picture is worth a thousand words.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bd5b4335-9ce7-4881-ba2c-5851f6458c6c', N'A pie went for an audition for a part in a play. The casting agent told him he performed well, but it was more of a sausage roll.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'db411265-38f6-4548-988c-8e497b1c5817', N'A pirate with one hand often picked up the phone. He wanted to get off the hook.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cd7e3a0a-8d69-484d-aaa3-b567e177c360', N'A play, based on billiards, started right on cue.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'836285e3-e48b-4836-8cce-cdf29efd95a3', N'A police dog is often the scenter of a drug arrest.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'41767377-44f1-44dd-869e-7c5894af1cec', N'A politician decided to resign on the day of an eclipse because it was a dark day.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd805d910-c1bf-4648-b754-d124156b6524', N'A politician who had been an astronomer was always saying'' no comet''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7fae5d77-9a9a-473e-b6cc-84a39a7d0150', N'A politician with a bad back needs lots of support.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6cd7b5fb-6889-40b0-bc81-12d714672f0f', N'A pop singer bought a new house for a song.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c71b087a-fbef-4cac-ad48-826042da3f70', N'A preposition is a poor word to end a sentence with.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c55f41b0-fda7-4a16-a637-5510f657a068', N'A prisoner'' s favorite punctuation mark is the period. It marks the end of his sentence.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2bfa699f-f020-482b-90af-abaaaeea6142', N'A problem can be found for almost every solution.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'08288506-9b99-479a-a5a3-0644881f76c3', N'A problem shared is a problem halved.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'db873156-e315-48d4-932b-fc80c19a05f2', N'A professor without a pointer may find that his lecture is pointless.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1b3bd621-a7c0-4532-b933-e51d089e9829', N'A pun is its own reword.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4703a890-94cd-4625-855a-d87f18361cd8', N'A racehorse'' s life is always on track.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6d5c8a4e-b881-42c9-b38b-fe2c9b9350f9', N'A racer who was also a golfer really knew how to drive.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'474ecd13-2f5e-41bc-84c2-f193723b5896', N'A reconciled friend is a double enemy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7f05ec04-a32a-44ac-a18e-f8708398674b', N'A reformed arsonist was in confession. He began,'''' Bless me Father for I have singed.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'51d5d6a2-bb32-4d8f-b7f9-c8ce98aa8b83', N'A reporter was at an ice cream store getting the scoop.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4d3bb175-fcaf-4286-bac6-79c91c1dfa60', N'A restaurant owner gave his cooks a stirring speech.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'01082c31-cde0-4fd4-afdd-d5cc4d34783b', N'A rising tide lifts all boats.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ca5d74f4-2c8e-4f1a-900b-7008cf36645c', N'A rock band set up on the exchange floor. They wanted to play the stock market.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1ab63e24-a916-4091-a706-9468494a318b', N'A rolling stone gathers no moss.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a80217b1-350b-4b82-81b9-4fbf94021df1', N'A rotten apple injures its companions.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e4d50d90-e10f-45cb-b45a-ed20d3aabb67', N'A scientist doing a large experiment with liquid chemicals was trying to solve a problem when he fell in and became part of the solution.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ae43c74e-7b78-4539-9e03-87cc654755f5', N'A scientist who wanted a tattoo got a skin graph.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dc871113-a4ac-4f87-85a4-8b525219339d', N'A second chimney is superfluous.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f98fc86a-6b3e-466b-a43d-5e2276f241d1', N'A seminar on Time Travel will be held 2 weeks ago....')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2439cd8f-f47c-4ab1-92ab-1c5dbd885df0', N'A short cut is the longest distance between two points.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a980a326-3438-43cf-89aa-ffed0c15e6c7', N'A sign at a cemetery reads,'' No Trespassing, Violators Will Face Grave Charges''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a2f8dc8e-805d-4ddf-9b62-3702256846f8', N'A six foot poet stanza very tall.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0747a805-5358-4e0d-9191-fc6bb37ab08c', N'A skier retired because he was going downhill.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0ade222e-b62c-45c4-8579-56c8e56fa905', N'A skier who loses a race on a cold day will have a frosty disposition.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'630101ce-37d0-4902-be12-b1c061d4279b', N'A skier who makes it to the olympics finds that it is all downhill from there.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2079413a-4f94-4ab8-bece-45e09d24cb4f', N'A skunk fell in the river and stank to the bottom.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e52cb660-1cce-4b49-86d4-4e2533f9d4a6', N'A small boy swallowed some coins and was taken to a hospital. When his grandmother telephoned to ask how he was a nurse said'' No change yet''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'57aa872a-5945-4cf3-933c-642f7ebcd2bd', N'A small boy went to the counter to pay for his lunch but he was a little short.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'251dd3c5-1abc-4c98-81d7-df1bd645a22c', N'A son is a son'' till he gets him a wife; a daughter'' s a daughter all her life.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'916b9884-cf47-4087-8899-0e518481a4bd', N'A speaker at the firearms convention had to rifle through his notes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'33c8b9f5-1e35-4fe9-a58f-eac3701366d4', N'A sports match was attended by many scores.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'37a800c3-7a0a-4145-a168-76c9d37ca2e4', N'A staff is quickly found to beat a dog.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a028cb24-6fa7-41da-8f05-77e2b1180a35', N'A still tongue makes a wise head.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b71f502d-7410-4d52-ae04-4c6c7c3f9a73', N'A stitch in time saves nine.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'671c5130-727d-4a3e-a071-d7cf6920ed98', N'A store is no sore.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'05b1a76e-f767-4e4e-a0ea-bd9921971199', N'A streaker was found dead this morning. Police say the details are quite revealing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9dcd8033-9441-4501-91eb-7d6c07bdc97b', N'A student limped into class with a lame excuse.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'040454fa-4df9-46bf-a6f3-c322f65a711f', N'A successful diet is the triumph of mind over platter.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e7450996-f058-44f6-9b84-1eb9c26324b2', N'A summer is a mathematician.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3484ff6f-8d70-457e-aa14-7a7d8fc3d53a', N'A surgery nurse was demoted for being absent without gauze.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8738142f-0e13-4edd-9f29-4f4ee9b13e8a', N'A swan'' s favorite salad is Cobb salad.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'782a3b04-1836-4f86-bb73-69ba2dde25a3', N'A tailor sometimes decides to suit himself.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f68bbbc7-d5a9-467d-8c6b-2c250cd0a547', N'A tangled bell ringer tolled himself off.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5a2ea7f8-1588-48ef-805b-4c963eb3c702', N'A tatoo artist has designs on his clients.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4a2aebc5-bde7-467f-9fe0-0b540787e476', N'A tattle tale pig is a squealer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3e0f4201-def5-4839-a77e-f43de74af79a', N'A teacher having a tough time longs for the end of the school daze.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a26ffad0-8b9f-4d91-82f5-7d6cf04763fe', N'A teacher used his index finger to ask a lot of pointed questions.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f0f4ed30-be75-4458-a87d-0e7f9930d27f', N'A test- tube baby has a womb with a view.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'930960a6-a448-4544-be02-15584937689d', N'A thief fell and broke his leg in wet cement. He became a hardened criminal.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'efe523c3-9ef1-427c-8726-b321cb0b423c', N'A thief who stole a calendar got twelve months.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5c726d55-de4a-41c8-9fff-3fd6c3c0814f', N'A third- generation clothes designer had it in her jeans.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'106844a0-2fe2-426e-8b06-40dfaabb919e', N'A thousand dogs were stolen from a pet shop on Saturday. Police say they have no leads.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e6467fc3-f85e-4648-9e35-b237b56d1be0', N'A tire store loves a chance to Roll out a new product.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a5c9dee4-f039-4ea8-9969-4fcf2e70ca9f', N'A tongue of a fool carves a piece of his heart to all sit near him.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1b0f6880-e5b5-4f33-9800-44daa25ff80d', N'A train load of paint derailed. Nearby businesses were put in the red.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bf4d07b5-2224-4ca3-b670-dea00d713e03', N'A true friend does sometime venture to be offensive.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b6cb8236-7bbb-4f05-bd24-6a0a44d352dc', N'A truly wise man never plays leapfrog with a unicorn.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0f7b590a-ac3e-4cca-8eb2-c380f31a4ea0', N'A veterinarian knows how to make a dog heal.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f70fcd58-ee8e-489f-ba8f-d0135ea921d2', N'A waist is a terrible thing to mind.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e9ab8422-c735-4084-a1e0-8912d103a30f', N'A waiter who played tennis was great at serving.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'40c3fc48-7b9b-4f57-ab06-f3ba673288ae', N'A watched pot never boils.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'60b3ec75-6496-4bbf-94da-8fedf34c9b29', N'A waterbed may just be the vinyl resting place.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'38bbe676-d05f-423b-9a40-40b2dcf4cf88', N'A wife lasts as long as a marriage, an ex- wife for ever.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c3af8534-e646-4e9a-9127-5104519cc033', N'A wig van blew up on the motorway- police are combing the area.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8c0833b3-9703-46fc-9975-89008ea116e4', N'A will is a relative thing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ca41cd74-7bfd-4cc8-8ce8-7ced69062ac2', N'A wise man changes his mind, but a fool never does.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'abb65e8e-d101-4ee1-ae1b-ce942dafe932', N'A woman cries before the wedding, a man after.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6bf6f22b-93da-49bc-9481-70f6ad348a5a', N'A woman'' s work is never done.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f88486a6-4d97-4630-9d16-4d2e392faedb', N'A woman who became queen considered it her crowning achievement.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a76863bd-6b4e-4cc4-a67d-3cef8ae7695e', N'A woodcutter'' s world revolves on his axes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0c124601-caa5-4266-b4f0-30116881a3fc', N'A word spoken is past recalling.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9b089267-2921-4bae-b6ed-b266a4a946f5', N'A young corporal dislocated his arm during a battle but kept going. You could say he was shouldering on.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fcccdfb0-af95-46b1-bafd-ff8a6a248617', N'A young man married is a young man marred.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b3c08b2b-5152-47ba-a2e9-819f4e7417ea', N'A young nurse was nervous about giving vaccinations but gave it her best shot.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4b80d35a-57a6-4643-a1f4-40993c5df6af', N'A young sailor thought all of the waves were just swell.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'097499e1-e9b4-4abc-bfc1-3cc0ced8c893', N'A. 45 beats a royal flush EVERY TIME')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ddcc97a4-df0a-4b68-b12b-58e2e0434c3f', N'AAAAAA- American Association Against Acronym Abuse Anonymous')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8bda510d-e89b-47dc-ab74-8c4b38595559', N'Absence makes the heart grow fonder.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f3dd576c-a97b-4245-8f36-04b757d87f5f', N'Absent the fungus, the story had no morel')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c322c212-1f81-4256-ab69-6ed8f1a1e620', N'Abstinence is a good thing if practiced in moderation')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'230bcef1-1e03-4ac5-a110-b1c9715b71f5', N'Abstinence makes the heart grow fonder')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'82f95089-967d-4bcf-9ad9-d29fb9a293b9', N'Acid absorbs 10 times its weight in excess reality.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'71ccd4aa-e634-43ad-9c13-a9d178253f4c', N'Acrobats are always doing good turns.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'942cb0a3-ef82-4a84-9333-3f7cb846d8c1', N'Act your praise, not your shoe size.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2d8eeadf-9f92-468e-9588-58ad55cd3b47', N'Actions are usually right, but the reasons seldom are.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'06d0bb63-65d1-41a5-ac5b-f39074e71489', N'Actions speak louder than words.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'62e560dc-5eb0-4c5b-b8b6-d27aec29f2fd', N'Actors are cast through their good and bad stages.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2c2bdf81-27a8-49d9-846a-338b6a001516', N'Acupuncture is a jab well done.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ef63020a-7ad7-48d7-9b86-bf2c97f9e7e0', N'Acupuncture: a jab well done.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'71bf89c9-e944-4062-86e7-1002e0c6f1fa', N'Adam ate the apple, and our teeth still ache.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'df857cc2-38ff-497c-94dc-6541a693c67e', N'Admiration is the daughter of ignorance.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9590c893-701f-411d-ba23-b36838f8a39e', N'Admitting a mistake:'''' Like the orthopedist'' s patient, I stand corrected.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e1adbeb4-3173-4257-896d-bf357f738fe3', N'ADVENTURE: The land between entertainment and panic.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd8d73a3a-401c-451b-9b70-6ec2ada1a35f', N'Advice most needed is least heeded.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'36439e74-1072-4d15-bb4a-6ecb1ecd676f', N'Advisers run no risks.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7a61acb4-8683-43be-8dd2-374349d34039', N'After 5 years with the same chiropractor, I moved and had to change doctors. It was quite an adjustment.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f99e3aec-f8ed-4872-89c4-239e68c1a613', N'After a cold winter, will deciduous trees be releaved?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'279e5524-c02a-4b51-b76e-90e18beecbca', N'After a day of changing her triplet'' s diapers, the new mother was feeling rather pooped.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd397d13b-7607-47bc-8b38-a4019178cf8d', N'After being treated by an optometrist, the bird seed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b5651a0e-d573-4d60-a563-5504a002c007', N'After burning a batch of cookies a baker felt very crummy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'59e67671-b090-464b-b7e1-6e0de6d139a8', N'After coming to work and play musicians come home suite home.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8417b954-a099-4499-a9cb-5a5d9e1efdf7', N'After dating the goalie on the local team for a while, she realized he was a real keeper.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'98323962-9726-46f4-bc9c-81a8b4b6ab19', N'After delivering a presentation last fall, I sent a message to friends who were unable to attend. The report concluded:'''' A good time was heard by all.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'960ca6a2-8ac1-4de7-ad75-48b3e15eca89', N'After getting pranked by his friends and getting hit with a basket, Aron knew they had a wickerd sense of humour.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'99962390-03f5-4544-a4f6-3ba108021e39', N'After Gus gave his girlfriend a 3 dollar box of chocolates for her birthday he got nothing but snickers.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'12d12f7f-9f73-4097-b646-069aef3a6422', N'After having a knee dislocated and an elbow fractured in two barroom brawls Bradley should have learned to stay away from those joints.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9eabcadb-cc9b-454b-a95f-0ce7d4829690', N'After he bought a mirror he became very reflective.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ffaec129-cd1f-4657-bc85-ff8ffa1825a9', N'After he bought his two- year- old a felt pen, he was a marked man.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3001b39d-7024-418b-92af-bcb9c8323673', N'After he carried a gun in his car the engine was soon shot.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'992e5841-8675-4c4e-9d07-2589fdb48815', N'After he invented the light bulb, people saw Edison in a new light.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bb46d042-a4ce-4217-a542-c7b9720d7749', N'After Jimmy swallowed a live earthworm, he sat waiting with baited breath to see if he'' d get sick.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9490981b-c345-4ea8-98dc-0813a75c2938', N'After Junior swallowed the watch he had to wait to pass the time.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4a6a2b2d-5940-4f16-a3fa-1f221fa2a064', N'After selling a shipment of salt the salesman said'' let'' s shake on that.''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9170bbcc-3fc0-410e-8608-31289e4458ab', N'After that poisonous snake struck at me in the Arizona Desert I was really rattled.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'79298b6d-ffe5-43e3-afb5-3b2c91606934', N'After the lawyer flushed the toilet, it went to the suer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2714f63c-d5a3-42f6-b0e4-8100d12f1c09', N'After the six campers were discovered missing from their tents the state police began to canvas the area.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'86759538-41f6-4fe4-bb81-b8022915756c', N'After the sniper attack at the symphony softball game, there were no men left on bass.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'232c7386-b5f3-4b64-b5cd-747dc60f9615', N'After they had it out in the boxing ring, they called it square.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a450e699-8c4b-4e00-8171-83012d342e9e', N'After winter, the trees are relieved.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'330dbc4f-f0c0-4db2-8216-24c6e1f9c54b', N'Age and treachery can always overcome youth and skill.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f6cb6d16-533e-4931-b8f4-95578110107b', N'Aibohphobia: Fear of palindromes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd02a5b57-69d0-4042-836a-8bf71ef76992', N'Airline pilots make many friends in high places.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'17aac87e-209a-417f-9cc4-cb48f973dffd', N'Alcohol and calculus don'' t mix so don'' t drink and derive.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1cc18cd6-569d-478f-82ff-0264ad99a6a8', N'Alergy sufferers are itching to get through the hay fever season.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'13e33fb1-014b-430b-8c76-5b57c61604bc', N'Alex, I'' ll take" Things Only I Know" for $ 1000, please.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'49fe34f4-aec9-4a82-b0b4-27166b4fc716', N'Aliens are lovable because they'' re so spatial.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9b284849-bdc1-496d-aba6-cef6552e63a4', N'Aliens can easily understand each other because their language is universal.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c92b088d-5f70-4160-bd75-2b84b54d0ef7', N'All are not friends who speak one fair.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ba577c0a-a78a-4915-8944-398b9788f9a2', N'All are not thieves that dogs bark at.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ee9dbaf1-5619-4f7c-85f0-b501ae6b95c9', N'All cats love fish but hate to get their paws wet.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c7ec429d-c496-4d45-b1b0-e5ecdd7c6879', N'All good things must come to an end.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'52aa6c3e-db53-424b-b4ea-7f0aafa79f94', N'All is fish that comes to the net.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'919820fd-af03-4983-a012-5c9a47bef824', N'All is not lost that is in danger.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a127f1d9-7c87-4dc2-addd-f39bdf32d014', N'All roads lead to Rome.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e67dfbf2-dfce-4390-a7a8-47721aed3484', N'All'' s well that ends well.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c1c91522-bab1-4d69-a152-f28fbad1772a', N'All students in Helsinki go to Finnish school.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5be0ff2c-cde6-42eb-beb8-c72449c2a3b6', N'All that glisters is not gold.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'54395bed-58c8-4790-a3b3-458bf9424e50', N'All true wisdom is found on T- shirts.-- And in taglines.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'69d66208-c223-47d0-8d19-5eb5060d1a9c', N'All women are automatically born with a shopping disorder')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ded61765-c9fc-45fd-8a63-cb8d0ecea3e2', N'All work and no play makes Jack a dull boy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7ffc5406-620b-4fe7-a070-4698fe40a7cf', N'Although he perfected his comic routines on the mainland, his best audiences were in the aisles.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd1e8318e-7c12-4d77-9e6c-817d5461b4de', N'Always remember you'' re unique- just like everyone else.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'14c790aa-5b33-4f90-9c54-01ccfc3ace25', N'Always smile. It makes people wonder what you'' re up to.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'22bc703b-06b2-4091-bcae-659132295f3e', N'Always trust a glue salesman. They tend to stick to their word.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd8936701-aafd-41bf-b0eb-9572bcffffdd', N'Am I ignorant or apathetic? I don'' t know and don'' t care!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7a869b31-5b76-472c-b74f-248ccc57cfee', N'Ampere was worried he wasn'' t up to current research.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c4c92766-420c-40e5-a136-a84a168475b7', N'An accountant for a restaurant has to be sure the books are not cooked.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6be031ff-a3ec-4999-9041-d6480c5a7389', N'An address.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bc7b5c57-f938-4ca5-bfa6-c4f316d998b6', N'An alien landed at a soft drink company and said'' take me to your liter''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4fa8f118-ac46-4dca-979c-5285c9d0e46e', N'An apple a day keeps the doctor away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0fa9e39f-3a8d-4770-87aa-3f8c18b99bb0', N'An apple farmer with poor yields has to get to the core of the problem.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c9043429-45aa-40fe-a0ff-d8444d4a42eb', N'An archaeologist'' s career ended in ruins.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2996d705-b571-4080-820e-d5dc16a882cb', N'An architect knows how to make a long storey short.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd91f1f56-2f77-46ad-a1ee-335beed94fbe', N'An argument at the Bomb Squad convention ended in a blowup.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'adf23f48-2ec8-4f79-bf1a-c7d2bc5bab56', N'An argument over puppy selection is a pique of the litter.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'37a37986-0275-458e-9653-8040d10ec4ed', N'An army officer is a position that some people shoot for.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd70c0f26-4eec-409e-8003-6a9632fabf15', N'An artist with the military kept drawing enemy fire.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dd40149c-6b5d-4432-b76a-012802d85c1b', N'An astronaut who fails on a weightlessness experiment must be aware of the gravity of the situation.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'36eeae4f-c652-4bb8-8c8e-887fb3fad219', N'An astronomy column in the newspaper would have a lot of space devoted to it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fb404990-6089-48e3-b03f-991945aaf62e', N'An egotist is a person who is more interested in himself than in me.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'00126221-0834-4df4-a3af-1b7d40d7a456', N'An electric company is always looking for high energy employees.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b9d74ae8-8c31-422a-9b1e-7bdd31d85bcb', N'An Electrician'' s work is well grounded.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b030658b-e3bb-4a42-b8ea-ba1f2a2c443d', N'An elephant'' s opinion carries a lot of weight.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'76214071-634b-4545-99cf-1980737675ca', N'An empty vessel makes much noise.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c9afd708-a153-4c1f-9d7a-f2e900de39d1', N'An experienced waiter can give a lot of good tips.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ecc2a376-8c40-4ea7-adba-d229cff93acf', N'An explosion at the meat packing plant caused quite a meatier shower.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1ce9135c-c7fb-4e54-8f8c-07703c4c0340', N'An exterminator in Idaho announced that he invented a new spray, one application of which will remain effective for a full season.'''' Of course,'''' he warned.'''' I'' ve still got a few bugs to iron out.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7304216f-f34d-4d3f-b83a-e2dfa55386a3', N'An heir is someone with a descent wage.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e78de2a5-ab25-4240-ac7a-1226cb32cb84', N'An hobbituary to Tolkien appeared in each of the major newspapers, all had a familiar ring to them.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'187079d5-92ba-44b3-98dc-7bdc85b960c6', N'An hourglass is a waist of time.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b8647cfd-daaa-4861-9943-a363a9e6dd43', N'An idea is not responsible for fools who believe in it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'201306fa-9979-4dd8-9689-8640fbcc23ae', N'An illiterate fisherman was lost at c.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'83af3027-139e-4b35-8d34-1f4c674f4e56', N'An offer of a free lunch was not enough to entice Freud to make a presentation at a Behaviourist Convention. He explained,'' There was nothing on the menu that was oedipal.''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b2569cda-a3a8-4f79-a10f-bb96ed19609b', N'An office with many people and few electrical outlets could be in for a power struggle.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4db57a96-8092-404f-949b-93075fb95ca9', N'An old lady once asked the dispatcher of a local trucking company if they could ship an antique mirror to her sister in Toronto. The dispatcher says,'' I don'' t know madam, I'' d have to look into it first''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dda63502-9250-429d-8804-2fff4aeb9310', N'An old professor who was never on time died and was called the late professor Brown.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1ffc64f4-166a-442f-92a3-40498ca95ad1', N'An old spice wholesaler is a seasoned veteran.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8a303c03-5ac0-4eaa-aea8-3610bb58437d', N'An optometrist told his patient:'' It appears your vision is improving!'''' Really?'' replied the patient.'' Must be the luck of the iris.''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'eb17c78d-dc22-4c33-8de2-8a83f98a593b', N'An ounce of discretion is worth a pound of wit.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bf652f0c-3846-4ce4-b6c5-b612d3fc037d', N'An ounce of prevention is worth a pound of cure.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a843d06d-e34c-44e1-b18a-98c68d5028ed', N'An undertaker can be one of your best friends, he is always the last one to let you down.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2ed76e45-c176-4023-b264-3ed530a4e5f6', N'An unemployed logger is a would worker.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd59bcdca-b5ab-4ed9-9d40-77baee048e1d', N'An unusual medical book is one which has no appendix.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3ea87ea0-bf80-42fa-9870-1b902c824125', N'Anarchists of the world, UNITE!!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4d62beac-3591-4373-8ead-aa0a42b5633b', N'Ancient scribes who hired Aztec writers had to make sure the Inca was dry.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'19401bae-c7d0-4dcd-842a-a6f7c513ffbe', N'Ancient vessels lacked stability because there were no rudders in the days of yaw.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'24ac3d5c-b071-4d40-a0d9-ad4560b0c4f8', N'And Adam asked," What'' s a Headache?"')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ebbebdcd-6c50-4a28-a19e-eb3dd7464973', N'And Homer saith unto them," D'' OH!"-- Bart 17: 3')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c890358f-8b19-443d-aafd-6e57c8b571bd', N'And on the seventh day, He took an aspirin.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c82654f9-d7d2-4ceb-93cc-a75d5d4c2b7a', N'and that, my leige, is how we know the Earth to be banana- shaped...')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a334a320-70ca-4caa-918b-e7e9d191a42f', N'''''Angel dust? Me? Never touch it!'''' Tom snorted.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e3ad4ec1-b4bb-4eff-8b22-e2bded25ee82', N'Animals are slaughtered for meat at a tender age.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8c9e6b95-5e90-4937-9429-7aadc400a0d0', N'Animals that tunnel in the soil have to have an escape root.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'52dc450f-2f6a-4891-b603-c2e30f618ceb', N'Another batch of shells for me! Tom clamored.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2759c083-6cde-4981-9102-b0beacbb9430', N'''''Another plate of seafood for me!'''' Tom clamored.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8a702eab-93cf-4a4b-931b-d819b3806979', N'''''Another work week begins,'''' said Tom mundanely.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'33804ce9-6730-43e9-a1a3-eb97698cca31', N'Answers: $ 1. Correct answers: $ 5. Dumb looks: Free!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3fc1a242-83e6-44d9-baa3-9b3ba9a0616b', N'Anxious about the future? Psalms read every Sunday.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4b91c919-7448-4284-904d-59b0800bc6bc', N'Any given program, once running, is obsolete.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bcb4cc98-e23d-48cd-816f-d9c53de4e17e', N'Any golfer will tell you the gospel truth. Your next shot always depends on the lie.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b8caed70-529b-4890-9893-308ff21942b4', N'Any key will commence hard drive format. Continue( y/ n)?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd9483119-4688-46c3-971e-a35b6153058f', N'Any sufficiently advanced bug will become a feature.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'901a48ab-d377-4cb8-b563-5905ecabde3e', N'Anyone should know how to put a saddle on a horse so it won'' t slip and cause an injury. It'' s a cinch.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4ee3c6f0-4c23-44a2-b97a-577c97ff7b79', N'Anyone who remembers the 60'' s... wasn'' t there.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8929030c-c351-4f86-ab75-f09b330d3b7b', N'Anything good is either illegal, immoral or fattening.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a1185ccc-4b5e-40e5-812b-4516b4d8b4a3', N'Anything not nailed down is a cat toy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'969f4b3d-a0f4-4f54-b5f7-1e2f73935ea8', N'Archaeologists working at night need lots of eon lights.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ac8d9ee4-d87e-49d3-aa11-936e98721d14', N'Archimedes set out to invent a water pump and screwed it up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9509170b-f805-42d9-9dc8-2742a4c730ef', N'Archimedes was buoyant at the thought.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a1c93f28-e379-47c1-8c47-66448ac2bdf7', N'Are evil wildebeests bad gnus?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ca351d64-d80f-484a-9bb3-a83c34d365c0', N'Are giraffes good pets or are they too high maintenance?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'289eab7d-91f3-4f0d-a68c-60d77f430401', N'Are Philosophy papers graded with Marx out of ten?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'04d56924-02cc-47a0-8c75-f2d8bbe600f9', N'Are you a Klingon, or is that a turtle on your head?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'377ab3d7-bcd2-475f-a7b2-0a6ac64dd1b0', N'''''Are you all governors?'''' Tom asked, bored.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2b84cbf5-41a2-4285-99a6-abf76429d578', N'''''Are you homosexual?'''' Tom queried gaily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b9094e98-2a25-4323-b0a0-68efc37ed36d', N'Arguments about the weather will eventually blow over.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8c110001-42d5-4bdf-95d4-d8e2096b1886', N'Armadillo: A mouse built to government specs.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dcde54c3-374e-47b5-abf9-1f71283f5be3', N'Army dentists make a good drill corps.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2643089f-e492-47bf-9384-6b145a08e8a3', N'Arriving late, Senator Kennedy slipped on a banana peel and fell in a heap, resulting in a humerus break in the midst of the subcommittee'' s intense discussion.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f8ea044d-153c-4662-acfb-b1be1572d124', N'Artificial knees and elbows were developed during a joint project.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'75a915c5-7db3-42bc-b3a9-31a000827357', N'As a young boy, Brutus'' mother often cautioned him not to run with Caesars.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0c7e2d6b-fbae-46e3-9e85-bfea801642ac', N'As anyone who has ever lived in the area can tell you, life is different in Montana. Since golf courses are often placed in areas ideal for hunting, most golfers carry a hunting rifle in their golf bag and when the opportunity presents itself combine their two favorite pastimes. Recently one such sportsman got lost and had to stop for directions asking,'''' Which way to the lynx.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'34ca09e5-b737-4864-b2ab-7edf8314e3ec', N'As confused as a baby at a topless bar.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0d47c736-a74a-42c5-9d64-54fb04ded851', N'As I revived her using mouth to mouth resuscitation, in spite of my lisp, I couldn'' t help noticing her beautiful breaths!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'00741945-e2b0-4d9e-9cbf-6d782213e2b6', N'As Sir Galahad lifted the sacred chalice, the bottom fell out. He had indeed found the holey Grail.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'79189032-d73d-4afa-877a-912a08c58ae6', N'As soon as the airplane was invented, things were looking up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fd131f56-97a1-488b-b6d2-a1ab25cdd994', N'As the old cock crows, so crows the young.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'04f09100-339a-43de-9cfa-b9bcd5e2d2af', N'As they looked at the recreation of the Greek temple on Rodeo Drive while a freak ice storm was occurring, Emily and Henry were astonished by the very unusual frieze.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd2a91a78-972b-4e83-b16d-28a8df4289d7', N'As to how to play snooker, some people don'' t have a cue.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f319ecc5-d284-4126-9c08-7bf4913dc7cc', N'As usual, the chief meteorologist blustered his way through the staff meeting.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'35b1be84-caea-47a2-a6b4-c0658f237a6e', N'As you make your bed, so you will sleep on it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'30cdfb70-ceb1-4060-b940-0700039084cf', N'As you sow, so you reap.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd8ad21fc-8939-455b-a748-2f10ed0e3bae', N'Ask me about my vow of silence...')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e4395e9a-20b7-4ed9-b009-54bb75009e55', N'Asked by a waiter if she would like a drink the lady replied'' wine not?''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c9d66c29-7892-4ed7-9875-614d10c91fff', N'Astronauts like to do launch.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'171809de-54cc-4040-8d8c-a1fe4599b098', N'Astronauts work in a nice atmosphere.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'191f9e5b-23d9-4157-8acb-5589e4c47e05', N'Astronomers often have their own private viewpoints.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4a6a2950-66ee-4461-b337-3d131a80f214', N'At a conference, I unexpectedly encountered the wife of a former client, whom I hadn'' t seen in 20 or more years.'''' You haven'' t changed!'''' she exclaimed.'''' There'' s plenty of time for that,'''' I replied.'''' The dinner isn'' t until this evening.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'18b7d477-bcab-4031-bb5e-709f0386d859', N'At a flower show the first prize is often a bloom ribbon.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9788db34-09bb-4d83-91aa-fec4d0da342d', N'At a pet store:'' buy one dog, get one flea''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'68b96fc3-2b02-43ae-bfa2-6814d3c6627d', N'At first he was was a sprinter, but then he decided to run for office.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd42f646e-0ba0-4c4d-96ea-345d82f025e0', N'At first I hated my haircut, but now it'' s growing on me.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'82b6e683-678e-4a65-ba86-8011cd2f375d', N'At seven foot six he was a great basketball player and everyone looked up to him.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'466f970d-9a99-486d-8c7f-e9f321245f58', N'At shearing time there are some sheep thrills.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'32633fa8-e735-4a1c-8c15-03e161d8f3f7', N'At some executive meetings there is a chairman of the bored.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7eb4cb1d-d426-452e-9c03-63fab65edb23', N'At the Oktoberfest the sauerbrauten was very good, even though I had been expecting the wurst.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0972fe5a-ae1d-44ba-94fc-76d37ea06bf1', N'At the petting zoo I saw a sheep scratching itself. Turns out it had fleece.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e18f7009-da6c-4589-bb8e-3beb40ba4b7c', N'At the urban renewal site, contractors were simultaneously tearing down and erecting. It was interesting to watch them razing all those buildings.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7f1796a9-f13d-4d65-a8c9-332677ef757f', N'Attention staff! The clothes keep falling off the mannequins in ladies'' wear. Would someone please redress the problem?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e636020a-c157-48ac-a74e-bb04abbdf02b', N'Audubon said he'' d have to wing it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b6ca5a34-23b4-4084-b4a7-d7c65b4b581d', N'Authors can be very PENsive.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'90f2692d-8833-4d92-acc2-f4c9f7383e1b', N'Avogadro expected a large number to attend.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ee5af3e1-9ee5-42b9-b23f-285e1123d468', N'Avoid evil and it will avoid thee.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ca1a08ec-741a-4fc5-9b26-e4370dafcda7', N'Avoid the 5 o'' clock rush- always leave work at noon.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ad43ed6e-f077-49db-9499-b57e2fc440ef', N'Avoid the pleasure which will bite tomorrow.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b69953e0-a7e4-4fb2-90ac-8734ce549c0a', N'Away goes the devil if he finds the door shut against him.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'20b3cf5e-5818-4c73-85ce-094483f30dbd', N'Back when the news was written on clay tablets there was a lot of breaking news.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2bea44af-dfba-4ee1-973b-4b310556ee08', N'Backup not found:( A) bort( R) etry( P) anic')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3160fbb1-8d2d-4ccb-a0da-38cfc54a5d9a', N'Backups are usually a good thing unless it'' s a sewer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'66e2d82b-96b4-4937-8c6d-d40ea711711c', N'Bad is the best choice.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3172a19f-3b62-4a92-a490-e78c8852cfee', N'Badminton players are for the birds.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5d077fed-c920-4f1f-b148-a2a009443e4b', N'Bakers have a great knead to make bread.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f3549677-a90c-4759-836c-9f4c0173d8c0', N'Bakers trade bread recipes on a knead to know basis.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'548936d1-fea7-40aa-80e2-f8536f0c21bb', N'Balls! Tom said roundly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c7d9c6f9-a782-4389-bd08-03c1e033d556', N'Bank Rule: To get a loan, first prove you don'' t need it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'868e159a-819c-490c-9e37-2edcef9aa014', N'Banning the bra was a big flop.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3a2dbb27-087c-4925-ad78-4f9f261eb25f', N'Banning Viagra was a big flop.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'32583505-70b9-4416-bb55-808a0f4ab068', N'Barking dogs seldom bite.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'38d72ebf-ad43-4f66-a473-cc54b475a7b0', N'Baseball is known for its pitched battles.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f3404e58-07a4-400b-8ced-94955b13ee70', N'Baseball on a foggy day is all about hit and mist.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9f2737f5-2514-4b31-94f5-ac518646ec83', N'Baseball players are expected to perform well right off the bat.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'74a1dbb7-7922-422e-9738-44e6d7eb4b51', N'Baseball players have to stay in line or they will be afoul of the rules.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8a2e65d8-f65b-442f-ae3c-a2111e3d2462', N'Basic Flying Rule# 1: Keep the pointy end forward.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e93b998a-7488-4f80-bc15-3f2b4983738a', N'Basketball players are always bouncing ideas off each other.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f5fe0c46-071e-469e-99eb-de0f2fe2f3c6', N'Bathroom scale: Something you stand on and swear at.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0d862e5e-f874-498b-a212-9a9376360fb2', N'Be a friend to thyself, and others will befriend thee.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bea49942-4cb2-47f2-b695-0c76b52b9de0', N'Be careful what you wish for, you just might get it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'195f0fe7-8f35-441c-8b9c-ce4a6541a2e9', N'Be kind to your dentist because he has fillings too.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'831965a2-2920-4972-906e-4085c178fef9', N'Be reasonable..... do it my way.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c67ab009-e005-4353-892a-eaf1ce2e87b0', N'''''Be still my hart'''' she murmured, thinking how magnificent and stag- like he was.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f893fbbc-7e04-4394-8280-5f25a91f453e', N'Be the soul supporter of your children.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'39041f08-6c1a-4e87-8eff-1043418795b4', N'Be true to your teeth, or they will be false to you.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cdf69ac1-3ce2-4672-8630-98fff3d45efb', N'Beats me why anyone would want to be a masochist.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1ee37dce-01a4-420f-8ae8-d0d71936f656', N'Beautifully manicured lawns are highly sod after.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'68588c5f-290c-4356-9ea1-a1d41f3fc843', N'Beaver rallying cry:'''' River be dammed!''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'14bde785-8a7e-40a7-b7c5-511b3588084f', N'Because 7, 8, 9!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f46b188c-7583-4570-a4ea-c2796ba50608', N'''Because'' is a word to the whys.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c76ad0a6-bb3b-45bf-9f76-61cbdd29da3d', N'Because it lost all its contacts.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'975c306a-7c8e-4c24-9708-d547070957c1', N'Because the champion angler instructed his pupils to cast their lines where the river runs through narrow chasms, they called him the'''' fissure King.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'09e8bbb5-cc3e-49f9-8ad9-5f98ae450195', N'Because they moved into an apartment, they didn'' t need to cut the grass any mow.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ab0d03d0-b29b-4efc-88c7-d346cc53eb82', N'Becoming a yoga instructor offers the possibilities of a unique teaching position.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b2c4dc63-e616-442e-9f03-701fc35f2668', N'Bee keepers always manage to keep buzzy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd986739f-e55c-4801-af80-6840783fa265', N'Beer: So much more than a breakfast drink.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ea8ffa7e-771d-4585-beec-d29861cbdca3', N'Bees make money by celling their honey.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b01154a8-43ea-4ec3-9dad-35b2d34257a5', N'Before a plumber retired, he took the final plunge.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b0f02f96-2e9d-401f-8aa7-5be10cc8455b', N'Before he sold Christmas trees, he got himself spruced up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e404d93f-b1d5-43c1-864a-347a883cbc7e', N'Before he was hired as a short order cook they grilled him.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'40b1aee3-4b89-4815-a4bb-89c012c68bd7', N'Before the golfer finished drinking the iced, brewed beverage he dropped his tee on the cart path.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6a259919-7eed-4392-b187-95a9ba44b669', N'Before the revolution, Russia was in a Tsary state.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e3a599a8-bede-4dee-8244-9e78b1e9a9bf', N'Beggars can'' t be choosers.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'771e583e-e3b3-4cd8-9be1-27a20d24b3bd', N'Behind every good computer- is a jumble of wire.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'72f7e7f0-61e4-4e5a-99bd-3149a9545fd1', N'Behind every great computer lies... a mess of wires!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'70d97611-44fc-46af-96c5-355e58592661', N'Behind every man, there'' s a woman with nothing to wear.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0ae9ef90-f321-4229-b3d8-a7519a66754f', N'Being a fire- fighter ignited my interest heavily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a2504caf-ac94-488f-9fa1-2ff75bf6961f', N'Being able to fit size 14 shoes is quite a feet.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e5200787-6609-4f49-b79a-2d0461f239c3', N'Better an egg today than a hen tomorrow.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f1cc9491-9598-4c23-812f-14e735485b9c', N'Better bow than break.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'95a4f9f1-1c4a-4c30-889b-2ef512e21693', N'Better go about than fall into the ditch.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'160aa567-9456-44fe-9625-e5aadd91b8f1', N'Better is the enemy of good.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'25e3ec19-daa8-4a1d-9c90-5f7ea8f07813', N'Better late than never.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2821ac06-3b77-4032-80dc-68885b5389fb', N'Better safe than sorry.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'abdac702-ed41-470f-9766-1ac7c54700e1', N'Better the devil you know( than the one you don'' t.)')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4e714c06-f3cf-4737-a190-b20044048ab5', N'Better to be alone than in bad company.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bb250723-e4c4-4400-b34f-b13f6eb2c9a5', N'Better to remain silent and be thought a fool, than to open your mouth and remove all doubt.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6d64c976-3851-45a9-8df3-feb5a540bc5a', N'Better underdone than overdone.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6f460de9-0633-415f-89b5-b109ea4be9f9', N'Betty Crocker was a flour child.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bc5e0cfa-986d-45a9-9a16-65b2a826b703', N'Beware of Greeks bearing gifts.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b4332ded-02c3-43d9-acef-7b1e8358b924', N'Beware of the false prophets, who come to you in sheep'' s clothing, and inwardly are ravening wolves.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'64f720ea-c68e-42b4-951c-e595c4e614bb', N'Beware programmers carrying screwdrivers.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'57d95dd3-4aad-4c59-89f9-6662a4383719', N'Bike sales go in cycles.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bf444eb4-1ee5-4239-b639-5c5892df6cac', N'Bill Gates took advantage of his Windows of opportunity')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'19ff5f62-7028-4acd-b315-b63291fb1537', N'Biologists have recently produced immortal frogs by removing their vocal cords. They can'' t croak.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fea6800a-4dbc-4a4a-b3df-66f559e64cf0', N'Birds of a feather flock together.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a39f299b-a0ef-4a20-a90d-62c21d182e89', N'Biscuits and speeches are better when made with shortening.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b4390516-70c6-4f9c-a7a7-97eb2f4a0f1e', N'Bison.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b6d3c3a9-5a42-4f94-bc07-9b2d40929935', N'Bitter pills may have blessed effects.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4fd6e4a6-d1cb-4d61-8fbf-60bc287e8c7c', N'Black holes are where God divided by zero.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'39b3d430-1374-43d6-be95-7a49b563a7ae', N'Blessed are the meek, for they make great scapegoats.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'99dce069-754d-437f-80ac-df2924ec6edf', N'Blood is thicker than water.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6f96c1ae-6119-4316-bca1-f23563a773e3', N'Bloom where you are planted.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cb538e35-7fd4-4ba6-8503-1471d9833bad', N'BorgBurgers. We do it our way. Your way is irrelevant.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1b484001-1a22-490f-97e9-f8c35b34b73c', N'Both of his feet are firmly planted in the air.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9736faa5-10fb-400d-814d-2f26ca7f286d', N'Bought friends are not friends indeed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'94399700-fb9a-47d4-986f-439b80a4fe08', N'Bowling Alley: Please be quiet. We need to hear a pin drop.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8c2f27b0-aaad-4ee4-b798-9f99388ec390', N'''''Boy, I wish the elevator were working,'''' said Tom, staring up to the top.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f6cd3b27-3625-4530-ab10-6a478b838351', N'''''Boy, that'' s a bright star,'''' said Tom seriously.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ab08b9ee-6d4f-4ab3-ba26-20e482d5c3bf', N'Boyle said he was under too much pressure.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b2348f6b-98d7-4994-ba17-8c1efa917489', N'Brag is a good dog, but holdfast is better.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aa03f693-f99b-4553-adbb-5311c7fce004', N'Bridge tolls have increased significantly over a 5 year span.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'482a58af-072b-4849-a8d9-c411677eb7e9', N'Bring me a rubber band and make it snappy!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'77e886de-1b91-4708-9d0c-37eb1304b825', N'Bring your spirtual Marshmellows, our pastor is on fire!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0157f0ec-9e03-425a-a204-81f9c1efd63e', N'Britain is a wet place since the queen has had a long reign.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3c495e4a-73c8-4c0b-a886-d1532fb68137', N'Building a cul- de- sac would be a bit of a dead- end job.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'953599df-d710-439d-bf1a-6a32f786e0d3', N'Bumper Sticker: HORN NOT WORKING-- WATCH FOR HAND SIGNALS.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fa852545-4a66-41b0-a7dc-318298dde256', N'Bureaucrats cut red tape-- lengthwise.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'36fc0c30-436a-4c89-975e-e60e85ec83f1', N'Burn not your house to rid it of the mouse.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'adfd85e2-ceb9-4523-a618-b773675dc4da', N'Burning too much incense in a rented room could make the owner incensed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c2f3742f-d447-4c0a-a75d-2ed588b6c3e1', N'Bush says" No new taxes!", Clinton says," No, NEW taxes!"')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2431d347-0f5b-42dd-b7f6-30aa05e9eecb', N'Business at the candle factory tapered off after the holidays.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2436f10d-6ea0-4c06-a1db-fd78a6a1f1ad', N'Business is business.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1db2601f-a5cd-4a24-aeb5-bf3aa4e67bdb', N'Businesses selling pleasure boats often have a sail.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b24cbebc-1b50-4c3b-9dea-d1346830fa5c', N'But honey, I wouldn'' t be up so late on a faster machine!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'79047cda-d599-4954-83c6-0e5e5a12b62d', N'But I mist my chance. I can dew it tomorrow.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9f15db67-7fb6-45a9-b3f9-961ab8dce867', N'By perseverance the snail reached the arc.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6b53431d-1089-4eca-90c9-c43c9ccbabf3', N'By yourself you'' re in the right. In a group you'' re in the throng.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'362870af-488c-4e50-8aec-29e8dfeb3d27', N'c- h- r- c- h, were missing u')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'47785a66-ce81-4103-8ebf-df42612adc97', N'Call a spade a spade.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2014c4c8-74b0-46db-8bd9-729491bd815e', N'-Call me a taxi.- OK, you'' re a taxi.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bf5ae8bb-9611-4ac6-9dc0-bf89f8242dc0', N'Call me if you need my phone number!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'be479f00-958d-4f51-b83a-18de3b5d03f5', N'Camille relocated to Little Italy: They made her a cougher; she couldn'' t refuse')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'649499c3-9246-49be-8bf7-6a8e4e1777e5', N'Can bankers count? Eight windows and only four tellers?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fab02c45-d544-4301-828a-04df60972c0b', N'Can honeybee abuse lead to a sting operation?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0b5a93b8-3588-4cef-a79f-508983c70b8a', N'Can I tell you a story about my bed? I made it up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e79088fc-81a9-42b9-a302-63fdda929478', N'Can you read music? the bandleader asked notably.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'58ccd33c-1c1d-4d4f-b2f8-8dc305326b10', N'Can you repeat the part after'' Listen very carefully''?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'33627711-2bfb-45d5-873a-db78223548a8', N'Canadian DOS prompt: EH?\ >')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5c6e5d9e-6787-4388-a8a7-27869e4b7436', N'Cane sugar can'' t be beet.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cc28161b-b38b-43d2-9cc9-751ed1dbb1bd', N'Captain we'' re at 1700 CPS. The UARTs canna take much more')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c5c749e3-da9e-4144-8144-fa87443a79ae', N'Car salesmen compete trying to sell for the lease amount.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dbcb4d54-6e40-4f5c-b04e-430a4921f55f', N'Careless stair dancers are heading for a heavy landing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'878a7bba-3f61-4ec7-8017-443da6090a79', N'Carmen is my favorite opera, said Tom busily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7de7b111-d4fc-4687-bdca-deb932c00699', N'Carrying coals to Newcastle.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f84feb25-46e9-4975-b7f0-f3c9d5c242a7', N'Catch not at the shadow and lose the substance.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e0091c4f-348b-4084-8701-fb61e2e3820d', N'Cats are smarter than dogs... You won'' t see eight cats pulling a sled.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5f58877a-5ed4-4e19-a921-44f417e6439e', N'Cats remind us that not everything in Nature has purpose.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b4d0db9a-7d13-4950-a93e-1444aa6f07d1', N'''Change the channel'' she said remotely.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e344bc94-5cf0-4dc4-a337-e1970de26244', N'Changing a tire on that crazy Houston freeway was a wrenching experience.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4ce51b8a-d7b0-4ddc-8391-b09ab90c8269', N'Cheaters never prosper.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a2aa0c73-bbe6-4a32-ad17-85a578b4cc2b', N'Cheating on a test can put honorable students in conflict with their principals.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0861cba4-5eac-4755-a98a-1b2050df4856', N'Chicken farmers will often share a good yolk.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2406ad4f-be17-4b4d-8ea2-b4ce28879642', N'Chickens can give some people a foul rash.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c22e7d50-f390-428e-af86-580f6d36814c', N'Children are uncertain comforts but certain cares.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'88aa192e-692a-4295-9af5-54d1509b9f9c', N'Children can do some knotty things with string.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd6a62e80-0989-4bf3-b78b-204d1c46ded9', N'Chimney sweep'' s daughter, but she soots me fine.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'184dfee6-26ae-45c8-8cfd-693cae864a12', N'Choose a wife rather by your ear than your eye.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3f3054c2-6e0e-464f-a6e6-9d9b6995d626', N'Chop up an old piano and you will get a cord of wood.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a72faccc-bbdc-40f6-91f4-39b82ca77b9b', N'Christians, keep the faith... but not from others!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e14ffd7c-446f-4da3-8101-95848cd4ddfc', N'Church disputes can be settled with canons.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'320ffc7c-8852-495c-bf36-ed635466db5a', N'Circular Definition: see Definition, Circular.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3af02896-0739-4556-8658-d6ef7158d6c5', N'Civil servants named Grant are known as government grants.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dd0241e2-cb8c-45be-8c36-9b80ec5d9743', N'Cleopatra was the Pharaohs one of all.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'61470e0d-d1a8-420c-9141-da288fcb3438', N'Coaches usually have a goal in mind.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'28b6d392-17c2-42d3-97e5-dd294d98a9a6', N'Cobblers children are worst shod.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fe9cb48f-c86d-4a00-aa1b-315c8992b7b3', N'Coins are mint to be.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'667a1bb3-766a-48c4-ad7f-f9f36d582365', N'Come huddle with us before the big game')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'98206bb6-12e2-4bca-a443-907b9e833c5e', N'Come in and get a peace of the rock')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ee8b99cd-fa1a-40d8-a544-cfd3578bddbc', N'Come in for a free makeover this Sunday')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b992c07b-447e-41fe-9275-336c07fa7411', N'''Come see my fishpond'', she said coyly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f58023f1-01c4-4cc7-b020-4023e136b5f1', N'Comedians, the biggest joke going.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd572a271-a7cf-47ae-a110-b427841f4852', N'Cometh the hour cometh the man.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b4f52b49-5596-4163-a5a5-943a1fe7d341', N'''Coming ready or not!’– Jesus.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ffbb4a70-38e5-44c0-aa90-2cc3e48b3a5b', N'Common fame is often to blame.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bae0d276-3be4-453f-9c6a-f8bce9c7648e', N'Communism is a complicated thing. You must think about from all sorts of Engels.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'00deb1b8-dfac-4bea-80f5-8303ef9063ed', N'Company'' s coming, Tom guessed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3fcef81c-0963-4b6a-a9a5-a8f2bd0c38a5', N'Compatible: Blows up a little later than Incompatible')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'19a95add-e7c1-40fd-9e2c-8211e2d1c392', N'Computer programs for gambling need beta testing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2585f321-c674-4730-9a7f-cee351835b02', N'Computers at breakfast food companies use serial i/ o.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b0e6482c-9aa9-4029-90f3-3e36e3c4593a', N'Computers make very fast, very efficient mistakes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6f95e217-3827-4252-bbbf-86490ebff4c8', N'Confidence begets confidence.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5d713e41-8241-424f-8bc7-5728a7b1ef67', N'Confidence is important; the computer can sense fear.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'37fe7602-b94a-4a72-b860-831f6950b0e9', N'Confidence is the companion of success.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'78a0a90e-e0b5-4066-9b1d-e4d5f5d76d09', N'''''Congratulations; you graduated,'''' said Tom diplomatically.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7eccac08-2152-49ee-8b9f-3955adc874e4', N'Conjoined twins aren'' t the only twins with special connections.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9eb492a0-969c-4f40-a988-bdab4a57ec27', N'Conscience is a faults alarm.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1f44c5ef-3b04-49b7-bece-fc9eee42eef1', N'Constant dropping wears away the stone.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a0741a3a-8e24-44a3-84fc-1f6031c3b12f', N'''''Consult an investment broker,'''' was Tom'' s stock answer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6c5276ee-5bc5-4cc1-9253-437a8d083e34', N'Continually discovering new viruses can become a strain.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'247b0b19-ca5a-4c47-91ad-db45f3f66f97', N'Convicts are committed people.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'34642b32-1979-4fab-995d-01cb772ea23a', N'Cooks have a lot of spice in their lives.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e8270e92-79c1-4b5e-aba1-08d78a7766f8', N'Copper wire was invented by lawyers arguing over a penny.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3980abc2-0f75-44f1-82a5-f7d495722ca4', N'''''Cosign here,'''' read the first instruction on the trigonometry placement exam.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'04a9e854-6fe8-437e-b9bf-af5b9e77ef37', N'Cottage cheese diet: eating your curds and weigh.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c93f761a-1f63-4e96-9cf5-1b3fcc1da32b', N'Could modern submarines be the wave of the future?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1a62fc5d-e477-4a10-bfa2-c6b9350644fe', N'Counsel is no command.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aa1c3a89-653d-441f-b778-8ce0bebbb819', N'Courage lost, all lost.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5d233fc6-a0a6-4e76-acf0-adb24db1f4db', N'Cousteau was submerged in his work.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fad2b2e0-fab9-416a-be63-5433a39cff68', N'Cowboys in a rodeo can be sure to get a few bucks.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd3913c9a-da75-45e9-82e6-6483a682eb00', N'Cows make noise only when they'' re in the mood.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c9a2f452-d650-42b3-8034-ce48449d4959', N'Cross river* THEN* insult alligator.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c7a4ffe2-cdb9-43cb-84a8-e6d41fe5723d', N'Cross the stream where it is shallowest.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'94470653-0eec-4480-94bf-b89a27996e92', N'Crows will not pick out crows eyes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0054aefc-5fc0-48be-838a-423acf93f553', N'Cryptographers make terrible drummers. They just sit there, fascinated by all the cymbals.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd537269a-1568-45f1-b28e-d4567d0bd53a', N'Curiosity didn'' t kill the cat. I got'' im with the mower!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9f8ff749-95cb-4564-81a0-1076e475f62f', N'Curiosity killed the cat.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'82cba767-03d5-431d-a006-c76d565001b8', N'Da brie is everywhere')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0c8bf908-db7a-4be6-a249-ca9b7388be58', N'Daddy, how come my magnet won'' t pick up these disks?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c519a68c-446f-4617-ab50-c2ea6134e4b9', N'Dairy Queen isn'' t the only place with awesome Sundays:)')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'707982b4-3718-45d9-b646-d0fd3d9c027e', N'Darwin said he'' d have to see what evolved.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'135412a7-8c5c-4c16-98f3-2eb3f797e97f', N'Data got into so much trouble, her parents sent her packeting.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ba12c7c7-8269-467a-894b-234d3a05081b', N'Dateline London: Eccentric ornithologist travels to foreign land to teach pigeon English.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c7a5079e-ad32-4914-a283-b7e88f3f351d', N'De Broglie waved aside the invitation.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'82b02196-f5c0-4b1b-bdfb-08c8e3d0d2e9', N'Deal gently with the bird you mean to catch.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7773ef98-316d-47d3-994e-0c962ee1b432', N'Dear Santa, all I want is your list of naughty girls.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'34066c30-5da5-4ace-9aa2-8e85b4152c7c', N'Death is life'' s way of telling you you'' ve been fired.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'edb6a8d2-9e5e-4268-ae49-da0686ba86a3', N'Decimals have a point.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'87809ca0-a191-4b7a-98ee-16119570675a', N'Deeds are fruits, words are but leaves.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2ad007ee-849a-4410-ad72-a8e1e51e6417', N'Deep calls to deep.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fcffba86-05ad-44ad-bf4e-0c4e6f9cece6', N'Dentist'' s famous last words:" You won'' t feel a thing..."')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cc2e7834-bdd6-4f91-b8a3-bcd0ec91131e', N'Dentists don'' t like a hard day at the orifice.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e823fb37-82b4-4689-8283-e67a9ddcaeaa', N'Dentists have the same old grind day after day.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ffa9895c-714d-4e6d-bdfc-17eaad253455', N'Dentists on death fill their last cavity.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3d6f571f-323f-4676-b0bc-1a63747bbe9e', N'Dentists practice by going through many drills.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'435e46d2-1598-43cb-9fbc-5ea798d26848', N'Dermatologists often make rash statements.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8b178adb-777c-49bc-b0c9-c79849ee1cd2', N'Derringer had one shot at fame.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'236a25cf-a02a-48e2-b6a0-b71f61cefef7', N'Desk: A very large wastebasket with drawers.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'44b6a3f7-22f4-45e7-ad03-b3fca2cb4596', N'Desperate diseases must have desperate remedies.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'46aedbd9-c3a5-4157-8a86-af2c8865414f', N'Desperate times call for desperate measures.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'30e96582-f978-426d-a09b-e045b83231a2', N'Despite the high cost of living, it remains popular.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8abd3abd-191a-4c4f-842b-e15f43508d60', N'Despite the repressive restrictions in force against all of the fine arts, students in Kabul often gathered secretly to listen to band music.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'544191c1-8614-4c04-bce2-7c3989e6eada', N'Diabetics should not be allowed to have sweet dreams.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'31e5d34b-9bdc-439b-bba1-b27acd991c08', N'Did Gregor Mendel ever win the Nobel Peas Prize?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3db3e6e8-f987-4594-aafc-8f9f0a1a5042', N'Did the reproducing amoeba get a splitting headache?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e9180625-ceac-4d6f-a3d0-f976b88d605d', N'Did you expect mere proof to sway my opinion?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1c6abc92-79d1-4caa-be77-b7657a2d289f', N'Did you hear about my friend who hired out vampires and poison, and my other friend who ate children? Could say the first one was the lessor of two evils.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f625fe40-7e2d-4128-bdaf-c30115162a5b', N'Did you hear about that new drug that makes people angry? It'' s all the rage now.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bc1a4410-3ce2-4269-8aba-0243ce232ace', N'Did you hear about the bivalve they called in to interrogate for that big murder investigation? Apparently, he'' s clammed up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'567d76b4-1f6a-44cb-b1ae-3122268b6819', N'Did you hear about the compulsive fisherman? He was really hooked on it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'068aec56-3bfa-4651-abbf-aae26fe71b4c', N'Did you hear about the crab in financial difficulty? It was starting to feel the pinch.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8f65814e-6c90-48bf-8ae2-21b1e6e5bb05', N'Did you hear about the crime that happened in a parking garage? It was wrong on so many levels.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'833f46a6-4caf-4e77-8316-46b34a45dc26', N'Did you hear about the farmer who got attacked by a cow? He milked it for all it was worth.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3491d3d4-6755-4638-9307-5ee819a25054', N'Did you hear about the father that was difficult to see? He was transparent.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bfa2dfe1-2dcc-4224-9f71-5e5ce9e0732d', N'Did you hear about the film editor at Hollywood who had a part- time job at a pizza parlor? He used to ask customers whether they wanted one splice or two.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b3c716e1-9b66-4a16-800c-4d5048758417', N'Did you hear about the guy who planted bullets? He wanted to see a lot of little shoots.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2dabc762-1f16-4ff4-90f6-c2090256dc49', N'Did you hear about the guy whose whole left side was cut off? He'' s all right now.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'64b20dba-1ed6-44c4-af94-71be3d0d4eea', N'Did you hear about the herb who was an all round great guy, did loads of charity work and was always there to help? He was a Tarragon Of Virtue.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6b3539e0-dde8-4964-9def-f9846a71a5cc', N'Did you hear about the man who was jabbed in the back with a set of keys? His back locked up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1a9baabe-f674-43ec-9d57-0ddea2b7fe64', N'Did you hear about the nervous preacher? He had sweaty psalms.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f5e754e7-ac3e-4091-bf7f-9cb0ce0d8318', N'Did you hear about the new pinata? It'' s a huge hit.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'66a85622-0f00-4bc1-bcb9-e9cd725caffa', N'Did you hear about the pilot who always had work? He was great at landing a job.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'06abc6b0-e402-4cac-b911-dd5e60e8d638', N'Did you hear about the tire dealer that had a blowout sale?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8ab5f6d5-da42-49b9-a7a0-57b24df04c2a', N'Did you hear about the vampire who used to torture his victims with music? His Bach was worse than his bite.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'543f18d3-7a29-4722-a678-b34dffe08743', N'Did you hear about these new reversible jackets? I'' m excited to see how they turn out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f956c7b5-6414-4990-a899-0f306ddd1013', N'Did you know that donuts were first made in Greece?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'23c5dd5b-3e5a-4cbf-8b3d-cb1f3f0148cb', N'Did you see guys that Bob the ventriloquist hangs out with? They'' re nothing special, just a bunch of dummies.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a66d6a88-8d20-4a04-8a5a-ea9e92764c4e', N'Diets are for people who are thick and tired of it all.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'55944d47-5d7d-45f3-93ee-77155aa5953a', N'Digging a hole for a coffin is a grave matter.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4c492d8d-65e9-42c8-8b23-99680b9d8356', N'Diligent youth makes easy age.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0e2d231b-b7a1-4eea-9583-d34988824290', N'Dinna wave that axe aboot, Jimmy! said Tom heedlessly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a9228a7c-d9c6-4be2-bfff-553ab3562184', N'Diplomacy: Saying" Nice doggie" until you can find a rock')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'404cd0ee-bce5-4705-9fbc-e3fc9fe507f1', N'Discretion is the better part of valor.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'10a8dbdf-ec0b-441c-895e-2c9919562eec', N'Do hotel managers get board with their jobs?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'eee2c3cc-b449-4041-b48e-37d2d016a2b6', N'Do I straddle the fence on issues? Well, yes and no....')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'888988bc-c14c-4af2-a80d-16457766586a', N'Do not add oil to the fire.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fcc68bcc-d491-4ce7-bcbb-7fb03aeb8a5e', N'Do NOT look into laser with remaining eye..')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'82908d05-dd75-4a39-81ef-4220e4733a96', N'Do not merely believe in miracles, rely on them.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c8c2f334-7afc-4eea-991d-34462aff9721', N'Do not think that one enemy is insignificant, or that a thousand friends are too many.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2a71f72e-2707-401d-af04-1ec3a549aa29', N'Do unto others as you would have them do unto you.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bc0d8aef-fabf-4795-acf0-5cd35bc0b86c', N'''''Do you buy and sell stolen goods?'''' asked Tom offensively.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'990e8f25-94fd-4fb7-bfc4-607dff185520', N'Do you ever get tired of sleeping?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f5795854-589f-48fe-9b2b-640493949d7b', N'Do you have any parting words?- How about comb and brush?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd6b63c7c-35f4-468f-aabd-7d3a36d2871a', N'Do you know if they ever got detective Sam spayed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1ff8a37e-5686-4f8e-95b1-5da9c620c613', N'Do you play the guitar?, Tom asked callously.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7751efa9-1eb7-4436-aea2-e3f28720aa08', N'Doctor, Doctor I feel like a pair of curtains- Well pull yourself together then. Next.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1605da61-3820-4475-85ea-6edc3d5e962b', N'Doctor, Doctor My little boy has just swallowed a roll of film!- Hmmmm. Let'' s hope nothing develops. Next.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a2086c62-7620-45d1-a069-357170eb6bd8', N'Doctor, Doctor, I can'' t get to sleep.- Sit on the edge of the bed and you'' ll soon drop off. Next.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7327dd4e-ed90-4041-a412-a3f983abb47a', N'Doctor, doctor, I keep thinking I'' m a billiard ball.- Get back in the queue. Next.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'931a6ef7-470e-4cf1-86df-d2a5f5249788', N'Doctor, doctor, I keep thinking I'' m a deck of cards.- I'' ll deal with you later. Next!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'07e2929b-47da-4004-9db2-db0af15ad402', N'Doctor, doctor, I keep thinking I'' m a spoon.- Sit there and don'' t stir. Next.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'701d6817-19ce-4c1f-9fbf-026338c48f75', N'Doctor, doctor, I think I'' m a bridge.- What'' s come over you?- Two cars, a truck and a coach.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cae00bac-a2f6-4b71-95d5-d022fd48e953', N'Doctor, Doctor, my hair is coming out. What can you give me to keep it in?- A cigar box. Next.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a1612878-b9c6-4f2a-a6d9-475d6ab05207', N'Doctor, doctor, people tell me I'' m a wheelbarrow.- Don'' t let people push you around. Next.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ff6ba572-3556-47b6-bdbf-10d537c79aac', N'Doctor, Doctor, should I file my nails?- No. Throw them away like everybody else. Next.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4eaf292e-ad2a-4d56-b7e6-110e96655d3d', N'Doctor, Doctor, this ointment you gave me makes my arm smart..- Then rub some on your head? Next.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c4142674-4f74-492d-a9d8-356c3322debd', N'Doctor, Doctor, what would you take for this cold?- Make me an offer. Next.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1b71be39-e00d-43ba-a86c-5571a8e5ba31', N'Doctor, Doctor, you'' ve got to help me. I think I'' m a kleptomaniac.- Don'' t worry. I think there'' s something you can take for that. Next.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a38a4a47-d914-483f-b414-118e20862902', N'Dog for sale: eats anything and is fond of children')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'44b6c270-8221-4444-8a5b-4827b609482d', N'Dogs wags their tails, not as much to you as to your bread.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'893f5bd1-1402-450e-a439-0acfaca92833', N'Dollars do best when accompanied by some sense')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6fcffec6-99e2-4616-af71-df71f49c5ce3', N'''''Don'' t add too much water,'''' said Tom with great concentration.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8cc93680-6c1c-4e38-b372-d43671f96c8d', N'Don'' t argue with a bomb inventor- he might blow up at you.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bcd4db19-5d6c-4b25-9b40-afef7d1d4ef6', N'Don'' t bark if you can'' t bite.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c2e062be-3f8d-4f23-b99f-40694b979227', N'Don'' t be sexist! Chicks hate that.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b9ca497c-fc85-4fbb-a303-cd3a3544ed51', N'Don'' t believe what you hear about fleas and ticks-- it'' s all lice.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b6ef867b-ffd7-4fca-a671-6633d7efc41d', N'Don'' t bite off more than you can chew.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b2e7b448-bfd0-4f28-b3b9-326f8117096f', N'Don'' t bite the hand that feeds you.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'23629537-3a8a-45b5-8bc8-de1b199a3e2b', N'Don'' t burn the candle at both ends.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9bf4868d-e3ea-4892-844e-1d8373e4ab45', N'Don'' t change horses in midstream.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a6217d77-67b5-48ec-b86f-e9fb70a2c29a', N'Don'' t confuse me with facts, my mind is made up!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f79a9120-61cf-461d-a07c-5cec25f4ed68', N'Don'' t count your chickens before they'' re hatched.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ce89a77c-f283-4827-9c42-9a3dc1f1fe96', N'Don'' t cross a bridge before you come to it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'417fc753-c0ee-4102-90f9-55fdecc1460f', N'Don'' t cut off your nose to spite your face.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'745389a2-0fb5-445a-85bc-24bd7a8707ce', N'Don'' t even TRY to THINK without proper tools.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a2c2702f-841c-4e43-855d-6f6d00f644bf', N'Don'' t expect to eat something fancy when you'' re flying because it'' s plane food.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0cacca64-bcb5-415b-8c23-117c0c734416', N'Don'' t fall before you'' re pushed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e1fc44f9-824c-4420-a31d-48bda2c72847', N'Don'' t get lost in the mist or else you won'' t have the foggiest idea where you are.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5bca26bd-f7fa-443f-8f16-c470bae9ae1d', N'Don'' t go between the tree and the bark.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'62bf56ec-988d-4048-8313-18a2464e8fc7', N'Don'' t have too many irons in the fire.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e0163c4b-b964-4909-b2e6-2ab9412abf68', N'Don'' t judge a book by its cover.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2ef1be60-dd91-4c05-8347-a9b88947d0a6', N'Don'' t judge a man until you have walked a mile in his boots.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'074dabe1-0434-461f-b124-7ef51df7bbf2', N'Don'' t kill the goose that lays the golden eggs.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b573f37d-52e0-4298-a6ca-33655c5b8d81', N'Don'' t lend people money. It causes amnesia.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'34a4d37b-b4cf-407f-b42e-44494b0529ed', N'Don'' t let the perfect become the enemy of the good.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e38469ce-d0e6-426a-ba4b-79b315ebd4c7', N'Don'' t make a mountain out of a molehill.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a03939b4-f405-4e4c-a75b-a6a3f134c739', N'Don'' t make clothes for a not yet born baby.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'80db96c7-ce32-448f-99b8-9cbec85cc4f7', N'Don'' t make the same mistake twice.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7bd143ee-2a33-487a-a2a0-7071e048cbd2', N'Don'' t marry for money; you can borrow it cheaper.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'34060ba4-5191-451c-a388-4098947430da', N'Don'' t open the darkroom door; it lets all the dark out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd01396c4-02e2-456f-9126-4915c05eb07b', N'Don'' t play with matches. Lighters work much, much better.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f206db12-e583-4104-9264-f3e670538d15', N'Don'' t put all your eggs in one basket.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f0f3f710-ba60-41c9-989e-f88d1a01aade', N'Don'' t put the cart before the horse.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7730d1a3-64a2-4869-83a3-4196651250e9', N'Don'' t run behind success run behind perfection and success will come behind you.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'23916d86-98a8-4d31-be56-34380aa90c2c', N'Don'' t take life seriously... it isn'' t permanent.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a5c5619a-190b-4c01-a876-c5793c62a1d9', N'Don'' t talk the talk if you can'' t walk the walk.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6db9dced-2894-42d1-b3b8-b7e3d36d4ecb', N'Don'' t throw the baby out with the bathwater.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'54246f97-098e-401b-9b7f-e5c3b30b0bbe', N'Don'' t try to reinvent the wheel.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'13e35901-26a8-4c5b-937b-113676fe6bb9', N'Don'' t wash your dirty linen in public.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9863f7b3-849c-4fb8-9216-1dbc70811dd1', N'''''Don'' t you know my name?'''' asked Tom swiftly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aee86a7d-0a93-456f-b46d-1756e8396cf9', N'Don’t let adversity get you down unless you are on your knees')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5e72230f-3591-4cf1-bb2c-767b0af7bdaa', N'Don’t let your footprints in the sands of time be the mark of a heel')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bced0dc2-2411-4ddb-aa30-39682e50b74c', N'Dorothy and Toto found to their horror that tornadoes really could raze a house.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a7d3649d-941f-4f4a-a38a-48d92afdec25', N'Dorothy'' s dog, of the Wizard of Oz fame, always eats his food entirely- he never leaves any scraps because it'' s in toto.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'308a4a1d-b8b4-45c6-884c-fb8e2dcbd6fa', N'Double your hard disk space: DELETE WINDOWS!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2d15a260-8dae-43ae-b4de-597115869d7b', N'Dr. Jekyll'' s more successful second formula turned him into a world- class sprinter rather than a violent psychopath, proving that you can run but you can'' t always Hyde.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2fd5636d-1051-4fd0-b3c0-d5b2f61bb13f', N'Drinking a whole bucket of water could make you turn pail.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'83a8d450-ac74-414f-bdb3-96dc3d6f1305', N'Drinking too much of a certain potent potable may require a leave of absinthe.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9a3bfdb4-3ede-4994-8f0c-c61d5f6f0b2d', N'Driving on so many turnpikes was taking its toll.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'71ead202-a8eb-47fb-981b-0d0c1ac6ebd7', N'Drumming is not the way to catch a hare.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4da191d4-e909-4e31-878c-edf1b98fc869', N'Dry cleaners are often pressed for time.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dfa98682-f287-41db-9a04-3568784c30f4', N'Ducks don'' t have their palms read- they look for it on the web.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'98a631f8-0ffb-49bd-bd8f-2864e3176354', N'Due to inclement weather, the sandwich shop wrapped up early Tuesday night.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'78c3f07b-7976-45a5-afe9-61c0666489e7', N'During a recent trip to Qatar, Bill Clinton went to McDonald'' s and ordered fries with a sheik.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0e19adba-b947-4d6e-a539-1c83a019fc31', N'During a tennis match one player gave the other a backhanded compliment.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'abf9268b-a147-4890-9f24-87c0fc21f0fc', N'During branding cowboys have sore calves.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a2548607-b245-424c-bbf1-878aecdd27c8', N'During his lifetime, the composer Bach was a noted success.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cb0ff40d-6fcc-47bd-b952-8cc43d269957', N'During my trip to Italy, I didn'' t do much. I just vegged out. When in Rome, do as the Romaines.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'55936e14-9413-4da1-a8f0-9455cab94103', N'During the meeting about earthquakes, there were several motions.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd8c56053-5c59-41bc-9f52-95ae1c7b21fa', N'Dutch shoes used to be made in a factory machine, until it got clogged up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'158138d3-e6bc-4c53-ab31-3afc39bb050e', N'Dwarf on a giant'' s shoulder sees farther of the two.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b85693e9-819f-400f-b80f-2555d32a214e', N'Early nuclear experimenters discovered an element of surprise.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'15f657fb-13fe-45b8-a6af-ce781622c6aa', N'Early stone tools had many problems that were eventually ironed out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2a76fd41-ab78-43fc-918f-4fb8d88974f8', N'Early to bed and early to rise, makes a man healthy, wealthy and wise.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'70d416e0-9de8-4082-960d-15d1d3086247', N'Easter is more than something to dye for')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8720e775-bc3b-4f4d-bffb-0cc03ab24064', N'Eat your own dog food.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'df1b06e9-3888-4608-8977-3fdb2a53f122', N'Eating too many snacks when studying for a test is called cramming.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c25f996b-4324-4d08-ae3e-21b779d207a1', N'''''Eating uranium makes me feel funny,'''' said Tom radiantly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bc821781-48e3-413b-a41e-5af88271cf60', N'Eavesdroppers hear no good of themselves.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5c2b77f0-1d63-41bd-a18b-9163ab198a6e', N'Edison thought it would be an illuminating experience.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'98906b65-f39c-4e17-a4ad-821abcb61581', N'Eggs and oaths are soon broken.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a2be7d2f-a977-46e2-bfb8-f81b86e42577', N'Elephants will toil all day, and they work for peanuts.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'093fce53-e57b-41a3-85b9-c19c5a7cfedd', N'Elvis Stamps: Where will your mail be spotted next?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd858257e-4908-444e-a9a5-ee14a4b0c48b', N'Employers like their mechanics to be geared up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'215f6501-6212-4254-a094-21fca666b229', N'Empty vessels make the most sound.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'de7dea05-8b0d-4627-80a5-7120a40ec7a7', N'Endorsement by an olympic swimmer caused a company'' s profits to dive.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ecc0422e-23cb-4cdc-ad15-4fd5fe9d208f', N'Engineers: often wrong, seldom in doubt.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'500391a4-6028-44f4-b440-10175dfa1fca', N'Enjoy the present day, trusting little to what tomorrow may bring.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd6ae7afe-75dc-4afc-919a-4a3dd59e3ecb', N'Enter any 11- digit prime number to continue')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9ddb7a44-d923-4ab8-b862-5620f5ddd159', N'Environmentalist: expert in computer operating systems.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'37c80603-a9e1-403c-a89f-c3d99a436590', N'Epitaph on a gravestone: Cheerio, see you soon.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f85eb5c3-fe2b-4517-ba71-19aada05ccca', N'Epitaphs are engraved!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4fc5c593-c492-4756-b904-6fde164926a4', N'Erasable pens were a good idea on paper.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b844cce5-3088-4379-9aff-b76a6bb762c4', N'Eschew Obfuscation!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1da17bd4-8953-42e7-ac9e-5a81c2822d80', N'Ethel the Aardvark Goes Quantity Surveying... the Musical!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8d064291-5236-4ab3-8847-ad2835a84201', N'''''Europe needs more self- restraint,'''' said Tom continently.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'33529d24-d097-445d-8637-36ca04e995e2', N'Eve showed up one morning wearing flowers instead of a fig leaf. She was the first woman to wear bloomers.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'40a5037d-429f-4392-a4d7-fb40f23dd43b', N'Eve taught us it’s okay to take a little ribbing')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f0c653d2-5d62-4a9c-80ca-82c26485b0bf', N'Even covered in salad dressing my lettuce looked bare, so I put some cloves on it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'83f5cdef-41c1-40e8-ad2f-10d29a50e429', N'Even if you'' re on the right track, you'' ll get run over if you just sit there.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4f0d5fc2-6412-4766-8a33-05abf0f78356', N'Even the best bird dog is only good to a point.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'995cf51f-fde0-411d-9d02-7ef96346fb91', N'Even though Ashley was blind and under arrest, she still had hope that someone would brail her out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a97e4399-d630-446d-b9de-c901eb35675c', N'Even though Catholics in space are weightless, do they have mass?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7ffeef02-c25a-42ef-8af7-0498a68e8888', N'Even though the well was a mystery to her, she didn'' t want to get to the bottom of it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'105e2588-b58d-4fcb-8da9-55c3ed0623b1', N'Ever since my mineral extraction facility was converted to parking, I'' ve had a lot on my mine.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'344e4ae9-ad2f-4889-9c33-925b457bea58', N'Every cloud has a silver lining.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4c4151fa-e0ab-4d42-9857-2bbbeb6c4b4e', N'Every fool is pleased with his own folly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'15406fbc-811e-4231-bf56-216b65513024', N'Every little helps.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd384899a-b053-48d9-86c5-77cc27432c67', N'Every man has his price.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'39e214a8-6337-488f-a59e-859eeaf15596', N'Every man thinks his own geese swans.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7e21f0e5-4b31-4967-88de-b1b93126bfd4', N'Every rose has its thorn.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ddce0151-2e91-4b10-8384-d77b72a74e8b', N'Every silver lining has a cloud around it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ef5dc81f-7052-4cf0-9467-6055caffaee1', N'Everybody was in shock when the hair stylist dyed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'25252de2-5899-4e61-a653-49ca465a8210', N'Everyday is a gift from god, that is why it is called the present')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd86a5630-2372-4289-871e-b096d461747a', N'Everyone makes mistakes, if not we'' d all be single!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3c1ce9fd-4f4e-4ba7-b9d1-f3339ea9896f', N'Everyone'' s business is no one'' s business.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ffecab70-66fb-4499-a0a9-7bdc7bf9edeb', N'Everyone'' s fuming over the high cost of gas.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fbf5b96d-2ada-4de9-9777-600266a41152', N'Everyone talks about the weather, but nobody does anything about it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e01a881d-4dea-469f-8ec8-4ca7f69963f3', N'Everything is worth its price.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aaf151d8-60f3-4c2b-bd37-c40d9d43844f', N'Evil begets evil.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7636fca2-9714-4099-a858-3f155c280131', N'Example is better than correction.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9ffb122f-4cd2-4abc-a23d-cfe767c5e8e7', N'Excuse my driving... I'' m trying to reload.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9a90b86e-fb95-4f9f-96aa-a7f68b9b6970', N'Exposure to the Son may prevent burning')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1aa5a6f0-1739-429e-922e-f169f2585f76', N'Exposure to the Son prevents burning')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'00f8353f-2e31-4731-a2c9-2d8f86891bb7', N'Exxon- greasing the coastline for smoother boating!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b8ac0d68-c902-4a3c-960b-8396ec57cc29', N'Failure is the path of least persistence.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a9b51261-8fb3-4546-97cb-7c4e8319a1e0', N'Failure is the stepping stone for success.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8af571f5-481a-4adf-b838-b2b762ac0920', N'Faint heart never won fair lady.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'50418859-0120-436d-a175-9d07c41454ab', N'Fair play'' s a jewel.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fd870777-d2e5-4ae7-9468-4d1c93c0e706', N'Faith doesn’ t fall apart at the seems')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4c68dcc6-5f82-4017-a53f-6ecfbc6e6e68', N'False friends are worse than open enemies.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4ccaab82-99fb-4c30-9d61-afbf97c68dc3', N'Faraday was charged up with the idea.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'21f91857-2d61-49f8-81fd-8817beed8831', N'Farmers can hardly wheat for a good harvest.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e0a00b66-7428-4145-9bae-57ff120e2e21', N'Fashion is something that goes in one era and out the other.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b58d225b-5549-479c-b10e-ccbca62f2893', N'Fashionable women in Indiana all wear designer Hoosiery.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'193242a1-1e20-4a3d-9fdf-d426e52d8981', N'Fear not the loss of the bell more than the loss of the steeple.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8ef7fbbd-0dd0-47ff-a142-afeac6b44eca', N'Fear the man of one book.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4c6b1e3f-64d3-4039-90a6-474499532529', N'Features should be discovered, not documented!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0b3a6d2f-a189-4880-848a-2ea7de64b27e', N'Federal Law prohibits the removal of this tagline')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd7a13bcb-25c8-4790-b130-67c53d091d18', N'Fight fire with fire.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'49d349e1-188c-44dc-9a47-e22cedb84ef6', N'Fight Truth Decay… Study The Bible Daily')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'57b1ceda-25d8-43c4-97d7-5b16a89c8c66', N'Figure skaters don'' t like to be in a rut.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f7f68a92-3eb3-4932-af9f-c9afead1e410', N'Finding all possible logical relations between a finite collection of sets is not a matter of If but Venn.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'85f5a0ff-5dd2-4a53-b114-dd3351d78a15', N'Finding area is an integral part of calculus.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6f0c5d54-f1ab-4016-a7a4-a68160845199', N'Fine feathers make fine birds.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7eb803a8-75e4-4021-a7c7-8ecb165c041b', N'Fine words butter no parsnips.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1aac772b-a290-4cd0-97c8-ae9e92676fbc', N'Fire! yelled Tom alarmingly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3f97dfce-42c5-4606-85f4-afac9d798785', N'Fire, quoth the fox, when he pissed on the ice.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'75687bb6-e7bd-4d44-8ddd-ac1237c2e10f', N'Firefighters can rescue you, but only Jesus saves.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'90dc397c-408c-4e9b-ae07-aee874d6efc4', N'First come, first served.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3008be5c-e9e8-446d-82d9-5b5daa0de890', N'First deserve, then desire.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b23e6d6d-9d1a-417d-8ae6-1fc429db27b3', N'First Rule of Intelligent Tinkering- Save all parts')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9469e66f-4ac3-42ee-a7c8-0dbe00e23335', N'First things first.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'eb8c2876-72f6-4c18-94d5-ad53f179920a', N'Fishers often wet their appetite.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd48ba068-00bb-485a-a097-90e09fd90767', N'Five brothers wanted to buy a horse, so they all had to pony up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9cb9e22a-713e-4a54-ab14-2a9253559c35', N'Florida bumper sticker: DON'' T SHOOT! I'' M LOCAL!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7b6209a1-7493-4691-aa05-717bb28d1c6b', N'Follow glory and it will flee, flee glory and it will follow thee.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7a961465-a7d2-45bd-b79d-9f3971d15c39', N'Follow your knows.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'691d6787-0325-484d-8c11-d808176f4377', N'Food for bad dogs is bought by the pound.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e1565759-36df-4e5f-8f51-97af1a077512', N'Fool me once, shame on you. Fool me twice, shame on me.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9556d7e2-1930-465d-8878-9cc024b509af', N'Fools and their money become popular quickly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1bf91aea-3106-4188-bc99-e45075beccc9', N'Fools rush in where angels fear to tread.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'21402dbd-0e23-4f85-9a1c-138a5a51d366', N'Footprints on the sands of time are not made by sitting down.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'20ab0de6-8724-489d-a455-d21a6d4925ec', N'For a chemist disappointed in an experiment the reaction was on his face.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'db9ac34f-0669-4a9e-b7d9-901972ff0be6', N'For a chronically absent employee: It seemed her career was just taking off.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c79107a0-435b-4cc1-bf98-46e1bdf4fd91', N'For a dishonest employee: He'' s an unbelievable worker.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2ef417db-9196-49a4-b7e3-4d8887012353', N'For a fish, the end of a barbed hook is the'''' point'''' of no return.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c7bad416-0a0a-4827-afe3-ccef27a753dc', N'For a long time, black holes were a dark secret.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5cf9f0f1-26b4-4526-b87d-f7c0a45a5c5e', N'For a while, Houdini used a lot of trap doors in his act, but he was just going through a stage.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1b19f137-e114-432d-81dd-9cfe7d64b737', N'For children to eat without washing their hands would be a grime.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c769ce37-da26-481a-ab30-ae692a7712a8', N'For class schedules Yoga instructors are flexible.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'088345d8-0d75-4746-bcdc-e15ea86e52f1', N'For every 45 I collected, I would write down the song and the artist so I could keep records.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b31108d7-2b6e-424d-9c0a-e9b2342358d3', N'For fast relief take two tablets. The ten commandments')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3e35f322-dd84-42bc-8ce2-223f3bc7261b', N'For greeting card companies their fate is in the cards.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'35714222-9276-49c9-8906-1350d19f2a82', N'For insomnia move to the edge of the bed and you'' ll soon drop off.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5542fd47-867c-4f30-98ae-56977af7bc02', N'For meat some people eat lamb and mutton else.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd2a43cc3-079d-448f-be73-d334bed9ebc1', N'For the love of money is a root of all kinds of evil.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b4b19736-2155-4390-94af-f7e19fea925f', N'For the office drunk: He generally found him loaded with work to do.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e5804c64-3f99-4a85-93d1-0ac8f5b3a333', N'For the orthodontist visit, the boy had to brace himself.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'00a1a105-c048-4f7a-b7c2-3e1200b10954', N'For the woman who wore size 13, finding shoes that fit was no small feat.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'29a2565c-f666-4c7e-a395-5ae3da09c4ed', N'For want of a nail the shoe is lost, for want of a shoe the horse is lost, for want of a horse the rider is lost.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'61e2a4ee-11bf-419a-9975-fffc8f0a62dc', N'''''For what we are about to receive, may the Lord make us truly thankful,'''' said Tom gracefully.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'41fc7b9a-d24e-4141-bb8a-9c081d7b7b03', N'Forewarned, forearmed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2840ad6b-1e6e-46b1-bd59-d75606ec2a86', N'Forgive and forget.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'579a14a0-9ecd-4fb0-85f5-b077356524f7', N'Fortune favors the brave.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9f3e8715-aced-4682-9d4f-ad94e8ea5b9a', N'French bankers are known for their franc talk.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd967d8bd-fe9b-4e27-8c18-5fd7c291d66d', N'Fretting cares make grey hairs.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'96f0bcab-d4fe-49cd-9e67-05ec0352033d', N'Freud could barely repress his excitement.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'44cace63-fbf5-4fb0-86cb-deecaca5b942', N'From the middle of the Pacific, the shipwrecked survivor found his way to the California coast purely by occident.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'276872b2-45c4-484d-8d08-067e94263d81', N'From those to whom much is given, much is expected.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'436a6a17-324a-4a20-b737-4eaeaef73e86', N'Gallup and Harris are poller opposites.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c553f4ee-ea60-49e0-b3af-7831beca7e04', N'Galois wanted to assemble his own group.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'679aab64-d2f2-4fa6-8154-6e294dc50150', N'Garbage in, garbage out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aa064beb-f5be-443f-aba0-5ff6f131e5aa', N'Gardeners like to plant their feet firmly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e451d248-8a98-4630-bd80-cb6b90ecd7e5', N'Gardeners like to spring into action.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'44eca00a-4707-42d1-9930-e0c5c3e8bd43', N'Gauss was asked to attend because of his magnetic personality.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6b7bea6d-4441-4f8d-a0b4-4fe2f4748927', N'Geologists can be sedimental about their work.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'95ed0136-b134-4d07-a7c6-9cd1e7d1c79a', N'Geology class is the foundation of a decent education.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ca00bb02-8893-43ff-9bd3-42ca2fe8d891', N'George Westinghouse was a refrigerator magnate.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1b62f62b-8ca3-477e-bd78-06f507d825cb', N'Get the stick, Rover! Tom called fetchingly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9732d828-b897-4c81-bbaa-5d05e9333fcc', N'Getting into the skunk selling business might make a lot of scents.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'50f9fd35-eb25-4c2a-a838-27781cf1d933', N'Getting rid of your boat for another could cause a whole raft of problems.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6f8048cb-14fc-469b-a274-6747ceb2b0e7', N'Getting soap in your eyes is no lathering matter.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0c2f1d72-4c57-4f98-8ce1-0b918bcc5b91', N'Getting this job managing a country estate has put me off fried eggs. I'' m a gamekeeper turned poacher.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'85782e73-b0e5-4e42-befe-829c64fe3f46', N'Getting your driver'' s license is a right of passage.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'93b0e31d-0a2b-412f-a32a-24354315c8f0', N'Girlfriend pregnant:( I) gnore( R) etry( A) bort?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b11ae81c-6436-43d5-9ec4-6298f92e8578', N'Give a dog a bad name and hang him.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9e2b41d9-0ad6-41d1-a12d-84aebafd0343', N'Give a dog a bad name and he'' ll live up to it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9400f4ab-f9b0-4103-ad00-5b6f87c73cf6', N'Give a man a fish and you feed him for a day. Teach a man to fish and you feed him for a lifetime.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bb471c89-6c79-4eac-88ed-eb122e7931c4', N'Give and take is fair play.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5c824224-868a-46da-9649-3bb42339a8a4', N'Give and you might receive. Take and be sure of it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fdceb6bf-b19f-4000-a133-3899676b92f9', N'Give credit where credit is due.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ec2efa30-d6c2-41a7-a10b-b88a37321301', N'Give him an inch and he'' ll take a yard.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6b748c63-f5cb-4318-81dc-ed8d86f7d6cf', N'''''Give me a haircut,'''' Tom said barbarously.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4dd16a75-1cdc-402e-a0c7-4f09240358fc', N'Give me some pre- packed cheese slices, said Tom craftily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1f48dc69-786b-4474-86ed-d2e9808d38c6', N'Give neither salt nor counsel till you are asked for it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'988496cb-c019-472a-881c-9d91fee171f6', N'Give the devil his due.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ab7164fb-74c9-4f61-a3b0-e7bf990036a0', N'Give, and ye shall receive.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5095e8e4-dbc2-4e10-96ea-439c6b4211ac', N'Giving praise is when you let off esteem.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'24ad3960-b593-4bc7-898c-a44b0b6dfb94', N'Glue inventors have to stick to it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'724776a6-6b81-45f6-a1f2-f1e466849f10', N'Go ahead, correct my typos. I'' ll make more.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4e3fc8b6-8542-4415-a553-fb205c23b17d', N'Go away, you snake! Tom rattled off.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'26811b8e-fd36-4618-b533-ff03da2724b8', N'Go with the flow.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd7d27579-de90-4c0a-b43a-da428a08fa28', N'God cures and the physician takes the fee.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'740cdfea-b8ac-40be-91de-dad85d36da18', N'God is on the side of the strongest batallions.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'84695022-f740-4ef5-900f-9151c4d0b099', N'God never closes one door without opening another.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7f7aae9b-5498-4ac9-bef3-1233c629cec4', N'God works in mysterious ways.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8c487249-eec3-427f-a6c7-7ebbb95053c8', N'Goddard couldn'' t be reached. He was out to launch.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'866487e4-60d3-4432-a6d6-8a522054f2b2', N'Golden Rule: He who has the gold makes the rules.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'80d6a767-a8b5-4c83-b2bd-440e648f1f11', N'Golfers hate cake because they might get a slice.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'397905eb-9f16-4e88-8426-146ae7944e5b', N'Good blood always shows itself.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'57c005dc-3621-4d1a-9bb1-65262c3ad3e1', N'Good clothes open all doors.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'56ca3206-54ef-4cd2-b5f8-61ff657dc519', N'Good eating deserves good drinking.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8b226b48-67e7-470a-817c-17ef8d7bd5bf', N'Good fences make good neighbors.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'033dc746-bc4c-472c-b62a-bef36d11ebf9', N'Good girls go to heaven. Bad girls go EVERYwhere.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6ceb7430-d9fe-49df-a797-0456f68148a1', N'Good laws have sprung from bad customs.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b902868e-c817-4499-84da-b1bed4bbf9b0', N'Good men are hard to find.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0723dc99-691e-4a0b-ab50-ceae79bb0a58', N'Good police officers never miss a beat.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f4cfac25-0a41-46d0-aa33-a0215f74fd42', N'Good riding at two anchors, men have told, for if the one fails, the other may hold.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2efcb75f-5e27-4c7c-b7d7-13c192e3bb19', N'Good swimmers are often drowned.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ce7d0e55-7b09-4161-bdd3-edc831aae415', N'Good wine needs no bush.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fd79bc51-cc6d-48ca-a747-0b6b5a798cfa', N'Goose, gander and gosling are three sounds but one thing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f4f0eccb-49f1-4a12-86cc-f1b0706a7e24', N'Got my Uzi, got some Scotch... let'' s go to Disneyland!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'594864a4-0b46-4ae7-86bf-6ecd5bca5452', N'Gotta run... the cat'' s caught in the printer again!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0155ada1-5d22-4cfc-a169-80a5f1b192fc', N'Governments absorb 100x their weight in excess liberties.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0873265e-a2a2-444c-b978-28a57bc0fefb', N'Grasp all, lose all.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'03754b22-4d72-4298-8e5d-a9eedb58fcf2', N'Graveyard workers really dig their jobs.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e69e7008-557c-4aa0-a0bb-6e1a16c86a94', N'Gravity, it'' s always putting everyone down.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'335d8796-6de9-42ab-93f5-94854530a372', N'Great beer bellies are made, not born.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'85bb350f-5f49-4b17-b071-25103ff88133', N'Great events cast their shadows before them.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4f67b1e7-ec58-4506-bddc-754827416751', N'Great minds agree.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'969ddb60-b079-4f13-95d8-792a09c752d6', N'Great spirits have always encountered violent opposition from mediocre minds.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'99c1fece-cd7a-46ae-9751-174d26e27160', N'Greeks can'' t stay out late because they have a Corfu.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'df7ddd97-d561-46e1-894d-01d51b1fb223', N'Greys Anatomy has many humerus remarks.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9b84df0a-96f2-48f9-801e-5253319141f1', N'Grills are a hot item.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5c47790e-114d-4895-9b52-7236cac70b99', N'Guerrilla warfare is more than just throwing a banana.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4fc8ee5e-9425-4172-b581-c0c76f2eb290', N'Gunpowder was invented in a flash.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1034e2dd-5e79-4278-8d2d-dbbcb0916650', N'Guns don'' t kill people. Bullets kill people.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9b0b4430-7b6c-45da-9981-21a8b81173ee', N'Half a loaf is better than no bread.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ed01cf56-bc93-4fca-916f-0588683a57cb', N'Hands in Prayer: Already Digital')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'48175826-4d8d-4462-8a65-27451befbe6a', N'Hangmen always keep their customers in the loop.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0e542bf1-ecb6-43b3-bdcb-002a80b7d9d4', N'Happy Halloween! Tom said gravely.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'512932aa-5a9a-47ff-97d0-05c89c4dd1e1', N'Hard words break no bones.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aa4f37c9-b5f8-4279-9fd5-c608dba2c13b', N'Harry and Clem the carpenters, argued mightily on how best to complete the dinette set they were working on. They finally agreed to table the discussion.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e53169ed-a7dd-4d38-8950-a3d800d60344', N'hAS ANYONE SEEN MY cAPSLOCK KEY??')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fb89b015-0bae-416b-a505-24147cd97f9b', N'''''Has my magazine arrived?'''' Tom asked periodically.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'95f465b4-a99b-4f00-9202-4e658e649188', N'Haste makes waste.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'403e1503-dc92-46ec-9efc-3f5f381e218b', N'Hasty judgment leads to repentance.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'54ae34ec-eb2b-4002-a1c5-f918c8b541b0', N'Have a cold? Let me introduce you to Doc Jack Kevorkian.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8bbf8683-785c-413a-8155-f50c7f89464c', N'Have a ride in my new ambulance, said Tom hospitably.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'de54006b-88e5-45d1-aaf7-40b5851e647d', N'Have an adequate day.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'50a5a3db-ec4b-498e-b1c9-b7488c459250', N'Have an optometrist run for president, because they are people of vision.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'839eb7fb-b57e-47d6-a8bc-37f09a033cad', N'Have another soft drink, Tom coaxed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f1638918-f9e4-4dc2-be61-c0d926456255', N'Have you ever been whitewater rafting? Tom asked rapidly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1a125f56-bdf9-424e-b637-828f5a9cbe90', N'Have you ever heard of an honest cheetah?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'27936de5-c2de-444b-90c4-7aea7aa72555', N'Have you ever read the Rime of the Ancient Gardener? It was written by Samuel Taylor Foliage.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd9e70b29-b4a5-471b-9f44-b03ba8721195', N'Have you ever wondered why baseball players get girlfriends? They'' re great at hitting it off.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1e1153bf-64d8-4778-a756-c89d0de9c893', N'Have you heard about that online origami store? It folded.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4f4eff3c-1791-45be-988f-8d595ecb3aa7', N'Have you heard the joke about the bomb? It had no impact.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f31f58bc-7986-45eb-a788-12c700420b65', N'''''Have you seen my collection of ancient Chinese artifacts?'''' asked Tom charmingly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5f3d467c-b9cf-4556-b658-426bfd241ae0', N'Having a rude waiter at an Ethiopian restaurant just adds insult to injera.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'21e653fb-f840-4f75-858a-be2bc9d7fa1d', N'Having too many axe- like tools to do a particular job only adze to the confusion.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'efbaee6a-00fb-48a0-b177-f10eb51ad8e8', N'Having too many vowels is a consonant struggle in the game of Scrabble.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6296fbf3-e670-48ad-b29e-a8880f7f03c2', N'He always called his girlfriend his'' luck''. Until he decided to push his luck.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'766fb0be-5323-4c5c-b159-1e74003b213b', N'He and his partner made knives, and they shared a cut.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9a9c6cf4-16fe-4c3f-becb-551b9b5b7dc4', N'He auditioned for a part as a trumpet player but he blew it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ed456086-1a5f-421f-a869-ddb2ef27dd8b', N'He avoided funerals because he was not a mourning person.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'63a987e9-be07-4e57-a760-9539ad00c702', N'He became a sky diver out of the blue.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7d24df42-5399-43f0-912a-a1a985b7bb47', N'He became an astronaut and had a blast.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ee1b4c4d-c1cc-4ed9-9144-56cb6adf829f', N'He bent over to pick up a sieve and strained himself.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'48f3c7f1-a65a-4442-9238-0006a96e9316', N'He bought a donkey because he thought he might get a kick out of it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c6589a05-c110-4d4c-b55f-d200ae0dc608', N'He bought a plate with four corners so he could have a square meal.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7095eef0-b118-452d-bafc-1c3bb1082137', N'He bought a rope factory to tie into his empire.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd3d9c4a7-07e8-4b01-a59b-cd8747a8cd3e', N'He bought lots of pens before starting his new job. He wanted to make his mark.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4209bb74-00aa-41f7-bca0-23f1fee3ae6a', N'He bought the drum for a great price, it was a steel.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'af157515-100a-474c-8c7e-1dacc8bdef16', N'He collects mouthwash bottles, and they'' re all in mint condition.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6330d92b-4a84-4518-ad95-8f98adb43a35', N'He complains wrongfully at the sea that suffer shipwreck twice.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'95ccdd29-a071-4422-9677-c63a96093816', N'He couldn'' t decide whether to accept a job in mattress sales so he decided to sleep on it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f841b778-772e-4d8c-ac47-b848f819e94f', N'He couldn'' t sell his pirate ship because it was unassailable.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a098e0c1-f610-4463-9b61-c33ca8010892', N'He crashed through several windows, but felt no pane.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b382ed1d-d4be-4d31-88d3-9eb4455d28a2', N'He cussed in his sleep all night and woke up all swore out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'13d4640e-be58-4d9e-be33-69888a24d335', N'He'' d never gone hunting but decided to give it a shot.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'37523a1c-6a07-480f-bbdb-e26e71a9a391', N'He didn'' t want to volunteer for the rodeo but he got roped into it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3dc0b538-3c00-4d77-82b5-440d11ee7502', N'He died leaving 100 clocks. His son is winding up the estate.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2a301cb8-9f07-44fe-8042-040d3c4be898', N'He does the work of 3 men.... Larry Moe& Curly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'12f15352-0e28-41f2-85fe-88c8443a2468', N'He doesn'' t talk much does he? He'' s just a little horse.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'272db4e3-7422-408e-b033-d13a19308063', N'He drove his car until the day of wreckoning.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'35effb9a-2e5f-4594-a7e5-9622752c1a64', N'He folded and straightened the money because he wanted a tidy sum.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b8e8cb4a-d99e-4833-bd94-6e51c3c8ef12', N'He frequently practices furtive looks to operate at peek efficiency.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'feee0336-8bc1-49fd-8951-24877f5e599c', N'He gave up playing chess, and went on to a checkered career.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bed7b43e-1dd0-4f07-b193-0c9215a7a3a8', N'He gives twice who gives in a trice.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'10c39a76-6fb0-4ca4-9f62-b5bb54d2f701', N'He got a job in a factory making needles, but soon got stuck.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'13d8a6b7-778a-4b43-8fc3-b4cd80be5059', N'He got measles in jail when he broke out one night.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'94672c50-00e5-4dda-bc2c-e593a5548bd0', N'He had a difficult time bouncing back from his bungee cord accident.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'50f2596a-7f8f-4c1b-85c5-4ca01e924385', N'He had need rise early who would please everybody.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9bbbd7fc-895d-4347-b933-d30d1d7417a3', N'He had to learn what the measles was, from scratch.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fd216e06-7745-483c-849b-8d0304be960a', N'He had trouble in his new job making tents and got himself into a flap.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f37771be-2523-482f-b775-2e2bc5364f3f', N'He has been a jogger for three years running.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e2f50ebf-444a-44ba-9a2f-27eb7503cec9', N'He hates his job selling used cars, but it'' s just his lot in life.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e39deb5b-8048-4791-ade0-59b71a498660', N'He is an excellent soup maker. You might say he is consomme professional.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f400f1e8-9636-4ad9-b384-d889815c2fc4', N'He is my friend that succoreth me, not he that pitieth me.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'53b5c96c-6a04-4127-bd72-34e60f6d60fb', N'He is my friend who grinds at my mill.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9078d359-93be-4081-885e-755db398dfd3', N'He laughs best who laughs last.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7b859cca-5fab-4c7c-91ce-30be4855f345', N'He lit the arrow head because he wanted to fire it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5ed2a4b7-7ea3-4c35-abce-b136cfa2de75', N'He made a slow start in the sport of weightlifting but he picked it up eventually.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9601e807-e0b5-44e0-aa64-7fe479fc0c78', N'He made so many mistakes that he had an err about him.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b8d5ef43-0d7d-4589-89a0-dda3a9729140', N'He only knew how to drive a fork lift in reverse. He was the backup man.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'42fb2dde-16fa-4c8e-9bd4-cdfe01112c2d', N'He owned a fish farm until he poured out his sole.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ec517d2c-c119-4e9c-ab49-3d81af05106f', N'He put bug spray on his watch to get rid of the ticks.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a9e04e25-9a01-43bb-b284-e8b9d8e08d0c', N'He put so many blanks in his document that he started to feel spaced out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'695a49dc-1a95-414e-97f3-f3c7aabfbba6', N'He realized he'' d made the major leagues when it finally hit him.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3c353010-cade-4f71-98e2-00ab1de73aa6', N'He recommended the restaurant to me, and said he had no reservations.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'15819d5f-59c2-4c04-a803-c97a05cfee76', N'He rose through the ranks of the International Corn Growers association, eventually becoming a kernel.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2d4e4c1c-5443-43cb-82eb-83f68f320f09', N'He'' s a good letter carrier. He always keeps you posted.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'320571e4-c13b-4833-88c3-a4437295a14e', N'He'' s an ill cook that cannot lick his own fingers.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7b804516-751a-4e41-b806-e2566d2f7f6f', N'He'' s dead Jim. Grab his tricorder. I'' ll get his wallet.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8755fb6e-2305-4161-bab5-73dfcfcc63ff', N'He'' s dead, Jim. Kick him if you don'' t believe me.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a557b499-b3f4-4774-b91a-5b70945c98e8', N'He'' s not dead, he'' s electroencephalographically challenged')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd3223b6e-b5cc-4ea5-9655-7cb6c8c11c82', N'He said Wii.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e56f94d7-872c-4659-a390-122357832d92', N'He sat in the magician'' s audience dressed as a cactus. He was a plant.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'29b0737b-4d10-4252-ba30-a11bf3a80afd', N'He shined a police officer'' s shoes and had a brush with the law.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd83cc9b8-bf73-4d6c-ab9d-3aad88d80214', N'He sold candy and chocolate. A lot of girls were sweet on him.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a1e947cb-f59a-4888-b1f5-877800f86f78', N'He stared at his belly button so much, he was promoted to navel officer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'37d10c74-3769-47b1-ba77-dbe4747b03a8', N'He stayed at the auction to the bidder end.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4f63a635-b1fe-468b-b144-72bc945f0fc0', N'He stole an invention and then told patent lies.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'11cfbf7b-d3b3-4952-a484-9d72b9176921', N'He stomped on his old watch because he had time to kill.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b2fc93c6-8adc-4675-a5bb-253beeccd786', N'He studied water purification and had a great thirst for knowledge.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e269f65c-397a-40d7-a338-76f301f3b581', N'He that can have patience can have what he will.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0def8546-1715-4135-a02b-0f06ab04c287', N'He that hath a head of wax must not walk in the sun.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9c9309ad-4fd6-4e74-8ffb-2f6a252f0274', N'He that sows the wind shall reap the whirlwind.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fe519beb-60e4-44d6-a685-a6e3c0968765', N'He that stays in the valley will not get over the hill.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'988d061f-1f02-46a4-bda1-abf5ec4249a4', N'He that steals an egg will steal an ox.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ab3f4cb5-40ee-47c3-8b51-6bf11a325655', N'He that swells in prosperity will shrink in adversity.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6dc2e609-e3de-4666-89df-1f57648f2253', N'He that waits on another man'' s trencher, makes many a late dinner.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'519f9171-22fe-4f79-9c6d-6045a4b74983', N'He that will not when he may, when he will he may have nay.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'72778e88-c2e9-4c10-91ed-4716d0d349b8', N'He that will thrive must first ask his wife.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0d684682-9f48-49bd-8f66-006f601dc366', N'He that would eat the kernel must crack the nut.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a4fd84b5-ae07-4af1-abc2-7c56d8866277', N'He that would hang his dog gives out first that he is mad.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1c9c157e-2b72-42cf-a38f-868d78a00183', N'He threw jello at his wife, who had him arrested for carrying a congealed weapon.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c8802b65-74eb-43c7-8845-034f718217ee', N'He threw snow in his neighbor'' s driveway and shouted, DO YOU GET MY DRIFT?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b2e77e12-165a-4596-be7e-54d5d0b172d3', N'He told me he could eat a 32 ounce steak, but I found that hard to swallow.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'58af3bad-f5d1-4628-bf4f-32fb08da3818', N'He took a nail to the volleyball game because he wanted to spike it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'290741ac-0559-4e17-ad4f-78fb8dbe4f37', N'He tried to sell me glass with imperfections in it, but I saw through it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cf28f3dd-a1d4-42ef-8e6b-895e215ec2d7', N'He wanted desperately to be a good golfer- you could say he had a driving ambition.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bbbb805b-ab2e-4d95-a854-350d31612e07', N'He was a janitor in the restaurant. He did things under the table.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'67e6e831-c11a-4206-bd59-6c81557a2df8', N'He was a Red Cross donor until he went out of circulation.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a6c55239-da82-4d35-81e1-9f72ff3bc9de', N'He was a restaurant critic but had no taste.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c8c67bc6-2974-4fae-92be-00796d8511ac', N'He was able to listen to his favorite radio show in the morning because he had an AM radio')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b7a2b2fb-50a2-4f52-8eda-597ba9c4b603', N'He was almost persuaded to invest in a poultry farm, but chickened out at the last minute.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'be04c599-c578-4030-ac66-541b561206b7', N'He was facinated by his new welding job. It was riveting.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8ffdbb3a-a1d2-4a34-9c80-97b53bd3f5ae', N'He was hit on the head during a hail storm and was knocked out cold.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'87fd3c2e-6567-4e41-80eb-944039e271da', N'He was selling palm trees, but people thought it was a shady deal.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ff10dbf5-bd47-4c11-9096-ebde394d1f53', N'He was the most dishonest and cleverest card shark in the city, the police said he will be dealt with.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'31e3d7b5-ad2a-41b5-8b11-add80fd9b940', N'He was trying to sell me new windows, but his motivations were transparent.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'90f2611f-65ec-4c98-80e2-d4f965557324', N'He wasn'' t supposed to eat the pie but he kept pecan at it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f6f7a285-32e2-4c14-85da-e66ae9c36741', N'He who does not advance goes backwards.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'61c9d77b-1412-4c8a-ba6e-a14edab93a68', N'He who hesitates is bossed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ae8205b0-fc0c-47d0-95a7-98a55f9a3fae', N'He who hesitates is lost.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'63ed7955-557c-4de4-b26e-3c308606cea2', N'He who hogs the sheets is usually very wrapped up in himself.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c54e6bab-af32-4b56-8e04-08484af57ff9', N'He who is not with me is against me.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'51eb6019-c35d-4ce9-a78e-432398abb4e0', N'He who laughs last... had to have it explained.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bd2cdf4d-fd1f-420d-9478-98f3b54869c2', N'He who lends to the poor gets interest from god')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'125f2d8a-608c-4b37-aa75-c1b92b57ec3b', N'He who makes false teeth is an indentured labourer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fb21b2ea-a462-425f-ad56-8312e4c03cb5', N'He who takes credit for rain will be blamed for drought.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'418fb755-362d-4a51-9e97-750f460cbee4', N'He worked in a chocolate factory, but always took his sweet time.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e1df0383-6fcf-449d-9c72-ad2088575e0b', N'He would promise to play golf, but he didn'' t know how to follow through.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'affc2ee3-fa2c-4b81-8e54-9407ecf13485', N'Health is wealth.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f366d5c4-310a-4920-ae58-9655d06e250d', N'Heart surgeons never bypass a good opportunity.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5b977712-7350-4316-a2d8-a5ebd6ca23a6', N'Hell hath no fury like a woman scorned.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd7ddeb9d-f9d3-404e-a243-103c80706fb7', N'Hell hath no fury like the lawyer of woman scorned!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f5bd259b-b496-412c-9c53-5d8a5488e860', N'Hell is full. The damned are now in Tech Support.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3e1eb97c-6d3c-4d73-a0ee-1977f38b7304', N'Hell! I thought I’d gotten away with it!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'862bbc0c-e027-422b-8c39-900412b34df5', N'Hell! I thought it didn'' t matter what you believed as long as you were sincere!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'467ce446-77f1-4b4a-b151-184396fbbb75', N'Hell!... I’d forgotten about that!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4ea8f298-65e4-47ae-8f44-923cce199877', N'Hell’s the pits')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ac0b0c30-9acd-4ac2-bed1-dc1325cbad37', N'Help stamp out, eliminate, and abolish redundancy!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8e13e9cd-77d1-49fc-b78d-6e009456f88a', N'Henry perfected the Ford down to a T.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e160dde2-75ef-4347-bb33-0a37850e6696', N'Her decision to take up rock climbing was precipitous to say the least.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3c307857-f368-4284-8ab3-0ffd4a2fb40b', N'Her exam was on the human skeleton, so she decided to bone up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3375d132-d238-4be8-8c52-df221bdbe313', N'Her eyes were wide with longing as she peered into the Dunkin'' Donuts box and ate the last doughnut whole.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2f787dcc-4291-4622-acbe-4524d37ee526', N'Herb gardeners who work extra get thyme and a half.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bbe21546-c8e0-42e4-acf4-60c47c52a890', N'Herbivores come in browns and graze.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'696ef79a-f337-4252-951d-512b075dc078', N'Here is how the track meet is going to run...')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e3ce38e9-6750-4c2a-8057-12e3e161cfe8', N'''''Here'' s your allowance for the next two weeks,'''' Tom advanced.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'43345d78-f9af-4ca8-9cd8-ea1e87e0bab6', N'Here, you go first, you'' re immune to bullets.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'23094b60-55f7-4f2c-938c-46e3040de0c2', N'Hey!! These cookies don'' t taste like Girl Scouts!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0d7d38eb-55e8-4842-8fcb-1b65a6310c33', N'Hey, is this yours? Your dog left it on my lawn...')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b6ce1509-440c-4bbc-af78-e37f0825462e', N'Hey, wake up! It'' s time for your sleeping pills.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f4ba8d89-7574-4ff3-bc3a-ec13f79d6b13', N'High on a ladder he saw a beautiful girl below. He fell for her.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6463a625-98b1-473f-baf2-f5acdd59e6c6', N'Highways today are much better than they were many years ago and there are lots of concrete examples of it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c88869c6-168e-4d1d-9c1e-9b9c18b0aaf0', N'Hindsight is always twenty- twenty.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2c19805e-0b85-4a4d-bc21-7849e798d8bb', N'Hire teenagers while they still know everything.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2926a8a1-edbd-4808-a17e-f71c0e999a65', N'His affection for her was more than a passion interest.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'861046af-2221-4cbb-be2a-46b22556b2a8', N'His business plan to manufacture scissors just didn'' t cut it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'218b2ad0-0808-4e92-aa4b-b3d807f9fc3b', N'His day job was astronomy but at night time he was moonlighting.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f5f5e945-334f-4a24-9919-c15780468256', N'His model airplane hobby really took off.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0827bfea-104a-4109-9e60-420ff4c28352', N'His plan to manufacture pencils just didn'' t draw attention.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'42ec561b-c12f-420c-9b66-baeae4fece9d', N'His qualifications as a math teacher didn'' t add up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'721404e0-33c4-41b0-a270-ce6a29828b4e', N'His wife left him saying she was going home to mutter.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'62c3bc6c-088c-41c7-afcb-28c0431c99c7', N'His wife loved pottery making but for him it was just kiln time.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2596be19-65b2-4d7f-a7c8-50d470c12350', N'History is a set of lies agreed upon by the Victors')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'23acdfc0-8b03-41e6-b91f-db2b475fb7df', N'History repeats itself.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2006457f-ef13-4b9d-8878-b599cbf945b3', N'Hmmm, fence must still be down over at the funny farm....')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a59f1d4c-5e17-42dd-b406-913e4877b11d', N'Hockey players are terrible chess players because they are always getting checked.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'84c434f0-1125-4349-b2d0-3f4df25c99cc', N'Home improvement. Take your family to church.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cea3b39e-960b-4684-94cf-f8443a80a993', N'Home is where the heart is.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a008c712-3367-4a94-a8b8-9a4611afc430', N'Home sweet home.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'446de39d-3807-4bb1-8ae9-513a99fbc263', N'Honesty pays, but not enough for some.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'062f01d0-da64-4df8-ba9a-73e15f19cb2a', N'Honk if you love obscene gestures.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6b6a0a76-0bfe-46a8-9bd5-11e3829af1c4', N'Honor your mother and father rather than major credit cards.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'13193a30-d37b-48e1-aa46-9071c169718a', N'Hope for the best, but prepare for the worst.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd42cacfe-8eed-4284-bab9-98c422c68f0b', N'Horses eat best when they don'' t have a bit in their mouth.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f0e51075-a680-454b-b314-4eae093e364f', N'Hospitals that buy in bulk get a valium discount.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b1f43ad0-2638-4eb1-9f9b-8690b873a28b', N'Hot water Heaters: hot water needs heating?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f46e1a3c-0382-4dcc-994a-6463651a4847', N'Hotel owners usually have suite dreams.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'059dab51-bfb0-4874-b69a-09e18c68f1eb', N'How can you be so deaf with those huge ears?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'de74d567-df7d-4ab1-bc06-e31b7fa2c8d9', N'How come wrong numbers are never busy???')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c0d036ee-469a-4d1c-8381-01b58de5e449', N'How could I trust the ceiling fan installer when I knew he was always screwing up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a0277bf9-a30a-4896-9452-52287ac66ee1', N'How do bunnies that don'' t have a car commute to work? The Rabbit Transit.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cab11daa-4efa-413a-ab9a-9415d66fc298', N'How do farmers make crop circles? With a protractor.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e0cce611-c6bd-4f7d-adb1-9e2d58bbc258', N'How do I handle change? I put it in the parking meter.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'44df20ce-bc4c-4b17-939b-2498933aa085', N'How do spacemen add more protein to their diet? They make it meteor.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6fe12b37-c828-4ede-8957-c85413641a73', N'How do they get Teflon to stick to the pans?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7d3a66d3-6b00-432a-a318-6cf54e4fc823', N'How do they get the deer to cross at the signs?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'35eefa5b-5d62-4e45-9f3d-97aab0b0381b', N'How do you find a missing train? Follow the tracks.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c961fc23-bfa3-4847-8d02-e610ed64b2bb', N'How do you keep a turkey in suspense?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fa5609f4-c41b-4124-88ab-3999886cfd6d', N'How do you know if you run out of invisible ink?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7bf37877-7722-4ffb-ad16-3fbe2f1f0e9a', N'''''How do you start a model- T Ford without a battery?'''' asked Tom crankily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ffaad9e2-7165-4ada-91f1-2e81ce71c2f8', N'How does a card player party? They shuffle.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4df90bc3-0f5f-40e0-a38d-c54dbbdc8281', N'How does a Welsh man eat cheese? Caerphilly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a7d79533-ca0e-4658-83e7-08d1694b7695', N'''''How long will I have to wait for a table?'''' asked Tom without reservation.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'08d792ab-5a86-4eed-8dea-a036eec484f0', N'Hubble wanted to bring the idea into better focus.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c81f9776-3c95-4161-8b61-0a71aec7d830', N'Humpty Dumpty had a great fall- and a pretty good spring and summer, too.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd0fc672b-d371-4cf7-963b-922f907c17b2', N'Humpty Dumpty was pushed! Well, I saw it on X- Files....')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1dc5e506-4598-432d-8859-114ff51c303c', N'Husbands are like fires. They go out when unattended.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6a6d3081-1fca-4e68-a2ca-eb212ef79c80', N'''''I admire East End gangsters,'''' said Tom crazily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0e8dc823-3ba3-4107-b626-fc4d7334cd79', N'''I agree with you wholeheartedly,'' said the artichoke grower.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6f0ff7ba-b2dc-4104-97b0-735aea8c6ded', N'I agreed to watch my neighbor'' s dog, but only if it didn'' t scratch me. It'' s in the clause.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'77146787-e1e5-4de9-b525-db78b4365b6b', N'I always believed my body was a prison for me. I was right, in biology I learnt they were made of cells.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4e38be69-33a0-4db0-a86a-6124cdd1d1c9', N'I always had wanted to know how ships really worked, and now I finally was going to sea.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e9dbbd6d-76f7-40b0-96b9-ca7085f83311', N'I always pray to St. Ignatius, said Tom loyally.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0719655c-5763-4e93-a634-6e41a0489f5a', N'I always prayed before my trigonometry tests. I was hoping for a sine from above.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'72c1dde4-58fb-4b8c-927e-1e40f00f7726', N'I am Bullwinkle of Borg. Prepare to be pulled out of my hat.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bd1f2559-f427-4ffd-bec5-9134c8171faf', N'I am in total control, but don'' t tell my wife.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ce98f025-efca-4f2b-9430-914f54fb1233', N'I am kicking myself I did not take up karate earlier.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3f39ca14-7aa9-47b8-9686-de912b31beca', N'I am not 40, I'' m 18 with 22 years experience')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4df4d1c5-172f-4054-ab4e-fb2bf91e289f', N'I am not young enough to know everything.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'47c319ef-083a-4385-ba2f-336d3db20677', N'I am the Marlboro Man of Borg. I( cough) will assim-( choke, wheeze)..')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5bec20ab-f12e-443e-973b-245ca177789f', N'I before E except after C, huh? Weird.....')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2420b6ce-be92-4a22-8f9f-c15d37145d35', N'I bought a metronome for 20 bucks. You can'' t beat that price.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5a3ed568-dd36-4e49-a0fa-3328790cfcca', N'I bought me some of those new paper shirts. I don'' t like them- they'' re tearable.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e3459e31-ec07-41d2-82ed-3b848e31a7ee', N'''''I bought myself fifty hamburgers and I'' ve only ten left,'''' said Tom with fortitude.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'af4a85fa-a560-43c5-9d30-47cddd180c87', N'I came, I saw, I confused.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b502f65a-8672-48ee-a2dd-c1651a7479bd', N'I can do an excellent impression of Sinatra, said Tom, being perfectly frank.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'878d861b-0d2c-4576-867d-1cde5657b062', N'''''I can eat one hundred and forty- four,'''' Tom boasted grossly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9bbf93a6-0ae8-4b00-aec6-cd436c38fc27', N'I can Harley wait to get my motorbike license.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f8c6617a-8fb2-45f5-8783-33abb698976d', N'I can keep a secret, it'' s the people I tell who can'' t.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'727a5c74-a7fd-44f8-ac4d-b9a8f36f0be6', N'''''I can no longer hear anything,'''' said Tom deftly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ebe78c0c-5564-4513-8aa7-e8243dee416b', N'''''I can see through the window,'''' said Tom stiltedly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c28a54c1-8819-43da-9db8-56b6c66eda9f', N'I can SPELL, I just can'' t TYPE worth a hoot!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f401d98a-93b9-43d3-898c-5094581b67fc', N'I can'' t budge this huge box!'''' I exclaimed.'''' Of course not,'''' the office supply warehouse clerk replied,'''' it'' s stationery.''''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'baa27144-39db-492c-a5f0-28556ee704cf', N'''''I can'' t march any more!'''' the soldier called haltingly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6988e270-f7ec-4439-a94e-35ca7a56b740', N'I can'' t really see myself without eyes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'59aa458a-1ab0-43d3-94e5-4a2cdf2983d6', N'I can'' t recall the last time I did any running, but I'' ve been jogging my memory.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1aa45321-ff58-43af-8bc9-076b9edf11e4', N'I can'' t remember ever getting nits as a kid, although I do have a lousy memory.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'892128b5-aba8-431d-8141-6a3049624456', N'''''I can take photographs if I want to!'''' Tom snapped.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'190cd6f0-8ea8-49b5-b770-694a722e14f5', N'''''I can tell which way the wind blows,'''' said Tom vainly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3562c15d-fa4d-4baf-b437-34e00ac735f1', N'I choked on my dessert and decided to sue, so I hired an attorney who specializes in tortes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'80ccf61a-7fe6-4615-9af8-d7faaf4aa5d6', N'''''I chop down trees for a living,'''' said Tom lumberingly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'35420b62-7986-4bcf-926a-7a88c3a386f1', N'''''I compliment the company that makes the Macintosh computer,'''' said Tom applauding.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bf829a68-f2fb-400f-8e56-d218265a89f4', N'I could not pull out of my parking space, so I used my back up plan.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1af30e78-964d-4741-bfd0-f94f8e946815', N'''''I couldn'' t believe there were 527, 986 bees in the swarm!'''' Tom recounted.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a6178e50-5963-43b1-b731-79594022df0b', N'I couldn'' t decide whether or not to make spiced apple cider, so I mulled it over.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3776e2aa-08ec-40a1-9a5a-5e4007ca040d', N'I couldn'' t figure out how to fasten my seatbelt. Then it clicked.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e0367c4f-a974-4fe2-b6dc-7932b1e7f63d', N'I couldn'' t quite remember how to throw a boomerang, but eventually it came back to me.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'103a5d65-aaff-43c0-8c87-bac8dcb3add2', N'I couldn'' t stand to be without my legs.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'508d2267-0bd8-4d39-873c-1522c2f7999b', N'I crossed a cell phone with a skunk, and now the service stinks.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9aaf7101-805b-4909-aec1-65af639e3259', N'I'' d give my right arm to be ambidextrous.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4e4c03b8-a22f-498e-8d5f-dd0c3cb7b7a2', N'I'' d like some Chinese food, said Tom wantonly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'100f4cce-9178-408b-bb0c-de274fb0e964', N'I'' d like to be a Chinese laborer, said Tom coolly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7701b8bd-8af0-4f90-8f04-b29215499416', N'''''I'' d like to be a Chinese labourer,'''' said Tom coolly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6f4298ca-3ff4-41d4-829b-8af80a6e8210', N'''''I'' d like to eat seventeen cakes,'''' Tom agreed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'58d66cbf-b15f-4adb-b45f-d94407714017', N'I'' d like to learn a new card game, Tom said wistfully.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3ad8b536-d98e-4f9f-9c56-ce0c7662bba6', N'I'' d love to change the world... if I can get the source code.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5ad2e854-8628-4695-839b-414dcb3a3675', N'I'' d love to, but I'' m observing National Apathy Week.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7b34104a-9173-40ee-ad86-831476c199ed', N'I'' d love to, but I'' m teaching my ferret to yodel.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cde4f578-5b28-4c91-a37a-d8b38ce6fc41', N'I'' d love to, but my bathroom tiles need grouting.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'397205cf-dc09-4c3f-83d3-93017b20c8e2', N'I'' d love to, but my favorite commercial is on TV.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a9fbfb87-43c3-4822-be58-560a09d44699', N'I'' d love to, but my patent is pending.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'00d9967f-83b9-4449-9b81-bb427efd6762', N'I'' d love to, but my uncle escaped again.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'12178cf6-c518-4220-a7c0-fc14126b5cef', N'I'' d love to, but the President said he might drop in.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3923f3c7-1c1f-4740-94e3-50725f6956bc', N'I'' d really like to know whether her collapse was due to a serious illness or whether it was one of her usual feints.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b504a1c0-52ee-464e-a92e-771c84a44152', N'I'' d tell you a joke about a cow but I always butcher it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'88943f1b-b0f6-442a-b75f-f99d01fae70e', N'I deny everything, said Tom knowingly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1f3c313a-d736-4909-9a49-85270d50ee3a', N'I didn'' t have the faintest idea as to why I passed out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fed0664f-1559-48d5-863d-53557faeae38', N'I didn'' t know which hammer to get, but I think I nailed it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ee8c1e85-5ff2-485a-b5cf-081e6a2a3fa8', N'''''I didn'' t look at all!'''' Tom peeped.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8cec3cae-d8a4-4af3-8cf9-88b15384ef95', N'I didn'' t understand the math, so the teacher summed it up for me.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0ea3db75-3107-4f8e-a844-a4330ce4900a', N'I didn'' t want to buy leather shoes, but eventually I was suede.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'228cc5d8-ca9c-4239-b544-09a664f2b0c8', N'I do a lot of spreadsheets in the office so you can say I'' m excelling at work.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'234d6484-1ca3-44ec-9dec-584bd5d957ff', N'I don'' t find health- related puns funny anymore since I started suffering from an irony deficiency.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'30fe5ce4-16e5-4667-9905-a3a48c071f84', N'I don'' t have a solution but I really admire the problem.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4746659e-40bb-4c22-9760-f8ab5cc78231', N'I don'' t have all the answers, just those that count.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'efb6e0b2-18dd-4772-919c-486b743ccd2f', N'I don'' t like hanging out at the pancake house, that place gives me the crepes!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'66800f25-e796-4186-b843-ab31e8e6395d', N'''''I don'' t like this Chardonnay,'''' Tom whined.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'db29b7a7-1212-4a3c-8bf4-51a42e8af063', N'I don'' t own any slaves. My wife has one, though.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b7008d10-4741-4603-9c38-92bf4797b475', N'I don'' t recommend dating bridge builders, they have truss issues.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4ac3df1a-9b85-469d-a187-44a66a86a0bb', N'''''I don'' t work here on a regular basis,'''' said Tom casually.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'00b3fa3c-0546-4916-9944-ae67fc8f0fb3', N'I dropped a tub of margarine in the kitchen and ended up with a Parkay floor.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'499f6a43-7324-4fc9-ba5d-138f71fada84', N'I dropped out of my communism class because of lousy Marx.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a5230514-ad39-444d-825a-1da73d332618', N'I feel empty inside, Tom hollered.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'492d3e34-9857-48a5-a8af-5fa4e2e4cbb7', N'I felt sick after I ate the scallopini. I didn'' t veal well at all.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'492989b3-ffdb-4afa-9366-8d3c9f8174b7', N'I finally found a spotter at the gym, it'' s like a huge weight has been lifted off my shoulders.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'318c9990-6f49-4a33-bec6-2c2ed7208824', N'I find that movies about submarines always go down well.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f5bfa051-446d-44f1-a582-3981d5bb861e', N'''''I find you guilty,'''' said the judge with conviction.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b6bf0ba4-0645-4ce4-ad76-30fad8a2baf4', N'I finished my trigonometry exam without a secant to lose.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5fb5c114-aeb1-4b30-9de0-a8539175b8eb', N'I flunked my exam, said Tom, testily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a2edb10d-699b-4468-a0c4-cf63617eadbc', N'I forget the dream, but I'' m missing a pajama button...')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5062a3cb-4282-4e4b-b42d-769cef8e6ab1', N'I fought with Geronimo, said Tom bravely.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'baddb9d9-c36a-4334-aba1-5f286d74b98c', N'I found out that at the gym, their opinion on fitness carries a lot of weight.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fe61889d-8a15-4112-86d3-d8be02bb0c18', N'I gave in when my wife hounded me about getting a puppy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'58e91c4f-ed20-4360-907f-8791f136febc', N'I get my large circumference from too much pi.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'02a1be1f-6444-4eb3-8ad0-66604250359f', N'I got a deal on a new computer, and they threw in the operating system to boot.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6ac285aa-054e-44c7-bdc1-18a79dccc328', N'I got a great bargain the other day when I bought a forklift for half- price. It'' s amazing what you can pick up these days.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'637b3937-3663-4b8b-a37a-edcb62e3071d', N'I got a nasty electric shock the other day, but I wasn'' t phased.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'79eaeece-30d4-4206-855d-132f648dba34', N'I got a small ticket for speeding. It'' s fine with me.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'52a683a5-a506-40d2-84e3-6fe13b52d608', N'I got angry when my cell phone battery died. My counselor suggested I find an outlet.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'00afe4ed-77b1-412a-b9aa-16b0b2a94c2d', N'''I got lost in the streets of Paris,'' he said ruefully.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6275569b-3a5e-46eb-b0f2-729f0f035778', N'I had an appointment with the chiropractor, but I backed out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a627410f-4620-4276-8d14-c315a32e3b73', N'I had some back trouble, but it'' s all behind me now.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c8fce0c2-d3b9-4d1f-8ff3-092c518cae82', N'I had such a bad cold, I thought I was coffin to death.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'065edbbf-7b01-4a68-8d57-d674811f537c', N'I had to pay to get into the annual local carnival. But that was the county fare.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4d5287d2-1304-4b68-bc25-dcc71ac1eda6', N'I hate Chablis, Tom whined.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8031395a-21cb-4d35-9a04-d9dcc1ac5731', N'I hate it when motorcyclists hog the road.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'94503030-c7d4-460a-9151-708c705c5662', N'I hate sweet potatoes, Tom yammered.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7a0c65c1-317a-4a63-b7f4-30a2e5c66a47', N'''''I have a gift for you,'''' said Tom presently.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7987d37f-0966-4140-8cdc-ec12f332c8fe', N'I have a speech impediment... my foot.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'17166895-b179-4106-aea8-c2d56f9fb87a', N'I have always wanted to hand out carts at Wal- Mart. I cannot imagine a greeter job.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'825f76a5-4b62-4505-8610-e8902ce8ecd4', N'''''I have been reading Voltaire,'''' Tom admitted candidly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8274b414-d7c6-454f-9336-d1ab99163fe2', N'I have eight children, said Tom, apparently.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd0b88378-be18-46c4-84a2-5fea65805f83', N'I have seen the data... now bring me some I can agree with')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'edac0170-4a60-45d5-b76f-6ba3abcbe6d7', N'''''I have to check the score on this exam again,'''' Tom remarked.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'85ca8fde-ab89-44bd-9c26-7ca85f0e7437', N'''''I have to fix the car,'''' said Tom mechanically.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'abdd2c88-ed56-4b3a-90e7-c26dae587765', N'''''I have to keep this fire alight,'''' Tom bellowed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b72114cb-c66c-4028-9c44-1982f96be84b', N'''''I have to sing a run of eighth notes,'''' said Tom quaveringly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b3877808-5b34-49e8-a67c-04ccf5bf8869', N'''''I have to wear this cast for another six weeks,'''' said Tom disjointedly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2f01da10-a9d7-40f1-85c1-149f72162549', N'I haven'' t developed my photographs yet, said Tom negatively.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dbd74c80-5738-45ee-9e08-5bf68e4ccad7', N'''''I haven'' t had my photographs developed yet,'''' said Tom negatively.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4a6e816e-0684-4b60-ac35-868f7cc15ec0', N'I hear the Sylvester Stallone Film Festival got off to a rocky start.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4faef959-805d-4ddc-8399-86b3a5a0ec2b', N'I heard about this new governing document that says people can only go to the bathroom one per day. It'' s called the Constipation.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'43ca2a00-b442-44e9-ba35-f5c672029102', N'I heard Einstein got along well with his parents... relatively speaking.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'03895f10-799d-4f28-be99-c4ced0282880', N'I idiot- proof my programs, but along comes a bigger idiot.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ca3c8c7f-7080-45a0-9d06-48cff5685bc8', N'''''I invested in a hi- tech startup,'''' Tom ventured.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'03210b18-5ec5-420c-80af-db853416e5b7', N'''''I just bought a woollen sweater,'''' said Tom sheepishly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a4486694-19ee-4d75-9ce0-1e78a1c74935', N'''''I just came in through the door,'''' said Tom, entranced.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'65a40678-f72c-4745-adec-d2dcac40eb60', N'I just finished reading Newton'' s Principia Mathematica, and found much of it to be rather derivative.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a09620a4-3bc5-46ec-8e40-a89df0e8a686', N'I just got back from a statistical probability conference. It was average.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e75e953e-774d-4b82-add1-70efc1e7795a', N'I just got my permit to harvest shrimp in the Antarctic. Now I have a licence to Krill.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'478df012-2c21-4faf-b028-0dadb108328c', N'I just had some coffee that was good only for its sedimental value.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'671f8439-11dc-4714-91af-df1cdb4e7774', N'I keep reading'' The Lord of the Rings'' over and over. I guess it'' s just force of hobbit.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a927ea6f-8320-40b9-a9b4-7eb58a3258b9', N'I kept failing to get a job as a butcher because I couldn'' t just make the cut.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'de9ced1c-a3e2-410f-9a40-50e010c5add3', N'I knew a woman who owned a taser, man was she stunning!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'28d5fa79-ccbf-451a-8d2d-65999131ec6e', N'I knew that the spirit couldn'' t float around very long. What ghost up must come down.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'32753cae-5959-4e40-b996-50687b83c6a9', N'I know a rancher who has 100 head of cattle, but he thought there were only 99 until he rounded them up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9649dca2-be08-4d75-bb7e-37bb6f2596d5', N'I know road rage is an awful thing but when someone bumped my car I just couldn'' t help it. I got out my camera and snapped at the offender.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'49a5e7ce-8e05-44f4-b435-caab86b55b53', N'''''I know what herb would taste nice with this,'''' said Tom sagely.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'03597639-66eb-4984-96df-3f3e7541a974', N'''''I know which boyd gets the woym,'''' said Tom in an oily voice.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9f2575aa-0a31-4c54-a807-1b98a8ed6a10', N'I learned that the antelopes were coming when I heard the gnus.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9a6180d2-0375-4a8c-85ca-6f7376e0282a', N'I like Chinese detective movies, Tom chanted.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'df4d015a-2eb3-460b-8d5e-94b2346bb74b', N'I like elevators they let me say jokes on every level.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ceed4399-f674-45c3-8a7c-00efd2b7c872', N'I like hot fudge sauce, but never on sundays.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'79d41447-3310-4f10-ba19-cd587dbe7350', N'I like marching songs, in any month.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2207a0ef-7f8e-4bb1-8012-b0b69358dc04', N'''''I like modern painting,'''' said Tom abstractly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e9eca8b4-85af-4105-bdab-7b99d56986be', N'''''I like ragged margins,'''' said Tom without justification.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9afe8ad5-e990-4bad-9a8f-bfbba7c59070', N'I like the latest horror movie so much that I'' ve arranged a private screaming.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2f7ad965-bd35-41a4-a29b-3589f2f579bf', N'I like wool gathering for the shear joy of it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'54c8018b-001e-4114-a620-6a6acd0c32f7', N'I'' ll clean the chimney, said Tom, fluently')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0f6b6a9d-20ec-4f26-9ebd-1e99790fb6a1', N'I'' ll corroborate that again, Tom reproved.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f02910b4-ff02-435a-96f0-b241f05977c9', N'I'' ll eat till I burst, Tom agreed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'402faa87-550f-4a5d-85f3-6822ccf79574', N'I'' ll get to it on the 2nd Tuesday of next week.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cf262309-375d-4c79-8d29-b316669c9f42', N'I'' ll glue the sheets of wood back together, Tom replied.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f0e20fea-fca9-4d61-b527-c17ab36c8150', N'I'' ll have one brain on drugs with bacon, toast and juice.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ab033ae4-44a6-498f-8136-8ac52293dcb8', N'I'' ll have what the gentleman on the floor is having.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1b2ff20b-b798-4b8b-a3a3-e9d564210291', N'I'' ll hear it from the horse'' s mouth.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'43bae9c4-90f9-4151-a234-abf7864e7394', N'I'' ll never forget that rainstorm near Los Angeles and how the rain came down in Torrance.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fa60be47-7708-432e-aa51-0ba305cb0d9e', N'I'' ll never give up my hounds! Tom said doggedly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'01e62caf-c3c1-46b8-a44d-8820b056a0e4', N'I'' ll take that, said Tom appropriately.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bf742d50-3da6-4dbd-8c4b-55045e343a89', N'I'' ll take the girl to the dance, Tom promised.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd44fcf4c-3219-4c23-b10c-e86306525545', N'I'' ll tempt Adam tonight, she said evilly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6202e777-11b8-41b9-83de-4550bfb2d95c', N'I love beagles, Tom dogmatized.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8b8f4d11-d5e9-4a09-ae63-63a3cfb2c0e3', N'I love cats, Tom mused.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'37a7e019-9b2b-4e9e-9913-7af86d3e2d52', N'I love hockey, said Tom, puckishly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd75ea397-89b5-4a25-89fa-44302cf2d05b', N'''''I love hot dogs,'''' said Tom with relish.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bdafef94-291c-4e1e-9180-1cbfa8712e92', N'I love the novels of D. H. Lawrence, said the lady chattily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9f0d401b-2f5a-4070-80a4-33f0a7eacc9c', N'I love to eat eggs at the crack of dawn.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'76399959-a97e-441b-ad0b-e69c3a900995', N'I love your old worn- out jacket covered with all those slogans, but I can'' t read the frays at the end of the sleeves.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f0fc5e1c-e7f8-4a43-9379-ebe21eb35249', N'I'' m a ditch digger, said Tom, trenchantly')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0c573b70-3a88-48a7-ac93-70b0f4f1b3d6', N'I'' m a great opera singer, said Tom, being callous.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'838bf42a-0855-41b1-a4cd-f7c0d2858218', N'I'' m a lion hunter, said Tom, pridefully')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'73b07202-bfc9-4369-8f8f-d7af421621fc', N'I'' m a mathematician, Tom added summarily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd3054a3d-0721-4caa-8592-8c7c5958e4d4', N'I'' m a sap for tree jokes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'31c3e91f-e8e8-45db-979e-d497039f5a28', N'I'' m a Soviet agent in England, said Tom bluntly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd4b94598-fd81-496d-8ba0-f4b60cdcd931', N'I'' m always exhausted by Friday, said Tom weakly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'73f0a30d-16db-4d58-a5c2-f4119057dfcf', N'I'' m blind enough to look at the situation in the wrong fashion, so I changed my clothes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6f8d3d34-a171-4d44-a554-95aaa5f23940', N'''''I'' m burning aromatic substances,'''' said Tom, incensed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'708eeaff-e388-4819-87d2-51a8fc4100c4', N'I'' m buying a birthday present for a sculptor. Can you chip in?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'39370862-3124-4943-a1e4-42278aec17c5', N'I'' m dangerous when I know what I'' m doing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b46c2c9c-ff12-434b-91d7-6a017f075a95', N'I'' m drawn to art.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a880614d-2e2f-4cf0-a26e-67ba50adbee0', N'I'' m dying, Tom croaked.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'384047cd-2765-4d69-add8-272a5b1fd6c0', N'I'' m easy to please as long as I get my way.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'54b7698c-b8f0-4be8-b610-e58765cd5054', N'I'' m from a Humberside port, said Tom ghoulishly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bd470899-d675-448e-95ed-a504c4ae1544', N'I'' m glad I know sign language, it'' s pretty handy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'40d9a98f-c164-4d18-9c55-a3d94c85a22d', N'''''I'' m going after that red fish,'''' said Tom erringly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9b8dd71a-5683-45a4-84d0-5651cb9d4f5a', N'I'' m going to be discussing global warming next week, it'' s quite a heated topic.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4f0518d3-dc32-4b0e-8cf2-75356008ed6c', N'I'' m going to fix the roof, Tom translated.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bb71b6a6-21e3-4303-a10d-19b66bd844de', N'I'' m going to the guillotine at dawn and my wife has already collected my severance pay.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'74694c9a-0df1-4aa4-b043-c1df3482b0e8', N'''''I'' m halfway up a mountain,'''' Tom alleged.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd4e2845e-3316-40ad-b4a7-7f068255d2f2', N'I'' m here- with a gift! said Tom presently.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ff5d7d37-db83-4e4b-89a6-932857794884', N'''''I'' m just an ordinary soldier,'''' Tom admitted privately.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'496f1bc4-fb35-4196-9220-3d25a4989eaf', N'''''I'' m just going to put these handcuffs on you,'''' said Tom manically.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6551d2ac-37f5-4697-90e8-cbaabea65057', N'I'' m just here for moral support... please ignore the gun.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'07caf959-a6de-4521-a34b-4db39d3468e5', N'''''I'' m losing my hair,'''' Tom bawled.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'24eca627-831c-4a01-a58c-272346a7df46', N'''''I'' m mentioned in this book,'''' said Tom contentedly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0aad57f2-6f79-4f04-a58e-2205d06787e8', N'I'' m not a crook, Nixon said resignedly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ac90ed19-b85b-4d32-a79c-2fe3d6ed4a33', N'I'' m not afraid of flying, I'' m afraid of crashing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'84270ad8-7db5-4c38-9bf2-494276989ece', N'I'' m not afraid of heights; I'' m afraid of widths.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd3e1ace4-23cf-4e63-b6df-ceb498c55423', N'I'' m not dead, I'' m metabolically challenged.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a6a8485d-e1b8-4c07-b154-21dc85f86557', N'I'' m not lost, I'' m" locationally challenged."')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4d28f62a-7bd4-4966-8ef1-2b7b00c9a158', N'I'' m not paranoid! Which of my enemies told you this?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3faeab2e-89ac-470f-93e4-e991768fc93b', N'I'' m not rude, I'' m" attitudinally challenged".')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'64c74321-5c03-44b8-9d87-16355da632c8', N'I'' m not spoiled... I'' m not, I'' m not, I'' m not!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bbea3489-614c-42a2-838f-32e45c231272', N'I'' m NOT stubborn! You can'' t convince me otherwise!!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fefd140e-7308-4782-a804-40ecbb75d20c', N'I'' m not sure about Heisenberg, said Tom uncertainly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'14cc222a-7d4e-40bc-909a-f3feb8fca8e0', N'I'' m NOT unemployed..... I'' m a consultant.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5962cac5-57f7-47d1-aed4-874834b6767b', N'I'' m not worthless. I can always serve as a bad example.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a22b80ae-b7d5-4158-88fb-eb785fcbeebb', N'I'' m NOT" white," I'' m" melanin- challenged."')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2c5e3ab0-a923-4cda-a48d-92f0d771c23e', N'''''I'' m on social security,'''' said Tom dolefully.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'762249fc-553d-4823-8434-44e958e82f49', N'''''I'' m putting on my T- shirt, shorts, and sunglasses,'''' Tom summarised.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'de441729-1fb7-446d-8ab8-bdbadcfb813a', N'I'' m simply not a nice girl,'''' she whispered tartly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b7038a1c-51af-42a2-a221-96dc325d23eb', N'I'' m singing well these days, Tom intoned.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ce1c8e26-11e1-4024-9caf-9d124d857cbb', N'I'' m single, Tom said wanly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'eb7ba789-2728-465a-bdc8-27b83243d8e5', N'I'' m sorry Mrs. Bobbitt, you can'' t send that in the mail.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4187707b-dc32-466a-8dc6-ac59e304779a', N'I'' m spending a year dead for tax purposes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'51b15335-9821-4577-85ac-9cf38bfafed3', N'I'' m taking this ship back into harbor, Tom reported.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b4156a61-4f20-49c2-8724-fda8b05d9d0d', N'''''I'' m the butcher'' s assistant,'''' said Tom cuttingly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5f1b0fe1-680e-401c-be5f-b1207b9ff2f7', N'I'' m the presenter of the South Bank Show, Melvyn bragged.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'239275d0-d8e4-450e-8edb-24a0fa8545c8', N'I'' m very picky about my hair, so a strange barber just won'' t cut it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2edee468-c8f3-4c8c-adfe-4017628b7744', N'''''I'' m waiting to see the doctor,'''' said Tom patiently.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2b90da71-5522-49bc-8e3a-dc23c53d97ff', N'I'' m writing a book. I'' ve got the page numbers done.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'36c93030-e96f-4433-a231-dec8c5e402f3', N'I'' m! A! Graduate! Of! The! Bill! Shatner! Acting! School!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6dec797a-15bd-4350-a086-cdfe7bdd1ebb', N'I made a batch of fish eye soup, it should see me through the week.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0af7292a-2edf-4bc4-993c-5009fbacacd6', N'I made a really cheesy pun about quesadillas the other day.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'059a47ba-9333-47ad-929a-612aaa28e300', N'I majored in nursing but I had to drop it because I ran out of milk.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'429012ff-c499-4812-a1bc-1b516f81b4f0', N'''''I make the armour out of chain links,'''' Tom replied by mail.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e56514ce-fe59-43e4-89e2-085b7fd77d1c', N'I may have my faults, but being wrong ain'' t one of them.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ec3105a9-02a2-4c67-ae34-a68a863e42dc', N'I may look busy, but I'' m just confused!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f4008573-a657-4456-9667-034e0df6a977', N'I met a girl at an internet cafe, but we didn'' t click.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ad23bf72-fa78-4ad6-a70f-11f7ffcceb72', N'I met a man who loves eating couches. I think he has a suite tooth.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'08f132a0-32fb-4328-a882-5a59d416b7db', N'I met a math professor who has 12 children- she really knows how to multiply.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'28bfd36b-f759-4a87-927c-9dbfbe8a1d6d', N'I met some cult members who worshiped soup serving utensils. I said,'' Oh ye of ladle faith.''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4205d226-ee67-4793-b149-2732810c6b43', N'I met this guy who said he loved children, then I found out he was on parole for it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'45641d3f-d4d0-4a56-b2d0-2fc07c1da186', N'I might study something at a university that someone once told me about- there is a degree of ambiguity there.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a52a6d6e-1815-4824-a1d4-fb5a31aa31ba', N'I must attend my flock, said Tom, sheepishly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'20357999-a65e-4ee1-a5bf-a0432c4025cc', N'I nailed my wood- shop test.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f3d17891-6020-4a19-864e-d61d84192e48', N'''''I need a pencil sharpener,'''' said Tom bluntly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a25728be-e2ac-4ec8-a367-dad60d6462c2', N'''''I need an injection,'''' Tom pleaded in vain.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fb3f18e2-1c1a-4768-92b7-896c6634a64e', N'I need to clear my throat, said Tom phlegmatically.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0b54df60-0c47-4f8d-aadf-ba43467d1df6', N'I need to go on a diet, said Tom wastefully.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0e120216-6bb4-4d90-b920-168a12f12e4f', N'I needed a raise in my allowance. Mowing the grass all summer just wasn'' t cutting it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0bccbfc7-b347-4d47-8d10-c0f97ded49d1', N'I never get lost, just momentarily disoriented.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1722173e-4f28-48b7-af95-909fd6edc2e5', N'I never have understood how you'' re supposed to hit anything with a bat..... it keeps flying away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0bb6e0c9-8652-4d80-bf5c-413afb4a45f3', N'I never understood why people liked to play soft ball. It'' s a very underhanded thing to do.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fda50edc-1801-4764-8e59-e305604fc8d3', N'I noticed that the sun was out, and nobody had bothered to relight it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0e592c34-6d2e-40a9-aea2-19efddc6dafb', N'I once had insomnia so bad I was awake until it dawned on me.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ab0244ba-0974-427c-9389-0892814ca37f', N'I once knew a guy who had fish and chips every day for a year. His stomach took a battering.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2beee3fa-e121-4d6c-ac4b-be43d232d79b', N'I once worked at a factory that made boat paddles. The starting pay was ten dollars an oar.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd1eefa55-5461-4013-bd1c-8753b4ebe0e1', N'''''I only have diamonds, clubs and spades,'''' said Tom heartlessly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'30b07005-da8e-4df3-a71b-64456b2e58d2', N'I phoned the zoo but the lion was busy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7bc7524e-32b4-4c01-9f88-1438b5c79907', N'I plan to work in a cemetery, Tom plotted gravely.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'03b58870-c3be-4d9f-8e86-722b092db686', N'''''I prefer trout to salmon,'''' Tom said officiously.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'74866ae4-4979-435e-8e4b-50a24b8d0232', N'''''I presented my case to the judge,'''' Tom said briefly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9b0a750c-7e95-4a56-a038-d83c255c6329', N'I pricked my finger badly while trying to find a needle in my wife'' s sewing box. It was a crewel turn of events.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9b3103b8-d23c-4677-9d71-269deb890673', N'I really do have a photographic memory-- I just haven'' t developed it yet.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aca6651f-9ac3-4337-80a9-c05e18f5fa1d', N'I really regretted the inconsiderate comment I made. It was rued.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2eb74d62-b163-438f-ad7f-a217d4e4584f', N'I saw a beaver movie last night, it was the best dam movie I'' ve ever seen.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'67dcb619-2f6c-496c-b4af-9c684bab3ea2', N'I saw something similar to moss the other day, but I didn'' t know what to lichen it to.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c2ef2288-1436-4def-ab92-eddfeb758862', N'I simply must find a new podiatrist. My podiatrist has developed such a callus attitude.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'afce01ff-0b23-4c38-8804-7b166b4724aa', N'I started to work at a seafood buffet, but then I pulled a mussel.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'93dfe142-a5cb-4828-9dee-c42f60d96f25', N'''''I still haven'' t struck oil,'''' said Tom boringly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2bfb7f7c-abcc-46b4-84ad-d627c74363ce', N'I still miss my ex- husband. But my aim is improving.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4527490f-f0fd-490d-ba75-ff8ba9bf0bd9', N'I strongly dislike the subject of math, however I am partial to fractions.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f5fb6ce6-3093-4002-a8a0-3a0ee7df87b5', N'I suspected our new house guest was a terrorist. He asked to sleep on a blow up mattress.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd9ffa030-e12d-4749-a765-e097450bd1a8', N'''''I swallowed some of the glass from that broken window,'''' Tom said painfully.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a014e201-0a78-4c20-948b-d212a3adbe61', N'''''I teach at a university,'''' Tom professed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'daa2b800-3b36-49b1-b495-d0da4f2bce69', N'I think a job as a shoe salesmen would be your best fit.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4968bcc0-d0a6-4bde-a573-809158e83802', N'''''I think I'' ll use a different font,'''' said Tom boldly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0c9994fe-ffdf-41ad-bc6e-61750a155a95', N'''''I think I'' ve broken my leg'''', reported Tom lamely.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'153b8c69-d2f6-46ea-bbb0-e0dd63a545c6', N'I think my learning curve has turned into a circle.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a892842f-6583-4635-8c92-ac898969b588', N'I think Santa has riverfront property in Brazil. All our presents came from Amazon this year.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e3fd5adf-ac38-45d1-8d3e-45c4c9aa6d0e', N'I thought about studying astronomy for university but I knew I would just be taking up space.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bdd89044-cb7f-4fc1-88c1-de45ffe98436', N'I thought that the penny I was looking for would have belonged to a man, but I detected the cent of a woman.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6fb7c232-a4b5-4265-90b8-7bdadf917d7f', N'I tinted my hair today. It was the highlight of my day.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4e217b2f-08fd-4184-9ff3-da5dfc3273bb', N'I told my friend about the creative writing class I took, and she said that she had a simile experience.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'21b86551-4fee-4466-b72b-edf1fd1c6a2f', N'''''I told you not to ride that horse,'''' Tom nagged.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0c2472e2-3209-4cc9-82fa-d479099087f9', N'I took up teaching fencing as I wanted my students to get the point.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a0f04fa7-f7a6-4dcb-a061-fb5fcd2a8d18', N'I trained my dog to hunt for underground mushrooms but now he'' s more truffle than he'' s worth.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2603a2f0-1a40-4517-b6e7-8ccc220966cb', N'I travel all over America, Tom stated.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ed803eaf-5e0a-47c7-adcc-d3de6ae44359', N'I tried hard to get into vexillology, but, in the end, had to flag it away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'59fa89ff-0d99-46a9-a640-e5567e41f7ca', N'I tried to learn how to drive a stick shift but couldn'' t locate the manual.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'24c81ef0-06a3-4146-9be2-1144652e978a', N'I tried to look up impotence on the Internet but nothing came up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f95bed6a-1b6b-458b-a3cb-b3068e9d273b', N'I tried to pack myself in a suitcase. I could hardly contain myself.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ae09f5c9-564d-450c-96ab-33eb9d72d689', N'I tried to play the bagpipes, but the sound coming out was off kilter.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3ca4fed9-4973-4e8c-9007-415b59f68f00', N'I tried to record an album in a reptile shop, but there was a terrible gecko.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'15fd1dff-550c-4988-9af7-971f0b389a8e', N'I tried wrapping Christmas presents, but I didn'' t have the gift.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bf7c8c59-4ccc-40bb-ac46-2c68483ad2c7', N'I try wearing tight jeans, but I can never pull it off.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'04964199-ef30-4c95-b8cc-7dbd291af503', N'I used to be a banker but I lost interest')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5e5c674b-0a32-46ef-ace6-e1038584635e', N'I used to be addicted to soap, but I'' m clean now.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'02aa8547-0609-46be-a320-26c46f91de3e', N'I used to be afraid of purchasing residential property for the purpose of renting, but now I have an apartment complex.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ce767fcd-eb62-4424-9aa6-ac3c3f83a75e', N'I used to do rock climbing as a youth, but I was much boulder back then.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c63b96c0-af06-48da-8df3-c1adcd3cabf7', N'I used to enjoy kabuki theatre, but now I prefer noh drama.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'28f31daf-1670-43ba-8030-0a6da6d003ba', N'I used to enjoy steak and cheese with my eggs, but it'' s all ova now.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'61886062-5186-4123-ba1f-6291cfe11c0e', N'I used to hate maths but then I realised decimals have a point.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2e43557b-c582-4b7c-8513-a676174e07a1', N'I used to have a fear of hurdles, but I got over it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'77f45bff-8092-4067-87bc-13a941b5d7cd', N'I used to have a life, now I have a modem.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'055c041e-7fd2-4e7c-aa8f-07479155aeaa', N'I used to jog, but the ice kept falling out of my glass.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'355a5a2a-ed85-40cd-9529-3c1e2904a73c', N'I used to think I'' d hate Italian food, but I finally decided to give pizza a chance.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd0b4c53b-f1d2-42d5-b06b-21625139ccaa', N'I used to work in a blanket factory but it folded.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f082ed62-1a6c-4e68-8356-bd24e5876422', N'I used up all my sick days, so I'' m calling in dead.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f25aa0be-1d00-4823-a4fa-93bd97f38d71', N'I usually take steps to avoid elevators.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'79d0a1f5-20c1-4832-a31c-d25df7280303', N'I'' ve always pictured myself taking selfies.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ff493b57-2921-4b19-b6b8-c1b348bd1441', N'''''I'' ve an urgent appointment,'''' said Tom in Russian.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'90f8d86e-19cd-49b4-bb3e-20bfb8badb75', N'I'' ve been called a rare commodity. I wonder if that makes me silver or gold? I guess I could be either ore.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e09e0687-ad64-47fd-96e3-98d773b2bbcf', N'I'' ve been listening to the Brandenberg Concertos, Tom barked.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'81311b7d-1e11-4af2-96e1-a69b6c567071', N'''''I'' ve been listening to the Brandenburg Concertos,'''' Tom barked.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7f92a1f3-02b5-4d6f-9408-f39f3115545d', N'''''I'' ve been to a film festival in Southern France,'''' said Tom cannily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1cf30246-f9be-4b63-9f70-4322b1785433', N'I'' ve been to a film festival in the South of France, said Tom cannily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'32f645e0-a0c3-4cc9-9dbd-df4495ed8e9c', N'I'' ve been to the dentist several times so I know the drill.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'299e0825-5247-4a6c-8082-edc07e821ab6', N'I'' ve caught Moby Dick! Tom wailed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c3bfff2a-bb7d-4349-bb76-616fd6ad59ea', N'''''I'' ve gained thirty pounds,'''' said Tom heavily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4734c40b-ac17-43ee-927d-bfa508de6b9d', N'''''I'' ve got sand in my dinner,'''' said Tom grittily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1dea7456-c0d2-48fc-9321-a9af72d2834e', N'I'' ve got to fix the automobile, said Tom mechanically.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0162df6c-4b4f-4948-982c-0725c24e3ccd', N'''''I'' ve got to stop this motor,'''' Tom choked.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2576866e-74ad-455f-afd4-cba155655811', N'I'' ve inherited a fortune, said Tom, willfully')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'65336a76-6631-4e3f-9782-1616feac271e', N'''''I'' ve joined the navy,'''' Tom said fleetingly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'286f68ce-ad4e-4512-83d1-e513b2d04abe', N'I'' ve made up my mind to re- lay my lawn. It was a turf decision.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ef97731f-f956-4a6f-8a02-ef7fa3c6883e', N'''''I'' ve mailed the letter,'''' Tom assented.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fd372ba3-71e1-4f61-8432-957b19039978', N'I'' ve met zucchini with more potential.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'be9469d2-d0c4-4add-b05b-d441e23dd301', N'''''I'' ve never had a car accident,'''' said Tom recklessly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2098377b-a152-4d48-bc01-f1f175589308', N'I'' ve never killed a deer before but I'' ll take a shot at it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'490c8a7a-4837-47cd-bb90-f7e8643e43cf', N'I'' ve never taken an elevator to the basement floor, that'' s just beneath me.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'56447977-d314-4a21-a195-6e69feceafa4', N'I'' ve never tipped a cow. Then again, one has never served me food.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4036c0c7-79cd-478d-b239-4dc29fba2e85', N'I'' ve passed the exam this time, Tom remarked.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'27ba30ab-588e-47f1-a7f0-fc56ae26bba5', N'I'' ve planted part of a riding whip. I'' m hoping for a nice crop.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dc4fab00-2fa2-47f8-82ae-01fbc475204d', N'''''I'' ve run out of wool,'''' said Tom, knitting his brow.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5ec6993e-c4a0-447e-9631-aaf3f1f77e0e', N'I'' ve spotted more blackbirds than you have, Tom crowed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6bb63bef-c1b2-41e9-8dac-0a2c216ca5f0', N'''''I'' ve struck oil!'''' said Tom crudely.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd5381859-6020-4bae-bdc0-ba22a16439c8', N'I'' ve struck oil! Tom gushed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0e1fa26c-eeec-47e7-aa91-5671099f631b', N'''''I'' ve stuck a pin through my nose,'''' said Tom punctually.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9b64fdaf-2444-447e-9949-2f68332d4747', N'''''I visit my parents every Sunday,'''' said Tom weakly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6da37581-5699-488f-a863-6c608698ff29', N'I walked into this posh restaurant, the prices were extortionate, it was daylight snobbery.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ab26cc1a-d8ad-4e48-9b2e-af1f2f1cbe1f', N'I walked past a gang of youths yesterday and one of them threw a piece of cheese at me, which hit me on the back of the head. I turned round and shouted,'''' That'' s not very mature!''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e0b0df87-79f0-456f-803d-6b1e938ddc76', N'''''I want a motorized bicycle,'''' Tom moped.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'90989798-4f97-44be-96f6-7a6eab6a5303', N'I want to buy that big diamond, Tom said hopefully.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e055f1be-f12a-4f21-9968-f012db8b20c9', N'I want you in the navy, said Tom impressively.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'85f9d4d8-f3e0-4cf6-984d-0ebf9c69d9df', N'I wanted to be a clarinettist but I couldn'' t reed music.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6d876419-c4cf-4f40-b0ce-e98a8be1db28', N'I wanted to be a sonar technician, but it was out of my depth.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0063c4c2-31b8-4fb4-8ee1-2e0c0e52b1c2', N'I wanted to bring a penguin home but my parents said that wasn'' t going to fly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd6e9496d-7fd5-4ca5-b692-5cec359fb869', N'I wanted to do some research on anorexia, so I went to the library to get the skinny.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3f2bc29c-223f-434c-8106-2e5bd7536ea3', N'I wanted to exercise last night but it just didn'' t work out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cd1290d6-8087-4fb7-b4f9-dd97d21d1428', N'I wanted to have dinner at a native American themed restaurant, but I didn'' t have reservations.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c86b5ba4-8063-44c7-803b-9400f4e3c53c', N'I wanted to join my local rambling club, but the guy I spoke to on the phone just went on and on.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'052d93da-3099-47fb-95ab-31aa5604147a', N'I wanted to lose weight so I went to the paint store. I heard I could get thinner there.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'59bf1c5a-ce72-4ddb-aafa-f94fce5c5c2a', N'I wanted to make suits but I could never measure up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6b8565a5-809f-492a-bc32-95420b9307df', N'I was against the construction of tennis courts in the park as I thought they would cause too much racket.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'53a26f82-fc1f-4767-bf4c-7c55169439a8', N'I was arrested after my therapist suggested I take something for my kleptomania.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2e2f1322-1164-49a1-ae4c-275e9c13ae6a', N'I was caught studying the periodic table in English class. It was an elementary mistake.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c6ed21a9-da3d-40b0-96a3-d916c8914dc7', N'I was completely exonerated, said Tom clearly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8c9ccf7c-55af-43e5-b126-9152495dcfeb', N'I was fighting a Dragon, easier slayed then done.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6b58339a-f65f-464f-a6cf-decc5a72c803', N'I was fired from my job selling amplifiers. I didn'' t achieve the sufficient volume of sales.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b8bca5ac-cd54-4641-8f59-123c97eb4bed', N'I was fixated on the pain in my bad tooth. I was abscessed by it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5a75b80b-4f94-464d-846b-2ae7853773d1', N'I was given a shampoo and trim by a Pakistani in Liverpool, said Tom in Urdu.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8563b556-5b52-48db-985f-3a546eeb5c2d', N'I was going to buy a book on phobias, but I was afraid it wouldn'' t help me.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e415c373-e8e4-433c-947c-489cce1973a6', N'I was going to buy some loose tea, but the price was too steep.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ecb6685c-21c4-4a25-b8c3-981627eb7190', N'I was going to order a satellite dish but then I found out that I had to go through channels.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'97deaa0c-f7b8-4a6b-b79e-59783343ce37', N'I was going to study the work of Sigmund Freud, but I was too Jung to understand it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cf6f9716-85f5-48f8-819e-405d20b2f069', N'I was heading to Hooters but my wife said'' Don'' t bother, they have gone bust''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'28fc5772-ca12-473c-898f-0ac2d1bdf254', N'I was in a big hurry so I scrambled to make eggs for breakfast.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0e578ee7-4665-426f-8047-40431ac8dd7a', N'I was kicked out of math class for one too many infractions.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'75ce26a0-2370-4096-a6a1-30af22ca95a6', N'I was looking for watch batteries but I wound up at a clock shop.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f57826bf-5f4c-44e4-a124-5e4eb14af044', N'I was struggling to figure out how lightning works then it struck me.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ce3b87b4-ba17-49ef-ab99-3f05a5d198b6', N'I was studying in an apiary class. This resulted in me receiving a bee on my exam.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b1a57b10-832c-439f-b965-20edee63bb74', N'I was talking during sex and my girlfriend hung up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'128655a2-1602-4999-a88e-249d4291071c', N'''''I was the first to climb Mount Everest,'''' said Tom hilariously.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9bac8768-6936-4601-848c-8990963ec992', N'I wasn'' t kissing her, I was whispering in her mouth.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'35bc5371-4afa-46cd-8ccf-043e956d91b4', N'I watched a movie about a baby hen, it was a real chick flick.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6ad802be-82f7-41d7-8991-b0cdc2a2f8b1', N'I went and saw the Hobbit, it put a Smaug look on my face.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'69d6f251-844a-4ed4-baf8-5619d0d55732', N'I went out for a run this morning and tripped over, I could have been wearing the wrong size shoes, I haven'' t seen the footage yet.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1ae90670-cc7f-488f-974c-a80ee79ebf09', N'I went to a buffet dinner with my neighbor, who is a taxidermist. After such a big meal, I was stuffed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1e4d7be6-c869-41c9-bd56-7e187b594c6f', N'I went to an invisible fairground but didn'' t think it was very good. I just couldn'' t see the attraction.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e5ba8c85-5851-4d9f-a799-3ead0f1105dc', N'I went to buy some property with a hill on it, but it was a little steep.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c447c65f-e9eb-4d8a-9146-c3bdd7c3f44b', N'I went to prom with a broken leg. During the slow dances my date could tell that I had a crutch on her.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2836c4ef-b184-4099-80d8-ed83886f522b', N'I went to see my guru but he wasn'' t omm.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'01e0e2d5-0d67-4f98-af13-11cc2fbffbaf', N'I went to the dentist without lunch, and he gave me a plate.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5bdffdee-f5f2-40b6-80bd-022e707417dc', N'I went to the store to buy some soup but they were out of stock.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c0e231a2-0051-41bf-94d6-e10505d4b272', N'I went to the theatre, it looked a bit suspicious. I reckon the whole thing was staged.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9724476c-d82d-40db-aaf7-dd2eea0c19f1', N'''''I will now demonstrate how to dissect a sheep,'''' delivered Tom.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'85274a21-9d1c-4a3d-b992-d4edc6de7a68', N'''''I wish I could remember the name of that card game,'''' said Tom wistfully.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1ea5eb1d-60e4-4abe-8ff1-8d0ac8494b14', N'I wish I'' d said that, Oscar, said Tom wildly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a1cebec9-1b58-4497-a6fb-38fcb1a9ba95', N'''''I wish I had something to write with,'''' Tom said pensively.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f1604006-ed1c-4e08-a830-9252af3e1c25', N'I wish Noah had swatted those two mosquitoes.....')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'78e25d34-cbb3-46c9-b827-520e4c833d09', N'I witnessed the attack on the castle and saw the queen'' s robe torn and the king'' s throne under the horses'' feet.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'520d84b9-3605-4814-bb8b-10fa1181c130', N'''''I won'' t buy a circuit breaker,'''' Tom refused.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3281e7c7-e75f-4319-9f09-6aa18a022cc3', N'''''I won'' t finish in fifth place,'''' Tom held forth.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7f1d6502-d007-4674-9696-9b95344db126', N'''''I won'' t tell you anything about my salivary glands,'''' said Tom secretively.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2dff4de4-d891-4928-893e-13a4a150af94', N'I wonder how much an anagram weighs?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'452968b5-0828-4262-84ab-0abff886912f', N'''''I wonder where the next character is going to appear,'''' said Tom with a cursory glance.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'db4748ac-9b3b-4f84-8fe7-2d0f0d83699b', N'I wondered why my geometry class was always tired. They were all out of shape.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ada24916-9402-4d55-a9fd-9c3e3f8cbd29', N'I wondered why the baseball was getting bigger. Then it hit me.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1002dcd8-5629-489a-83e9-bfb710e587ba', N'''''I work at a bank,'''' said Tom tellingly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'76c6f169-6a31-4ef2-b903-636ba06bbcec', N'I wouldn'' t marry you if you were the only woman on earth, said Tom evenly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f4b3f162-2642-4626-bf3e-1801b6343b93', N'I wrote a novel about a fellow who had a small garden. It didn'' t have much of a plot.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'690b404c-7fca-4bd8-ac8a-9ab3e998493f', N'Idle hands are the devil'' s playthings.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6a4ab8d2-62f9-4250-ac5c-8c26e1df420d', N'If a clock had legs, time would run out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'990b6aef-cfb2-48ef-a607-7e71f52a30ab', N'If a dog was computer literate, would his bark be worse than his byte?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b726cc16-0b86-4af6-b8b7-28d21cd6d746', N'If a horse could predict the weather, it would probably say that the weather is stable.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'64d429b1-110a-41a3-9fc7-cfb97447e02b', N'If a job is worth doing, it is worth doing well.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a07f7679-13eb-41f4-a129-fd936799b01b', N'If a judge loves the sound of his own voice, expect a long sentence.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3894c7e4-d561-4f32-9fc4-4c5131f82972', N'If a lawyer speaks for too long there will be an extended sentence.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c6a4e919-f03a-4917-b6dc-0f5182e92f5b', N'If a Monk throws a hissy fit, is it a temple tantrum?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'53767158-0cde-4460-8cc9-2eb0f406e861', N'If a program is useful, it will have to be changed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1e9b6532-8728-49fc-acd5-7ba75ec3a55d', N'If a town'' s people have low IQs is the population dense?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a0b93667-c4ca-40e8-98fd-8e622208b441', N'If all appears to go well, you missed something...')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e6c7d711-f602-42c0-b316-f5d8bf21e1d7', N'If all goes well, you'' ve overlooked something!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'87c0d7a2-fa93-4c36-9ca9-1daee1ebd655', N'If all your troubles are melting away watch out for the floods.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9c062a78-c7cf-4d60-9857-6ccd1689169a', N'If an actress has a screaming role, can we say she eeks out a living?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aede43ac-2dde-4364-8275-431296c3017e', N'If an animal looses its tail it should shop at a retail store.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd0000eba-4096-4e5e-a663-8f92f78b6fcb', N'If an experiment works, something has gone wrong')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'22dc688f-4793-4c13-91d8-4ee3b63bc90b', N'If anything can go wrong, it will.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8a3043c8-4be4-4549-aeb0-3783c550d2a8', N'If at first you don'' t succeed, call it Version 1. 0')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'714d2a53-6060-4e53-8ef3-33496d58e6a0', N'If at first you don'' t succeed, then skydiving isn'' t for you.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ff43f5dc-d9c4-4433-bc57-7f0a839f6fb1', N'If at first you don'' t succeed, try, try again.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9857aced-c680-4aaf-acff-ba284504ce0c', N'If children were allowed to dig for coal, would they still be miners?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9adeb65a-8da9-4c59-9f75-00e49df5833b', N'If fortune favours, beware of being exalted; if fortune thunders, beware of being overwhelmed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0c47ae75-1e94-479f-be33-00b7b772738f', N'If gophers become extinct, the hole ecosystem will die.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6ae18c3c-1bf8-4fd4-9c2e-5ca9289c3e2c', N'If I am afraid of losing my fat tissue. My psychiatrist told me I have an adipose complex.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b5e37739-9fb7-4496-8877-12354ffcffd3', N'''''If I let go of the ceiling it will collapse,'''' Tom upheld.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'09677eff-1319-4e79-b442-fcd4c021190d', N'If I want your opinion I'' ll beat it out of you!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4b9a18db-d7f5-4018-80fc-29137a0b983b', N'If ignorance is bliss, why aren'' t there more happy folks?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'83fc481f-df60-41df-8655-8143c4a9056a', N'If intervening was an olympic sport, he'' d win the gold meddle.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f8aced26-4e53-4d30-b3d6-0d3bb4b5f45f', N'If it ain'' t broke, don'' t fix it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'045d1387-d762-4caf-813f-2437073683d2', N'If it ain'' t broke, let me have a shot at it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c145226a-3225-44aa-a9ab-97735a0e70cd', N'If it ain'' t water- cooled... it'' s a terminal!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f07dc179-3a5e-4678-8673-df56aceb38a2', N'If it jams, force it.... If it breaks, it needed replacing')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9c97e312-2883-4e55-b65d-5a83926909ef', N'If it looks like a duck, swims like a duck, and quacks like a duck, then it probably is a duck.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'eef01d62-97c1-489e-ba18-747531878405', N'If it'' s obvious, it'' s obviously wrong.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e7dc026f-7648-4210-bdad-60cb0315c5ca', N'If it'' s too good to be true, then it probably is.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2657d7c1-0cdd-49a2-a41c-9a91c453990e', N'If it'' s useless, it will have to be documented.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a099e08e-6825-4e1f-abda-f8c31b2bef4d', N'If it screams, it'' s not food, yet....')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'08bf2746-3591-4c2a-b0b9-623125a94141', N'If it works, rip it apart and find out why!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'48c9b6b5-b6e0-41b6-b2db-373c5c6cdfc4', N'If it works, you must have done something wrong.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'01ae3f79-39c6-4280-a1a5-90eed7242742', N'If jokes could be owned like land, then no good pun would go undeeded.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3515b59d-43cc-43ac-bb10-8add3d3225ee', N'If life gives you lemons, make lemonade.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'84afaa17-3c78-45b2-babf-8ea65342f8bb', N'If love is blind, lingerie makes great braille.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3cd9e1b9-bc25-4d2f-865e-39a13060149a', N'If only women came with pull- down menus and on- line help!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ebacb7dc-83ef-4d78-9396-7ca262746916', N'If pride goes before a fall, humility should arrive by that winter')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f7ee3c31-22b4-4f8e-a1d2-b506b5742dda', N'If roosters saw how hens are treated they'' d turn over in their gravy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5ff32b0e-f887-478a-97ee-3adc5bb6a292', N'If screwups were dollars, I'' d be a millionaire!!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'adf59cd3-f271-4a46-b805-bd248b097009', N'If the mint makes 25 cent pieces it should expect quarterly profits.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4c68406b-3cc6-425a-8dd8-478b08871926', N'If the shoe fits, wear it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f03aa928-eb51-4982-85be-d8106c933332', N'If the theists all shut up, the gods would be speechless.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'309dd99a-16ae-4f33-9ac5-400723746e02', N'If there is a hypocrite between you and the church, he is closer to god than you.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'506b0862-e31f-49fa-8c4f-28b3fc0a61cc', N'If there is no God, who pops up the next Kleenex?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cfede5f3-4e12-453f-8108-dd28ac984fd4', N'If there'' s one person you don'' t want to interrupt in the middle of a sentence it'' s a judge.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'de4f1723-8df4-4420-84a7-8eb09d1fb0f6', N'If they ever have a contest for the best looking mannequin, there will be stiff competition.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7c3c6f05-8dba-49ee-8e59-b8f634fde659', N'If they say you look good in glasses that would be an optical allusion.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd1b5a3e2-6b5e-4dfd-b7a0-5da38e5ada7c', N'If things improve with age, I'' m nearly MAGNIFICENT!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'15914882-a95f-4ae2-af86-9f4d95f069e7', N'If this were an actual tagline, it would be funny.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'459a5655-9b79-481b-ac63-f2400385a9ae', N'If towels could tell jokes they would probably have a dry sense of humor.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c5cd64f1-4417-4458-8d6f-02c91c070b8d', N'If two wrongs don'' t make a right, try three.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6f8c8efd-d0c9-4706-8072-9e1787f7c79d', N'If Version 1. 0 works someone goofed...')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f6016356-f3c7-4303-a155-2d300d338e62', N'If wishes were fishes, we'' d all cast nets.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'def2a4e9-3768-4604-9d99-9c88394fde33', N'If wishes were horses, beggars would ride.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5e1db3e7-79ad-4b30-b90c-9f4b6a8cf6bd', N'If word processing a presentation about guns-- be sure to know how to use bullets.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'84070658-e5e2-479c-bb4c-5a597894fa4c', N'If you are what you eat, I'' m staying away from the nuts!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6ae072fb-e5a8-4bc3-b034-f0aacbf06346', N'If you believe in telekinesis, please raise my hand.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e8727eb0-856d-4988-8695-ec1f93e4aa64', N'If you believe restaurants always overcook steaks, then you probably order them rarely.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'943086ed-bb7b-4574-b11c-db6ebd06569a', N'If you break a string on your guitar don'' t Fret.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'70a14ce1-869d-4f32-a97d-4a3f3736d69f', N'If you breathe heavily on the map, it will reveal topography,'' he said, with a sigh of relief.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f7e3b3e2-4c44-43e3-8ef8-d5ada65df654', N'If you burn the candle on both ends, you’re not as bright as you think.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'97d39db0-d5e7-45d7-9a19-8fc1f9141b26', N'If you buy cheaply, you pay dearly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'57cbadf4-d092-4bb3-954b-a8b2c8ae8665', N'If you buy quality, you only cry once.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b79c5989-54d7-46b1-bda4-fae18d206674', N'If you can'' t be good, be careful.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1efe7419-03eb-4b72-8ab1-7cea340e76b8', N'If you can'' t beat them, join them.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b98ebd36-32ae-4304-bfe2-3cf544170be1', N'If you can'' t laugh at yourself... I'' ll do it for you.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8bbb4eda-080e-40a5-b891-9e110434fd81', N'If you can'' t make it good, make it big.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'09681428-175c-432d-a5fa-cbe72bdfe41a', N'If you can'' t make it good, make it expensive.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'549e85d8-b2fb-4416-923b-8953b8ce54cb', N'If you can'' t take the heat, get out of the kitchen.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1fd95d8e-50c1-4f63-b3ba-d74b02e360a7', N'If you do research in optics you will have to do some light reading.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b680c6c0-7f45-437d-a629-6133a2d77fae', N'If you don'' t have anything nice to say, don'' t say anything at all.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c58aa1f1-001d-4d6e-aabf-04f3e8520417', N'If you don'' t know how to choose music ask a guitarist- they know how to pick.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e76b8d47-790d-421e-a57f-5e4fbbc63d8a', N'If you don'' t pay your exorcist you get repossessed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b2e584cf-868c-4b86-ad9b-1f4628bb38cc', N'If you eat soup that'' s nine days old you will get bad broth.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3d92c534-3e3c-4d88-b321-16f8fe7ff9d4', N'If you get sick at the airport it could be a terminal illness.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c4a07991-97ba-484c-9b83-bb4cc90f52f0', N'If you give some managers an inch they think they'' re a ruler.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6e19794b-9d60-4cc6-b497-cc0abbbacd19', N'If you go for a job interview at a rubber stamp company try to make a good impression.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'14ca1300-5406-4757-8a32-ab8baac224f0', N'If you got it, flaunt it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2148a3b8-b322-46d8-aecc-9bdc2a891aaa', N'If you have need of a locksmith he will be your key man.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b2373f98-4f1b-4ddd-8040-37150d2e9db7', N'If you have no enemies it is a sign that fortune has forgotten you.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1cc20e86-bb09-4067-abc8-55142562eb9e', N'If you have nothing to say, please only say it once!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bfaf83f4-62c9-45a7-be94-585eababd033', N'If you have to pay to go to the river, we'' d better stop at the bank.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'53294571-f86e-4df1-b3d1-5680cc6e13d6', N'If you invite an insomniac to your pajama party they will be up for it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c4b3dab4-a041-4ed1-a11e-4bc95ddf5a66', N'If you jump to conclusions, you make terrible landings.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ffabd17d-6a16-44a9-8834-825975f2f167', N'If you leave alphabet soup on the stove and go out, it could spell disaster.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a03a7e13-d63d-40bc-aeec-4666fc7f992a', N'If you lie down with dogs, you'' ll get up with fleas.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'093563d1-7fcc-49f6-b639-d6711119fe59', N'If you love somebody, let them go, for if they return, they were always yours. And if they don'' t, they never were.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'be28b158-5357-4075-a2ca-3272f74796aa', N'If you make yourself into a doormat, people will wipe their feet on you.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e435680a-9a01-4341-b481-10cac9ea1736', N'If you miss a class at beauty school you'' ll need a makeup session.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0bf3b6a2-bf1d-4441-ac82-a473aed6bcfc', N'If you operate a drill press you have a boring job.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'762e32a3-f9b5-43f5-8997-b3b76af41874', N'If you'' re a gardener you might call yourself a'' plant manager''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8e416e5e-0911-405c-a272-0e089ac01a3f', N'If you'' re dying to purchase cropland in Thailand, then you'' ve baht the farm.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cece35d0-e60c-4a2f-96d9-b02b98e4848c', N'If you'' re in a hole, stop digging.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'40d8ebbe-675b-4c4c-bf7b-0a91e598e104', N'If you'' re looking for oranges on an apple tree you will have a fruitless search.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'610b1dd6-6f9a-4c60-b7c8-9a72ff28b9c9', N'If you'' re not part of the solution, you'' re part of the problem.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'47996169-06d9-4e95-b6b0-b2c5a4faadf1', N'If you'' re not the lead dog, the view can be very interesting!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dc4dbc33-aede-4cc8-bdc6-db95c63ad548', N'If you'' re stiff as a board it could be the lumbar.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7ae0b317-9b37-4c44-8ecb-0643e7e880a0', N'If you really want to know, you won'' t ask me.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0a9cd6c5-771f-4608-b0ce-6a42e3dc8cfe', N'If you ride a bus you have to pay your fare share.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3a38f369-de26-44e4-8ece-58d35ce14861', N'If you run through a screen door you'' ll strain yourself.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a7f90e3f-a99b-41a5-9469-58bf020a2cb4', N'If you say you have bad skin, I'' d say that was a pore excuse.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ccea4b18-d629-4203-ae3e-639ccbb6b28a', N'If you send a letter to the Philippines put it in a Manila envelope.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0dab866d-3a3c-4877-807a-84b7e70ab8df', N'If you sight a whale, it could be a fluke.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c490eeea-1dbc-4f7f-999c-c6500cbeb8cc', N'If you sing while playing baseball, you won'' t get a good pitch.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'99229aba-33c5-4e37-9e31-cf723615b22b', N'If you snooze you lose.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'20e892b0-0632-4f0c-96fa-e3ea2a3645a8', N'If you spend too much time in the coffee shop you'' ll be latte for work.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bfebb3f6-ca33-4ffa-8370-1c23b9d6f327', N'If you sup with the devil, use a long spoon.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9fb8b527-07fe-4e66-aea8-134a3ce240dc', N'If you tell a falsehood just after waking up you are lying in bed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b3a2211b-957b-4bec-aee2-358d190ba67b', N'If you think guests really enjoy your home movies, you are probably projecting.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'51ce69e3-7739-4b67-9213-d085da9cab2f', N'If you think that mutt made strange sounds as a pup, you should hear him grown.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6929102b-82a5-4bce-a1de-46d4ad090682', N'If you trust before you try, you may repent before you die.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e7987cc0-f65c-4153-9aff-781267b5dd8c', N'If you walk along a railroad track you may soon feel run down.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'653aa799-a201-4fec-a369-3847eba1e4ff', N'If you want a metal dog leash go to a chain store.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'48dcfdc9-980b-4340-8266-7e3d77b05868', N'If you want a thing done right, do it yourself.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c4bbdd26-2404-4abf-aa92-651fc485f134', N'If you want enemies excel others, if you want friends let others excel you.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'09dafafa-efd5-4ace-be76-09e5534c7886', N'If you want her to show emotion, cut up her credit cards.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'71fc6319-23a7-4e88-8f86-9b344d6091ee', N'If you want someone to keep a secret, keep it yourself.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ba2d1c20-4f11-4675-a0c1-87090ec79e51', N'If you want the last word with a woman, apologize.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6d5931fe-374d-406e-a632-2322c3449556', N'If you want those ashes, you'' ll have to urn them.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6c6358c5-60e5-47fc-8917-e2aa53912477', N'If you want to buy a hose you might go on a shopping spray.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2a057748-c6fb-4063-9724-1be9fc55b90b', N'If you wear a blindfold at the shooting range, you won'' t know what you'' re missing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b0b26f4e-ea93-42d0-9127-f5e7e7260849', N'If you work in a bakery you may have to take on many roles.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'00c92436-9950-44d1-9664-8aa399993ae6', N'If you work in a forestry company you will probably have to log your time.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b39cc96f-a57c-4603-8567-fa8f752e2355', N'If you work in a tire factory you have to get rolling every morning.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b4669b0a-a19a-4ebb-9867-f1cf24a52628', N'If you write bad things about me I am libel to sue you.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'afac1b50-2341-4eb8-ac60-b676128d629f', N'If you’re looking for a sign from god, this is it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'36e887a8-d03c-4eb8-bbc9-43b3ea4fe924', N'If your dad'' s sisters are construction workers you might call them carpenter aunts.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'76da65fc-0fdd-464e-8131-b833a981163d', N'If your mind is clouded or in a fog you may have mist some opportunities.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b212bb0a-5a79-4ba3-b745-cfb0970aa338', N'If your waiting for something to turn up, try your sleeves.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd6253160-8932-4efe-bf86-a3a4c0809d58', N'Ignorance is bliss.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0985e2fd-a6c8-4559-9b48-819dc15ba560', N'Il se muove, said Galileo, movingly')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'54f83f6b-31f5-412b-9b31-2ae803541c6c', N'Illusionists always find themselves in tricky situations.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b10c5adf-4fe7-4f75-979a-9fadd1df326c', N'Imagination comes before Creation.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a406e458-48ea-4eeb-96f4-142ebfecfe99', N'In a bakery buns usually play a small role.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'667b2a9d-6a24-4faa-8001-4be48d431a08', N'In a billiard hall life can be pretty rough at the wrong end of the queue.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'95ce35e7-45b0-4b68-b3ad-5829564e6804', N'In a recession, the most secure job is garbage- man. Business is always picking up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'736e08c6-bc1c-4267-9eb0-0a32a82910bf', N'In a surfing competition the winner got wave reviews.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3a160d98-2ce2-4e82-a3bf-d6495297e8c8', N'In an attempt to kill a fly, I drove into a pole.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cbc96ca4-7e74-437a-83cb-3768ae711546', N'In an empty head, you can hear forever....')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a69ebce2-2b0d-431c-83de-2fc810126e5f', N'In an office: Would the person who took the step ladder yesterday kindly bring it back or further steps will be taken.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'602c437e-8ccc-41de-87d0-6cb7d673185a', N'In ancient times, seagoing vessels were much more fuel efficient. They got thousands of miles to the galleon.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'40022458-0d77-42d4-8231-524d40b14dda', N'In certain sexual harassment cases things can get kind of touchy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3c5f72c6-8739-4235-9fe1-d0c711ab6260', N'In equations with square numbers I can never find the root of the problem.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fc05cae6-4c4f-4047-a616-3fd26e0ba7e8', N'In for a penny in for a pound.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd0f9b551-127e-4e8a-af40-4d775de5c28c', N'In high school I recall having a beautiful but difficult math teacher. She was easy on the eyes and hard on the pupils!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'842edfd3-1d36-4c07-b5e6-b7ac29b1e8ab', N'In his free time, my son in college hunts deer and sells the meat. He says the doe helps him with his expenses.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8e360e4c-6933-4bb5-b8a5-25e733908da6', N'In his latest promotional campaign, the manager of City Tent and Awning told his crew to canvas the entire area.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0188d456-bcaf-49cc-be98-1f8ac03daccd', N'In Ireland you'' re more likely to get a Pat answer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cece25bd-908b-43d8-b958-710f6e39b7a7', N'In medical school he worried about passing as a surgeon, but he made the cut.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f4ca9810-5250-4ebc-bdce-1744f1127f53', N'In middle east outdoor markets you can find bazaar items for sale.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'75d5ccb1-f27b-4d6b-9a1b-edfccb3dd7a8', N'In parking lots, arguments often start from scratch.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'509598c0-37b2-45bf-b26a-a3bde9744ee4', N'In some countries there is a lot of Manuel labor.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'77500cf1-f874-43bb-8364-96f63ea97783', N'In the air duct installers union they have lots of opportunity to vent.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7b38eedf-01d8-4d3f-9688-44f481dee16f', N'In the army mess hall, the men were getting fed up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0007aae2-ad80-4be8-b574-b185e7309709', N'In the dark? Follow the son.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6d28a43f-8708-4eaa-8282-c797ace739ae', N'In the delivery room, the unborn infant expected to be given a wide berth.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'49cc9542-aa2e-494b-9bcf-cb8dc481bce3', N'In the house of the hanged man, mention not the rope.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'178c89f7-5438-47d7-ae49-e69aedf75a6e', N'In the land of the blind, the one- eyed man is king.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a4651ae8-af47-4031-8563-686a7789f865', N'In the middle of difficulty lies opportunity.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'08a08808-3f01-4460-8424-8daa311fe470', N'In the novel, there is an unexpected secret meeting of the lovers. It is a plot tryst.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'82ddbcf8-9913-41e8-a3a4-1ea42be75acb', N'In the office she was frantically looking for her false nails only to discover she had filed them away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1181522f-62ea-4297-8e8e-bafa4848cff4', N'In the old days a suspended sentence was hanging.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'533bb1dd-8af6-4085-939d-2ae31b5d0323', N'In the room the curtains were drawn, but the rest of the furniture was real.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2d7def30-5b82-43f3-a5ec-fd696bbb5673', N'In the winter, some horses are Friesian.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c1e6d46a-2cf2-4281-9d36-e30e45b64872', N'In times like these the value of Chinese currency should make Americans pay attention. Instead, too many of us just yuan.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ee670a84-5995-4238-ad6c-99cd52b5bafb', N'In War of the Worlds, humans survived the attack because of their unalienable right to life.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f060d8e7-782a-47ef-9fcf-4920848701e8', N'In zen skiing, you learn to become one with the snow.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5699ae93-204b-4dfb-b6fb-e2167059af47', N'Inflammatory talk is often seen as propane language.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'085464f1-02e3-400f-b84c-6b35db8d8180', N'Insanity is doing the same thing over and over, expecting different results.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8c162fbd-511c-4e4b-8789-def694141ebb', N'Insanity is just a state of mind.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dc66c1e9-76c5-4d04-a650-8ea97233fd89', N'Insert disk 5 of 4 and press any key to continue')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'429a53a3-a178-4fbf-a1d0-76313d038a86', N'Insomnia isn'' t anything to lose sleep over.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2367624d-d63c-4f32-8aba-8a249858cb44', N'Installing a fan can be a breeze.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c4277ef6-c548-4d74-807b-fc3795c812bd', N'Insulting an East Indian chef will bring you bad Korma.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6d99e4ef-15a3-4b96-9fed-73d96acf7170', N'Inventors have their own devices.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'58c01364-642a-4a0c-8e2a-9ee5f07386fc', N'Iron sharpens iron.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c9767353-c5cb-4e4f-9b9d-9affd1e8ab88', N'Iron was discovered because someone smelt it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f27c476f-77fb-4622-a562-f1f863626b15', N'Is coffee your daily grind?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1a4461c1-a2e2-4204-bc99-9c5a523df865', N'Is fear of sliced bacon irrational?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'504018ca-bc0a-4f4b-90b5-51906a92d493', N'Is that pure rump roast? Nothing butt.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'84c93628-a4b3-4218-a95a-e54ef4adfa8d', N'Is there a best month of spring? There May be.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3c972929-cf14-451c-8d21-cf23cb229df2', N'Is there a lawyer in the house? < BLAM! > Is there another?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5dcf80dd-f722-4be8-939d-2e1337e01e3d', N'Isn'' t the Grand Canyon just gorges?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c9c54da2-3cd2-41e3-8d16-7cac6b190864', N'Issue of first day cover almost ended in a stampede.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7a6e1768-06b2-4296-abea-e5ae1241ec86', N'It ain'' t over till it'' s over.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6552adb8-64a6-4d88-a142-33f3b23332c7', N'It ain'' t over till the fat lady sings.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2359d8a2-359d-47cc-9fcd-61fa3e6fad81', N'It ain'' t over, but the fat lady is clearing her throat.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bc74207b-acd2-4ea6-a602-9a321e0f2903', N'It has been discovered that sales of irons are decreasing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f948bf81-4971-4d70-91ea-139b0d2ba09f', N'It is always darkest just before you turn on the lights.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f2239250-628c-407a-aec5-a85418ffe090', N'It is an ill bird that fouls its own nest.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e8db06cc-8348-4069-8d60-b33198ecc328', N'It is better to die on one'' s feet than live on one'' s knees.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'95d0fc27-538d-4c10-a323-7ab8ba23ba11', N'It is difficult to escape being a peasant because resistance is feudal.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd6064c40-ad1e-48bf-94f4-02416ca5bdae', N'It is not what you say, it is the way you say it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'698ad1f3-123a-477a-b625-4ef3dbe49a88', N'It is not wise to open old wounds.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0f3b7182-c984-4111-9c04-af12888c195a', N'It is the early bird that gets the worm.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cf127be8-7fef-40d6-b2fe-9f2752ff8a5e', N'It'' s a cracked pitcher that goes longest to the well.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f3733750-bc97-498b-bb6b-fefdf6d110f6', N'It'' s a fact, taller people sleep longer in bed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'75c96564-b964-4dff-842d-f19f8b163d37', N'''''It'' s a German song,'''' Tom lied.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5188c3b5-3564-4f2f-949a-e38e22179490', N'It'' s a good horse that never stumbles.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ba1b9d11-2c8b-457f-8693-7ce6f2124efd', N'It'' s a lengthy article on Japanese Sword Fighters but I can Samurais it for you.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f20502f1-e5da-4b4a-bd93-6f64ec4ac0dd', N'It'' s a long lane that has no turning.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c47ec57f-a3b5-4552-b0ec-6d0e20fbb038', N'''''It'' s a unit of electric current,'''' said Tom amply.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3dda80c2-8ec3-4f5d-81f1-12aeb4bab3b2', N'It'' s amazing what two or more sinners can achieve together with synergy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'84599688-2d91-4963-9283-eba42c5df371', N'''''It'' s an actual parameter, not a formal parameter,'''' was Tom'' s argument.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f97a88b9-9752-4993-b8af-c474ac2843d9', N'''''It'' s become much bigger,'''' said Tom with a groan.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1b496f15-1e28-4880-8766-94fad61dc27d', N'It'' s been a business doing pleasure with you...')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9163b96f-935e-44f4-9b47-d84a4dbddeae', N'It'' s better to have loved and lost than never to have loved at all.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'feeb88b0-6bd9-401a-b4fb-0112dd8265c8', N'It'' s between my sole and my heel, said Tom archly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4b1f8218-3fec-44f1-aba0-d74bf23c6447', N'It'' s easier to ask forgiveness than permission.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3c9e1bda-0bfe-4958-87c9-48e564790574', N'It'' s easy to be wise after the event.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'15c9367c-e32f-4d88-af86-29caf36fe3e4', N'It'' s hard for a depressed turtle to get out of his shell.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8aeeb1e3-97e8-48b1-9a02-a0abc95c554f', N'''''It'' s just gold leaf,'''' said Tom guiltily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a7726e74-f3c4-4e00-9f0a-3237ea18c2c7', N'It'' s just like a cowboy to stirrup trouble.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dec5aba2-3891-4b32-af31-b7b2438c48a2', N'''''It'' s made the grass wet,'''' said Tom after due consideration.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c889820f-4e44-41fa-9224-0b25a6d346c8', N'''''It'' s my personal magnetism,'''' said Tom ironically.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'90061fdd-1c34-4ac1-9f58-7c11b5dc0a04', N'It'' s never too late to mend.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'84da1ce1-5c0f-4d53-86d4-4576a6e77248', N'It'' s no use crying over spilt milk.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'148cf772-be82-45fe-81e7-ce621513b1ee', N'It'' s no wonder that some baseball players have lots of money- often even many of the bases are loaded.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2761d639-de58-4202-bd5d-d1057d954b48', N'It'' s not a BUG, it'' s an undocumented feature!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'132ef4fc-6d4f-45b7-8665-532cd413060b', N'It'' s not that the man did not know how to juggle, he just didn'' t have the balls to do it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'045b42ce-f5a6-49c3-9d8d-0cb2e02dae6b', N'It'' s not the minutes spent at the table that put on weight, it'' s the seconds.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fefcda2f-f3e0-4db5-aca6-cbab139b9854', N'It'' s not the money I want, it'' s the stuff.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'109475c9-5622-4e1b-9a38-80b21d0e0c2a', N'It'' s OK to watch an elephant bathe as they usually have their trunks on.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd9de1a80-5fc1-4fe1-9578-aae82979da46', N'''''It'' s only average,'''' said Tom meanly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'95f5490f-42d4-40bc-9611-e5bc005e1ba3', N'It'' s quiet in a bowling alley because you can hear a pin drop.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4e60e8c0-8d1a-46d7-854c-42557c1a47b4', N'It'' s the Borg!! Quick, everyone try to look useless!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'41d1a55c-3333-46ca-89a8-08e84deb984d', N'''''It'' s the quotient of two integers,'''' said Tom rationally.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e5c3c41d-39b4-4d6b-ad04-e40f105ca4ca', N'It'' s true that the earth rotates, but scientists are always putting their own spin on it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'80bce096-12fb-4129-9e45-e08fac6b638b', N'''''It'' s twelve noon,'''' Tom chimed in.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2e48ae44-d399-4346-b9de-7071352c8a72', N'It'' s where we store the hay, Tom said loftily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8e612a22-f814-4add-a0aa-ff70422d442f', N'It said" Insert disk# 3", but only 2 will fit!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b3077e2f-a585-4b06-97a9-a85e56992559', N'It seems like it'' s always Patsy'' s fault.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e6d94fbc-6563-4599-9207-690f6b899d17', N'It takes a village to raise a child.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'13891f81-143e-4db3-a8c3-415175ca4669', N'It takes all sorts of people to make a world.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'edbd4253-1bf6-40f4-be23-8dee3922694e', N'It takes two to make a quarrel.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f8c55807-9a59-4f2c-a5ee-1efac56aedf8', N'It takes two to tango.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1c39a901-2e34-4786-abb6-e2d81dfdc083', N'It was a lucky car. Until he had to push his luck.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2088e666-dcae-4a80-be85-c3d637bb9ec5', N'It was a sad day for the rattlesnake family, the time had come for the children to strike out on their own.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a0dea772-5436-4a5d-883b-d93251db63a2', N'It was an emotional wedding. Even the cake was in tiers.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'49196d91-fc35-4f25-8045-6e51a86ebfd4', N'It was raining cats and dogs. There were poodles all over the road.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1c815b1d-d287-4561-8aef-2ebe6c7c6067', N'It was such a big piece of gold, he didn'' t know what to assay.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'727d509b-ca16-48fb-83b7-ef6e2b89a164', N'It was the first time she'' d seen a live sponge on display, and she really soaked it in.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1277a39a-5c8f-4955-9f3e-f2f0a3720f79', N'It wasn'' t my fault your wife wandered into my house!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'32ed0823-a740-4895-b941-36e5bcde732e', N'It wasn'' t school John disliked it was just the principal of it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'48a2d8f7-6911-4dbb-ace8-895f858a09d6', N'It wasn’ t the apple on the tree, but the pair beneath it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'140601f1-bba3-4d60-865b-73fcf66c68e2', N'Jack and Jill is the best nursery rhyme as others pail in comparison.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6dda4fdd-0005-41d0-881d-018306f4744f', N'Jenny was sure she was going to Heaven but she wouldn'' t harp on it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a06c0ac1-0592-4b55-864b-8dc9df4c8ef6', N'Jesus changes grave situations. Happy Easter.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f22ff9ab-eb79-4fc8-8327-f0bd5af16df1', N'Jesus did the only extreme world makeover, the flood')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'20398dd1-b3a4-4cbc-8298-bde8aed8828c', N'Jesus is more precious than silver or golf.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7035ea6b-3b41-46d7-ae7d-92fe5bb4343b', N'Jim:'' Did you hear about the guy who ate twenty pancakes for breakfast?'' Joe:'' How waffle.''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'14c0030b-0596-41bd-aaff-0bc5a12cc9bb', N'Joan is as good as my lady in the dark.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'939ac012-d13c-4bce-803a-a3c222a1baf5', N'Joe refused to eat sushi because it looks fishy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7df2a751-5723-4daa-8fe4-95dc7bfa85bf', N'John Deere has just released its most powerful tractor yet. It is the torque of the town.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'703dcf57-e908-4d2d-b977-527d547d7195', N'John Hancock didn'' t retire, he just resigned.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f4450c5b-3c0f-4f75-bd35-7b540f299f3e', N'John plans to retire in the spring and, like the trees around us, will be leafing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9e700390-dab4-4685-8e35-7886547e2f3b', N'Joy shared, joy doubled: sorrow shared, sorrow halved.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bab59e96-de53-4ff5-8353-615d5c2e6b14', N'Jumping to conclusions is bad exercise')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aab780a1-297d-4c22-bfe0-329d3585c54d', N'Junior loved being a member of the wrestling team even though he was prone to lose.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c1edd5f3-647a-44fc-ba36-9b0a3187ff48', N'Junk- stuff we throw away. Stuff- junk we keep.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4c83be77-8e1d-4cd9-872d-2e2c642bd590', N'Just after thimbles were invented there was a shortage, so many people got stuck without one.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'30d63bfd-7781-41a2-8b40-17b3d247c5ba', N'Just because pews come in rows doesn’t mean we should plant ourselves there')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'10740834-4289-4669-942a-c7277ff7de49', N'Just pew it')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e7408de5-43bf-449c-89b4-add1795f5d2f', N'Just steal her blanket.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'09120657-bc82-438d-a83f-4e1602a57071', N'Justice delayed is justice denied.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'84670aae-5b79-43ba-9b2b-866cd1aca06d', N'Justice pleaseth few in their own house.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f28a3795-1ba2-462d-8adf-bedf2c638354', N'Keep your friends close, but your enemies closer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8c28514b-6b64-4d6d-8de7-8271ecb31773', N'Keep your mouth shut and your eyes open.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f4929f82-447e-4c2f-bb4a-8b7e08af2108', N'Keep your own counsel.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'68934f55-fc2c-45b1-9f8a-fc2a760e1cad', N'Kennebunkport was George Bush'' s maine vacation spot.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'73501451-a34f-48df-b7fc-0bbf888fb342', N'Kentucky Fried Chicken, looking to expand into the area of low- fat dining alternatives, has begun selling popcorn. Their new motto is,'''' Look for the kernel.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'01b1ce61-e851-4ae8-8339-b4e7ae7d83f3', N'Keyboard not connected. Think F1 to continue.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8cb0201b-499c-4d84-ba6d-1377d19bb8d4', N'Kill them all!.... Let God sort them out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7f68b320-04ad-4dbf-a5d8-2ee001e86170', N'Kill your darlings.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9cea944d-78cf-40a4-afaa-4f1ff37458eb', N'Kindness, like grain, increases by sowing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0e33b8db-5b5f-4dcc-a297-fc985c296907', N'King Arthur really knew how to deal with the sworded truth.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f9817df3-217e-4cc2-ae75-0356d34dc4e7', N'Kings sometimes found that uprisings were a peasant surprise.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cbdf0bc4-2e96-42eb-969e-56c09fee6a43', N'Kinky: Using A Feather. Sick: Using The Whole Chicken')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4749a58c-e9c0-4f6f-a8cb-52bab8b42a39', N'Know thyself.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1347d722-bf5d-46f4-9d21-ad1f044ecf44', N'Knowledge is power.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'af784049-93fa-46ac-bbeb-34b9aa9b3499', N'Labor Day is a good time to stop and reflect on the august events the the preceding month.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'229f565a-1bea-4ad9-b08c-297b786d0a42', N'Lamb stew is much ado about mutton')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ccff099c-f0e6-4e5f-9187-0f033e0cf1f5', N'Last night sex was so good the neighbors lit cigarettes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c82df90a-d2b4-40e1-9e62-944c44ae5097', N'Last night, I kept dreaming that I had written Lord of the Rings. The wife said I'' d been tolkien in my sleep.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1a7eb2fd-842a-4f4f-b788-ae397ee7e9c8', N'Last week I was diagnosed with insomnia, and now I'' m just so tired of it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aa9b3bfa-30ea-4b78-a027-166439a6b337', N'Laugh and the world laughs with you, cry and you cry alone.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'950ac6db-6723-4bbf-bdbb-00d3ff23a539', N'Laws catch flies, but lets hornets go free.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'88324259-48df-4f80-90db-35f3eb0e20e3', N'Lawyers have to like alcohol because they'' re always being called to the bar.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f12d1e17-a897-4446-b6d2-1ac0a97e8211', N'Lead by example.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'64a8a231-d3e1-4b6e-9ea8-a2e7b719c461', N'Lead me not into temptation, I can find my own way')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7795f447-5af5-4dab-8e59-67c4a3fc0d60', N'Learn to walk before you run.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bfd5c7e0-2e23-45a3-85da-324e11e7e212', N'Learning is the eye of the mind.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a0dfc1ed-b2b4-46d1-98b3-e208daf8219d', N'Least said, soonest mended.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4ec90544-b52a-46dc-b0e8-4bc26b2b7b15', N'Leftover spaghetti is pasta its prime.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'256cbd5e-0612-4c45-8e15-2cd65a187f42', N'Legends tell us that a weakness of the carnivorous vampire is a steak.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'28bc79ae-9a60-4128-87a6-89623231f73a', N'Leonardo Da Vinci could use a paint brush to make a stroke of genius.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'03a0cf5a-3c86-4c59-bbee-d9c1eac92895', N'Less is more.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7ab6a3a9-7ee6-488b-926a-6fa6b2d74dc7', N'Let me know right away if you don'' t get this message.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'07a0bc43-bf04-43ab-b21b-59297602fea6', N'Let'' s all play an A, a C sharp, and an E, cried Tom'' s band with one accord.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'eefcd5bd-9667-4153-9003-e37cb90350ed', N'Let'' s get married, said Tom engagingly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'63fc5802-94e0-46c8-8785-f4dcebb289b3', N'Let'' s go to the gym and weight a while.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'603cad58-c806-47bd-a78a-f6a5f6d02b23', N'''''Let'' s take a vacation in the south of France,'''' said Tom nicely.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2d0b664b-e028-4911-b600-59106f5d22ed', N'Let'' s visit the tombs, said Tom, cryptically.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3ded9f40-3c7c-4307-9fe9-85eacade1e81', N'Librarians are always going by the book.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'11221491-1fb1-4e10-b642-994c1d896d93', N'Life after death for evil doers has always been a hot topic.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b638421e-f1fa-4ffe-b538-4f6d9a184cc7', N'Life imitates art.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'209b376f-f4c0-4de6-a6cb-5ea40c494717', N'Life is a game. Money is how we keep score.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e4d209e2-e5f0-4942-a119-66c242817ad7', N'Life is a puzzle; look here for the missing peace.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f6bbc45c-09cd-4afc-9026-e79be4bd20ef', N'Life is fragile, handle with prayer')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f3da6fc8-e24d-4845-8113-d4694ceaf4bc', N'Life is short, eat dessert first.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'340c0f92-9d84-488d-9500-284305b3d898', N'Life is ten percent what happens to you and ninety percent how you respond to it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c965e0fb-6aad-471a-927f-df910245b5a8', N'Life is what you make of it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6a0c6ead-5b80-446f-9c97-ed1c0b6cf06a', N'Life'' s battle don'' t always go to the stronger or faster man, but sooner or later the man who wins is the one who thinks he can.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'48268309-2b3f-4d53-854b-d7ab844a2a35', N'Life'' s essentials: H O C N Ca P Cl K S Na Mg')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'faae2a5b-a570-4879-98ea-3b0e3b30e7ba', N'Life’s a ledger, are we giving a good accounting of ourselves')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b841f4fc-fadb-4288-b6db-0658737cfbcf', N'Light at end of tunnel temporarily out of order.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b2cdd1f0-b24e-4641-a1d0-d922d6e8e3c2', N'Lightning never strikes twice in the same place.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'89c5089c-8b5a-42d1-91da-e46f38b3b34f', N'Lightning storms can be very striking.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9f890d97-d770-46d5-9cb0-839560e7bc96', N'Like cures like.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'afac5017-1ade-43c3-becf-072c97812f6a', N'Like father, like son.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5a4ff6e9-787d-4963-a513-b1af8b3fcc71', N'Limit Congress to 2 terms: one in office, one in jail!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'83a289a2-bff3-4d0c-949d-da74543be678', N'Lions don'' t have to worry about every little detail in life... just the mane thing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e9f5be7e-0397-4742-8602-913e3f8cc983', N'Little Bo Peep grew tired of the daily search for her lost sheep and decided to keep them in the garden area close to her house. Since she no longer had to spend her days tracking down her wayward herd, Bo decided to take up the hobby of flower gardening. Now every morning Bo Peep goes out to tend her phlox.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e8374c51-9542-47fb-911b-998120ce476c', N'Little by little and bit by bit.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'31dec346-e934-4bb8-b67e-2cd8feb1815d', N'Little strokes fell great oaks.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7e089007-d4f4-483d-b568-756e11b8535b', N'Live and let live.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fd0bace9-4bee-4545-be30-932ed1bd5572', N'Live by the sword, die by the sword.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c2548906-80e5-4a84-85d5-133517db035c', N'Live long and prosper... But don'' t let the IRS know.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c94634e6-479f-440d-8dd4-fefe99c5f389', N'Lizards have a very strong heartbeat which can be faintly heard anywhere on their body, said Mr. Johnson, beginning a story.'''' Come listen to this tail.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9a7df001-3dc9-4d7b-b31b-c996c0a47ef4', N'Local Area Network in Australia: the LAN down under.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'87b27e83-e90c-4b58-9adf-2705e5946188', N'Long absent, soon forgotten.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0bb4dad6-5e3b-4313-ac12-f2ab119984a0', N'Long fairy tales have a tendency to dragon.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2a6528a7-8523-4ccf-abf2-1647b082bf55', N'Look after the pennies and the pounds will look after themselves.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ad950145-fc9c-442a-8972-c300749939fd', N'Look at those tall flowers, said Tom gladly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c61ca32c-cf1d-4f9b-b44a-b0a302a9feec', N'Look before you leap.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd703f9b6-3ba2-4743-9e55-a304f97b3d39', N'Look on the sunny side of life.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1448b510-1c86-4ad8-bb7f-e596bbc58669', N'Loose lips sink ships.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8e711a3f-1851-4d97-8be2-c43bf9aaa55e', N'Looting a drugstore is called Pillaging.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'45e42b9b-1689-4b22-bc01-7c02ea7b8d78', N'Lose nothing for want of asking.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e7ff3d87-0a96-4c64-a82b-66692892f382', N'Love can be a touchy subject.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3a9878c7-7634-4ef4-8f9d-b2da063c8fc2', N'Love is blind.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c464c279-6af0-4e14-a94d-ba4caaf65e2f', N'Love is like war, Easy to start, Hard to end, Impossible to forget.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f20a0252-b1bf-40db-a8f4-3e67ad0d9a6e', N'Love is not finding someone to live with; it'' s finding someone whom you can'' t live without.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'441920e3-7c37-4f23-9dcb-296919339c8b', N'Love laughs at locksmiths.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'abb9fc31-6eb1-43a6-bb42-0f7d379d3c99', N'Love me tender/ love me sweet/ push me out at 12, 000 ft')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'97092501-86fa-4cbb-b6c4-e0b57f71c7dd', N'Love me, love my dog.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'705ce6fe-3320-4a2d-9766-fa34287e181e', N'Love of money is the root of all politics.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4cbe82a1-7a0b-4bda-9fb7-acc5e47968cd', N'Low carb diets really go against the grain.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'19b478e4-df07-40af-b479-0794df3ac01d', N'LSD: Virtual Reality without all the fancy hardware')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9f1226e4-67d1-493d-a0ec-f4e20cab2735', N'Luggage salespeople have to make a good case for you to buy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9de400dc-ebfa-4b33-9ec5-e8bc7012a10c', N'Lumber companies have many board meetings.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'71333b20-a1de-4737-b33d-46a61ce99f63', N'Lumberjacks have to keep problem logs.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'375a5d63-a275-4542-a957-643cb2a5a596', N'Lunatic asylum: where optimism most flourishes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fc496a54-40b6-4309-bc60-2aa10dbd58d4', N'Madame:'''' Now remember, girls, when handling royalty the important thing is to keep up your dukes!''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4dbb3fb4-0436-40fd-9dea-900012de4c66', N'Mainframe: the biggest PC peripheral you can buy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'93fded2b-5b2b-4727-b0b0-091200e0e00c', N'Make haste slowly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bf0da80d-d2ea-4f31-9a96-ce2da463738a', N'Make like mustard and catch up!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bc128f0f-9a0c-4549-be1b-95d55d584354', N'Make the best of a bad bargain.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'931dcf78-d0c5-4008-aea0-c7e241a209ff', N'Making gloves is a real hands- on experience.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'15021aec-9115-48ad-80f6-11aca6f7770c', N'Making up puns about the finest soil is the loess form of humor.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a25f44b2-d12e-46fb-b9f1-e5f8dc1724a9', N'Making your own hard liquor is a whiskey business.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'41a1964c-2398-4599-888d-06816032c6d3', N'Males who wonder why they should have a prostate exam usually get it in the end.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0fd617e7-8078-40eb-9d51-a841cb5b5520', N'Manners maketh the man.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7fe09b6d-db35-46f9-9b4f-81128a9f1e65', N'Many a mickle makes a muckle.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'37457349-6ecb-4e3d-9b95-ea21b89366e6', N'Many a true word is spoken in jest.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b52bf550-0812-4c62-a79b-c447c50ec1a3', N'Many are content to live in a coal mine and never see the son.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4ee7c056-8f4a-4b1a-9c32-1c84cc0de908', N'Many hands make light work.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'db9ceecc-4531-43ef-ab38-137b97667dd4', N'Many people are strongly attracted to a magnate.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'05c024bc-6dda-4f03-ba2e-d83e61900f54', N'Many people need to learn to be happy with the State they are in.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dd66d463-09e5-4b25-b9af-950aea6a2c81', N'Many people think that Edgar Allan Poe was a raven madman.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1ed047c0-3df4-437d-b4da-9681ec886056', N'Many things are lost for want of asking.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e1737839-bdb1-4d2c-bd3e-269bb73aa03c', N'Many words will not fill a bushel.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2907c723-6d4b-466b-88cd-b339454277fd', N'Marconi was not wired up about going.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e8fcaf13-8fe5-4e59-b1fe-ab30facad822', N'Marine biologists never make mistakes on porpoise.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5d7a5a72-a9ad-4507-af55-73f1833e8a3a', N'Marriage is hard but divorce usually goes off without a hitch.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6987eff4-32d1-4a68-91ac-cd3f74d9b8d7', N'Marry in haste, and repent at leisure.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'51032553-2dbf-4674-a51a-d94de1e6c2c3', N'Martians welcome. We have space for everyone.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd0e94bf9-7b1e-4e65-a989-58357661a096', N'Mason- Dixon Line n. Separates y'' all from youse guys')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cef776a3-f93f-4a0f-8929-42253f0cba5f', N'Massage therapists need a touch of style.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'82d95b54-696e-4465-b719-d0ca3487d28d', N'Math class is full of drama. There are so many problems to work out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a90e090e-9637-453d-a3f5-9f310304237a', N'Math teachers have lots of problems.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ebad6349-a533-40b7-a109-1dcf8976fc63', N'Mathematicians are sum worshippers.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fc2e6c71-4ee7-476b-966f-c2a338813d03', N'May the 4th be with you.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'abce9e03-d15a-4d56-9871-f504e0dcb85c', N'Maybe I should cut the power before I-- ZZZAAPPOWWWWWW')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e63e33b7-0597-49ec-a2ea-fb166c00cb2a', N'Meaning of life: < deleted for lack of space >')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'696cf3e1-7c4e-4b2d-b9c4-0521dc1d5050', N'Measure twice, cut once.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd0db09cb-3001-4ea0-9e8d-983047883029', N'Meet me at the clothes line. That'' s where I hang out!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4c25cc76-a980-434b-99d2-6aea4482caa3', N'Memories of you remind me of you.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8777ce29-fec8-4e03-9caf-c5ab00f7245f', N'Men leap over where the hedge is lower.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3d981cad-28e4-43cb-8064-1e95707ad989', N'Men talk only to conceal the mind.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'caf2a6c0-782a-49ab-a3bf-2327358e1077', N'Mickey Mouse gives some people Disney spells.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6a1c2d6a-906a-4b52-9a38-bf6aab6d10c5', N'Microchips')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'75065370-66e6-4bf7-9da0-47b50e4eabe7', N'Midwives don'' t like to wear breeches.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'af696e35-6b27-4e18-8b9e-ceafc94dfa4c', N'MilliHelen: Amount of beauty needed to launch one ship.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'980484ee-5b77-4be8-8688-293c32f04e91', N'Mind like a steel trap- rusted shut!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2f6b4ab1-2772-40fb-825f-31fec533eeae', N'Mind your own business.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1227b25b-6d42-4568-8918-400ac7e52c03', N'Mind your P'' s and Q'' s.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a31b41ca-127b-43cc-83f3-17914da1f6dc', N'Misery loves company.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd2ee0d27-e923-4e11-bde5-e9bb73da9608', N'Misfortunes never come singly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a859145c-2423-449c-951b-ca4e39ee97fd', N'Missing the wood for the trees.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4a489ac4-9432-449e-b921-ee0b66c611e6', N'Missionaries like open hooded cars because they are convertible.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7f79b742-e5b2-4aca-8ad0-2f02d33e74c4', N'Misspelled? Impossible. My modem is error correcting.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3687d591-c679-4eb7-972f-a165086a464a', N'Modern fashion designs are often presented with tongue in chic.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c3e37de2-0fce-4afd-9299-9cb83a6da2a3', N'Molecules boiling points vary to some degree.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6286c31b-7ee7-4f1d-b9f3-4f6139d61af6', N'Monday is a hard way to spend 1/ 7 of your life.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'749421e8-9665-4282-bfc5-e4c1f23cd108', N'Money doesn'' t grow on sprees.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b7836109-6e65-4993-bafc-66dbc7293307', N'Money is the Root of All Evil. For more info, send $ 10.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1e9c1630-c4c3-492e-8a78-67d60d5fb165', N'Money makes the mare go.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0855fadb-3609-42a6-a2fc-40bde95e05d6', N'Money talks.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9aa7e59a-865f-4f59-a17d-aa18b2dedf3c', N'Monkey see, monkey do.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'178ad3e0-ee6d-4a93-a2f1-79ceb2a62f73', N'More haste, less speed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a562b631-e62b-4ceb-9e0d-eef423209cc2', N'Morticians make you feel dead gorgeous.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'64d97681-a976-4f81-bf83-7366e8263828', N'Most hunters are nice because they'' re such deer people.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'13745f45-8c54-4453-91ee-b3c0c3203a0b', N'Most males in a men'' s room are stand- up guys.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6ee3e603-eafa-41e7-9f23-9ea4d1592fe9', N'Most samurai refused to shave. They were bushi.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aea95953-3fe9-440c-b1c7-dac90586864d', N'Mothers everywhere want their children to give peas a chance.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5435739f-8d61-445a-a5d3-9fc0bdd281ba', N'Mourning has broken on Easter Sunday.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6ca4e200-8513-4065-aabd-06b7166ec3ce', N'Mr. Coffee returns from Soviet Russia:'''' I have seen the future and it perks''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4d80f8ad-a87b-4dd2-9c6e-a43f48684958', N'Ms. Earhart'' s loss to aviation could never be ameliorated.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fd7e200e-1848-45f6-9176-1f55604608b9', N'Much bran and little meal.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e322dfab-3862-40d5-a3f5-a411ef9d2812', N'Much is expected where much is given.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'302be381-0e5b-4ec1-a6a5-eb7a30abff87', N'Multitasking = screwing up several things at once.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd4bcfc2d-5be2-48d1-8c95-32e922a0a9d2', N'Musical composers can use lots of Note paper.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fe173310-40e7-45d6-bda1-db5c8106b543', N'Musical mechanics always sing in parts.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd6762bb8-6c9c-4d2a-b2d8-4b68a790487a', N'Musicians need a leader because they don'' t know how to conduct themselves.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3d64f27f-e735-4c8f-bd6d-1a21ce7906ae', N'My advanced geometry class is full of squares.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'09ac72a1-d007-4695-b9fc-f95676066e9c', N'My bid for this contract aims to please, said Tom tenderly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fee3f810-c9de-43a0-9399-3ad2e00c9e4f', N'My boyfriend and I started to date after he backed his car into mine. We met by accident.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'eb0b0650-383f-4455-bb09-05fc2caf47a8', N'My brother told me that serpentine is what you use to get paint off a boa constrictor.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bb04a1d6-d441-447e-a9a2-d66909f77d4c', N'My buddy asked me to look after his pet goose while he was away. I told him I wasn'' t down with that.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9730e081-7790-42f9-8ca7-eab834ccfe07', N'My cavity wasn'' t fixed by my regular dentist, but by a guy who was filling in.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1c5e1284-7649-4fb2-b68d-0aea5f97d31a', N'My chronically runny- nosed friend, who staunchly opposes all independent emirates, was bothered by catarrh on his trip around the world.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'64e55531-cecc-4320-a359-6b94018180fa', N'My coach got stung by a bee. The next day he had hives.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4bf05082-2682-4f9d-9176-435c28f6efff', N'My comb is invaluable- I can'' t part with it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8bb2efe6-f97d-4be5-91c5-3653c38d609c', N'My computer is so slow it hertz.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a968b07d-69f2-4119-9028-cbcb2bd4e5de', N'My daughter'' s studying natural medicine and I'' m rooting for her.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'17d7b685-e367-4d0e-bef8-5bcaa7a4f82c', N'My dentist seems distracted, I think he was brushing me off.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1f690230-2b68-4ff2-b778-f0784cd39607', N'My dog has a lot of potential, you just have to unleash it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1fb4aa75-be62-4ab1-bbed-b30b036eabb4', N'My dog swallowed my engagement ring. I ended up with a diamond in the ruff.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2b19b0b0-0e4d-4674-b4c3-c81146588cc8', N'My dog thinks he'' s human, my cat thinks he'' s GOD.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd1886914-a606-48c2-956d-d7d861389268', N'My family scoffed when I had a divine inspiration I'' d get rich selling my'''' Beets Brule,'''' but after I made my first million, they had to admit I made quite a prophet.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c166791f-fa7e-4180-bd07-eb46edc73efc', N'My father'' s father wanted to know if he could stay with the company in spite of the many changes. They ended up grandfathering him in.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3746f89e-e00b-4cba-be85-2b75ec44787b', N'My father slept under the bed, I think he was a little potty.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'47b74e29-0460-4e23-b96a-5dcb62fc6ec2', N'My fear of planes has taken off.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c10de7dd-7c4e-438e-9ecc-5bdabad116e0', N'My friend asked me to carve a sculpture out of a large rock. It was the hardest thing I'' ve ever had to make!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'54034e24-299a-42c0-8b74-02e0caf6d528', N'My friend came around for dinner. We ate for 20 minutes, then he fainted again.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b4dbaa28-6a83-4259-a9e8-3921f3fc1b50', N'My friend gave me a book about puns for my birthday and I loved it. It was two meaningful.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1006a903-036f-4c8d-a2e2-86bc4b9ad83d', N'My friend is moving to Seoul. He thought it would be a good Korea move.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'128eb144-a9b6-44ef-be2b-6f1728dfdbc6', N'My friend is very paranoid. He says people are either foe him or against him.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6b1bcc3e-5c4b-44f8-8752-a0dc29aa9274', N'My friend lives by a cliff he'' s always telling me to drop over.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'50d81582-25a0-45b0-8f4c-8903a28e2c86', N'My friend'' s bakery burned down last night. Now his business is toast.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6147911b-63c7-431b-ab8f-e0365c512051', N'My friend said,'' There'' s a lot of gold in those hills.'' I replied,'' That'' s a load of bullion.''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c8d9779d-f865-44f7-989d-f21b309bd7f6', N'My friend was fired from his job at the road department for stealing. I have to say I saw it coming. The last time I was at his house all the signs were there.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9d49b9f8-5ce7-4d2d-a864-e10dc26b67b1', N'My friends and I played a game of football on a pile of quarry rock- we lost on aggregate.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3422dc76-0569-40b5-a0ea-ee5c20ad490d', N'My friends call me Mesa because of my big butte.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'55f05fd7-67c5-4217-b9e5-1303b7cfffa6', N'My grandmother learned grammar by wrote.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'531f26fb-4178-4c6c-9853-2e4894d692a1', N'My heart starts aiken when Clay sings.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'61bedbe5-af4e-40f9-9180-3e2f3d0f9ee1', N'My investments are worth more every day, said Tom appreciatively.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a42b55d8-196d-4a72-8a66-0e7d31d3b3d5', N'My job as head chef at a top rated restaurant is in jeopardy because my latest culinary creation was called a recipe for disaster.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fce02128-27c8-4366-8619-7a64eba6cc5b', N'My mailman should be a comedian, his delivery is perfect!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'960962ab-f614-4403-8900-d8d360a09801', N'My mate swallowed a cordless vacuum cleaner, they took him to hospital and he is picking up nicely.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7a0ac9c5-53be-412e-96ea-43f51aa49065', N'My mom ran out of poultry seasoning so she winged it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'29096a91-b826-45f1-8c1c-805021a3cfda', N'My name is Abbie. I'' m a Mother Superior.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0435e710-8c98-44c8-af64-b16715ce2425', N'My name is Art, I'' m a museum curator.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9b32aa97-b5ab-4124-a39e-b6ba8a0b2e83', N'My name is Avery. I raise birds.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'974d42c5-1749-4e39-a037-53655ed37696', N'My name is Barry. I'' m an undertaker.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd42561fb-2f5f-435a-88dc-bacfd95f4b74', N'My name is Bea. I'' m in the honey business..')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a7d4054b-d6fd-4d84-a89e-2b4d04e8eb80', N'My name is Belle. I play the carillon.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3d13dfff-ab85-492b-8574-f22c0f6698f5', N'My name is Bet. I'' m a coupier.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'13b1fb20-3feb-47fe-9c49-88e9f696922d', N'My name is Bette, I'' m a gambler')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd5c504d6-8f3b-4e76-8d7f-f00091232ac3', N'My name is Bill. I run a collection agency')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'91e809eb-407d-4cdf-b89e-d53909b27b32', N'My name is Bond, James Bond of Borg. You will be shaken, not stirred.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c8d4204d-8eb1-4390-91b4-961439a8fb27', N'My name is Brandy. The bartender.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a76b43bf-97cc-46f6-a58e-d08b7d249896', N'My name is Brooks. I'' m an irrrigation consultant')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5c328d1e-0aa7-4ed3-9fb2-f39e87a0b8ed', N'My name is Bud. I'' m in flowers.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aff75000-44d7-4433-b557-fdce5ad6a78b', N'My name is Candy. I'' m a confectioner.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'06c86fe1-b6b1-4920-b00a-d13ff2454f9e', N'My name is Carol. I sing during the holidays.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b34937b8-37c5-4a39-80c4-d74b428a1680', N'My name is Cary. I'' m a porter.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'902cfbf4-2a69-4957-a1c0-da420999fdc8', N'My name is Charity, a televangelist')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'657d28e3-b995-41f0-8f2b-6e6a8d9c6ae5', N'My name is Chuck, I'' m a butcher.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b0711262-8cc0-45be-bf2b-a43f8d3d7090', N'My name is Clarence, I specialize in end- of- season inventory closeout sales.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9ef33e45-1639-4829-84f5-aacad89ee38a', N'My name is Clay. I make pottery.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9bf7f31f-a6e3-40f0-b8b3-b87625cdb365', N'My name is Cliff. I'' m a mountaineer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fae715e5-e92a-4b58-bfeb-e4d83f51caff', N'My name is Cookie, I'' m a baker.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4980e7f7-6f59-4987-ac18-0a7f8c5b93c7', N'My name is Dean A college chancellor')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b3b63c9f-91fc-45e2-a509-8701752dd165', N'My name is Derek. I'' m in the oil rig business.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b28f599e-5ba9-40d8-bec8-534f13a9fb68', N'My name is Dick. I'' m a plain- clothes policeman.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bf5ff3e3-8306-4edc-932b-70dc11a499a4', N'My name is Doug, I'' m a grave digger')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'953bbeb6-41d5-4e60-a560-c7873430da8a', N'My name is Dustin. I'' m a school custodian')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b7a6cf9c-d389-48f8-935c-1f012312438f', N'My name is Dusty, I run a cleaning service.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd4c85391-d7a9-4965-ab31-539601b7790f', N'My name is Emmy, I'' m a T. V. star')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ec541bc3-4064-47c6-9f51-6f53e20c5fcc', N'My name is Faith. I'' m a minister.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c6fd62cc-1098-4d74-9668-9bd7ae7f18ec', N'My name is Frank, the Hot- Dog vendor')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'62ebfbcd-e0c8-4e2b-bdcc-7047058b9d24', N'My name is Gail. I'' m a meteorologist')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'992cc819-bf70-4564-9ca1-3b7f22bd49eb', N'My name is Gene, I'' m a DNA researcher.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2280e561-75ec-43b9-a936-741eacbd55d0', N'My name is Gil. I'' m a fisherman.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'14dd9cd2-93ea-4e78-8c3b-c613a97e3d8d', N'My name is Grant, I am a loan officer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a81c181a-adde-437b-88e1-2a06403d6918', N'My name is Guy. I install antennas.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b55b426d-cb44-40c6-8fe1-995a869eb858', N'My name is Ham. I raise pigs')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'de340c2a-e50a-4baa-9283-4095832a63b1', N'My name is Hans. I'' m a manicurist')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'eb564384-1ac1-43bc-a627-b10460587232', N'My name is Harold. I'' m a messenger.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7f24d39d-1ff3-4b76-b4db-4da351ac49ca', N'My name is Harry. I'' m a barber.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'877a135b-c354-4a0c-a4cc-ed6e33bea9e1', N'My name is Herb. I'' m a cook.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b64dd0fe-5e12-4c2d-8d5e-32436875710f', N'My name is Holly, I'' m a holiday decorator')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e1478326-a67f-405d-84c3-ad92c5e6440a', N'My name is Homer. I am a realter.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ebb1aa9b-ac46-49d7-a90c-59271d4e8ccc', N'My name is Hugh. I'' m a painter.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4d5bd030-d136-44ce-bfc0-9b65086914af', N'My name is Ira. I'' m an investment advisor.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b842157c-201c-4768-b125-329153fe7199', N'My name is Iris. I'' m an optometrist')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd4be65cf-888c-43ec-8549-d35ad7be456a', N'My name is Jim I train boxers')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0f1a41a5-a10e-4c7e-b583-9616ff666214', N'My name is Joe, an espresso vender')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7d240778-9727-4a1e-9ac1-dce9beac9173', N'My name is John. I'' m a plumber')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'85ec36e1-3082-4957-9891-a23bc0f5eb7a', N'My name is Josh. I'' m a talk show host')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'54281b40-8df4-4096-a8c3-9f6014525ddc', N'My name is Leo. A lion trainer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8803c660-25bb-4982-b9dd-6798785e8e52', N'My name is Les. I'' m a dietician')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3fb9318e-69a7-48c1-8c42-bf96d2145cc7', N'My name is Lute. I'' m a musician.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd89c364c-eec7-4d7b-8662-a3ddda96ec06', N'My name is Manuel, I write instruction books.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9137802e-35f7-452b-9074-bf43ffcadc56', N'My name is Mark. I price items at the supermarket.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dcc12f91-db02-43b9-8c5c-991e16caa16f', N'My name is Marshall. I'' m a peace officier.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'924a7ab1-3955-4f07-bd49-09d7a9659817', N'My name is Mary. I'' m a justice of the peace.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ef2a1f95-c045-41e9-8f21-353f75fba797', N'My name is Matt. I'' m a doorman.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'db77f4e0-df0a-42e9-bc6b-d787935adf82', N'My name is Melody. A Musician')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5fd30bed-1a2a-4a1a-b26f-f22781d6fad8', N'My name is Mike. I'' m an announcer')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1cd56e97-e1f7-429c-a551-9f21d183b8ef', N'My name is Moe, I'' m a gardener')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e1a41405-21a5-4f72-be0c-d18e8cf2f1c0', N'My name is Nat. I'' m an entomologist.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7fe5133f-423d-4069-a8ec-b95911db64ad', N'My name is Neal. I lead prayer groups.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5e137e93-565a-459d-adb4-ffae2e80b1ac', N'My name is Nick. I was a barber but I'' m looking for a new job.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7b66e682-9ca8-4db8-9df1-57af19bd95f0', N'My name is Oscar, and I'' m a movie star.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8d64ed10-98db-472a-9690-a628712bd089', N'My name is Otto. I'' m a car mechanic.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4ebd34a0-ed2e-468f-8818-12dcd197bc0b', N'My name is Pat. I am a masseur')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'77ea49a2-4f68-4d9d-8b70-618a4c65ec3b', N'My name is Phillip, I'' m a service station attendant.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3f8ceb13-d161-4d73-a522-94e63f7e0979', N'My name is Ray. I'' m a roentgenologist.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2f08156b-9c4e-4fe0-a435-7ede9ed94539', N'My name is Rex. I own a junk yard.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f606c602-d73d-4244-b856-f5beeb7a2457', N'My name is Rich, A successful investment banker.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6e620807-2c8c-4242-b881-c88bf77a3a3a', N'My name is Rob. I'' m a thief.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'eb46658e-b7a4-4753-9992-1e6bf73ef6d2', N'My name is Russell, I'' m a cattle thief')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a638c998-8bc9-4529-bf18-38f0ed7a82f0', N'My name is Rusty, I'' m an iron worker.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2b2331de-7b43-47bc-aad4-5c9c6ab06861', N'My name is Rusty. I undercoat cars.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd7c55fc1-04aa-4ed7-bc59-08ebee6b269e', N'My name is Sandy, I just hang around the beach.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ff77e1db-7fa1-454d-8c79-7f0bd463c4fa', N'My name is Sandy. I'' m a lifeguard.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e34b348a-2bc0-4f42-9ff0-1413a20e912b', N'My name is Shelly, I'' m an expert on mollusks')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'88b10597-841b-4494-8eb8-c2d5d0dc583e', N'My name is Sherry. I'' m a wine- master.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'02367000-fd44-449a-944d-3c3d76be109c', N'My name is Sherry. I work in a vineyard.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ddda5c4f-4a02-4847-8401-765d3b172d41', N'My name is Sly. I'' m a detective.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'55e1dbd4-e19a-4c9a-a3ec-b692f5ce543f', N'My name is Stu. I also cook.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1f42ca89-11a2-4247-8ca3-81dc83019663', N'My name is Sue. I'' m also a lawyer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e6700da8-09ec-4049-887b-e015e268f726', N'My name is Teddy, I'' m in lingerie')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b4b47a3d-ca04-4860-bfce-1e22ee35cd34', N'My name is Tellie. A gossip columnist')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'37ada591-62e9-454d-93e7-eeee80193526', N'My name is Victor, and I'' m a winner in everything I do.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'737031cf-b981-4329-a23d-37e91fe88db4', N'My name is Wade and I'' m in swimming pool maintenance.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e7f3885b-0e50-4dfb-a908-3be4d805580e', N'My name is Will, I'' m a lawyer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a3e77b7a-cc2d-4146-b761-405d9ebe65be', N'My name is Woody. A Forester')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a2dc9b4e-a158-491a-9ba1-6c9c98838b6a', N'My neighbor'' s sprinkler is a constant irrigation to me.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dbfb20f8-9d71-43cd-816e-de55883bad93', N'My new expensive vacuum cleaner really sucked.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b14a5201-d585-485a-90d7-54518a6d39d3', N'My new girlfriend and I are moving together into a tree house, I hope we won'' t fall out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4d3642c2-7411-49e6-978f-a30fa75f6f08', N'My new theory on inertia doesn'' t seem to be gaining momentum.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6b1ee18b-4eb9-45e1-995b-223e6e1b56d1', N'My other computer runs the Enterprise.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c2e8aafe-a988-41f8-99f9-0d95ca507e7d', N'My other vehicle is a Galaxy Class Starship')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'42c9c513-8929-4829-9b7c-7745ae675737', N'''''My parents are called Billy and Nanny,'''' Tom kidded.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c305d83b-80ea-4174-bdbe-d1af4f0665ed', N'''''My pencil is blunt,'''' said Tom pointlessly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5140718b-d1b6-49bd-98d6-8840598c79dc', N'My pet bird can predict the future. He is an omen pigeon.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e2fcc2ea-6906-4e5e-a9a4-6254063ed378', N'My shins are well protected, Tom grieved.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0cb8ed1f-1ab1-48fb-8679-f80fd86c0643', N'My skiing skills are really going downhill.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5b68ee0b-aedf-4368-af82-035351afafb6', N'My sofa was repaired, but I was surprised to find an item on the bill for upholstery tacks.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8a4b29bc-b308-424e-b963-0316744eac37', N'My son wanted a scooter. When I told him they are too dangerous, he moped around the house.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f60e8dd8-184b-46b4-b9d9-c7dc462d98db', N'My stereo'' s half- fixed, said Tom monotonously.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f93c8284-93fe-450f-9c6c-df6c1f6d5fee', N'My student was late for class, claiming he was in the washroom. I think he was stalling.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'09655f42-b922-4779-bfa3-40f3ea5aa8af', N'My stuffing was bad, so I got some sage advice.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b65aa054-6b4f-4186-b824-18cd134ab428', N'My sweet mother got so old she granulated.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1e136dc3-dd6c-4363-918f-7e846b624263', N'My two uncles bet who would get married first. Then one upped the ante.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'71f2ce49-a067-43e9-919b-3fe88d905406', N'My uncle developed a strange vulgar habit. He would only cuss when he'' d eat chicken. The doctor said he has seen this happen in some cases. Too much chicken can produce a fowl mouth.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5e359aaa-8928-4865-84cd-33146458bc44', N'My wife is a fine cook, plus a great algebra teacher, she is quite famous for her pi.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fac0428a-0733-438a-9567-f09da8e58ee6', N'My wife is trying to lose weight but continues to frequent the coffee shops for rich beverages and delicacies. You could say she is making a moccary of her diet.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'302fd326-55da-4b20-8144-d9bb9fd4c03d', N'My wife really likes to make pottery, but to me it'' s just kiln time.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'64b8b9b6-3e79-493f-b345-77ff1efa41e5', N'My wife uses a kitchen implement to shred garlic and parmesan cheese, which I hate. It really is the grater of two evils.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'60338ffc-f2d8-4b8c-b9f3-aa5736fb76ed', N'My word is final! Tom dictated to his secretary.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a8b206ed-876f-4677-a702-93405b4b0446', N'Nature is beyond all teaching.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c0232c8c-bbbd-4b90-bff5-f23f950e8d8b', N'Nature never did betray the heart that loved her.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1e4f5971-4b7b-4170-9c5f-0c7177a0c08a', N'Nature reserves are an eagle opportunity employer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4c4200ef-7e65-42b1-831d-b86f41306630', N'Nature, time, and patience are three great physicians.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'be13be9d-97de-46b9-9a14-7d09ca80e4ad', N'Naughtily, Tom said nothing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'57493f63-69cd-44db-92b4-e1ecedb261aa', N'Ne'' er cast a clout till May be out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8aca9cc5-55cd-4197-bad5-42f423d1089e', N'Nearing the end of his sentence, the convicted Wall Street wizard, feeling both oddly safe in his spartan confinement but not quite penitent for his overzealous trading misdeeds, feared and anticipated his release, nightly dreaming of his long cherished hard sell.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6d967fd9-a988-49bf-bd7b-f70fa0544672', N'Need soul repair? Walk right in.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0647bdab-883a-498e-ab0c-e37af7741c3d', N'Neil Simon'' s only unsuccessful play: Chapter 11.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0e8d74a3-7671-4c3e-9906-a1cbc48ce926', N'Network management is like trying to herd cats...')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c29247da-a9cd-49ae-80d0-56ede8a54a0e', N'Neuter your dog- an ounce of prevention is better than a pound of curs.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'31d8bd63-afc9-4f64-b3ae-b0917360ab4b', N'Never ask pardon before you are accused.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'051d5472-8473-43d5-8ebf-9d40b66a00fe', N'Never draw fire, it irritates everyone around you.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f5ad925f-9472-4474-b24b-7eb160105652', N'Never insult 7 men when all you'' re packing is a 6- shooter')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5fa29907-5658-4c5d-98d5-8d2bb881fbc2', N'Never invest in funerals, it'' s a dying industry.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e4d9b799-b3bb-4546-8c61-e841efa01266', N'Never lie to an x- ray technician. They can see right through you.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b4e806f9-0849-48da-84de-1c822e722fa8', N'Never lie to your doctor.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd9121cb3-9791-4138-9c27-eebe94d07c9e', N'Never lie to your lawyer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ad6f68a6-5ee1-4ffd-baad-40603cb89df6', N'Never look a gift horse in the mouth.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'88aa5cc1-e42d-42ea-ad43-d227f8cd325a', N'Never make fun of a Scotsman'' s traditional garb. You could get kilt that way.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bb526c68-ac1b-4c67-8c0c-0da0652ba108', N'Never mind the star, get those camels off my lawn!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'23878c1d-fa3c-41e7-bc1c-63238e835082', N'Never put off till tomorrow what can be done today.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a2ea834b-a2f1-4c76-af6e-aff3e9486994', N'Never say die.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9a55b4a2-d625-42d8-b66d-ee3587354fc8', N'Never say never.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'89797aa2-674c-46cc-bf54-69845e1a0e52', N'Never share a foxhole with anyone braver than you are.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'76736c87-8d4a-41c7-8a8c-6a03f4aa3ae1', N'Never test for an error you don'' t know how to handle.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'824ce52e-cae8-4e47-a89c-bb6318f3c2ae', N'New legislation forbids anyone but Santa'' s family dressing up as him, and you must be named in the related clauses.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e85b7c7b-15f2-47b3-93be-ef140ddd33e4', N'New religion? I haven'' t used up the old one, yet!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0ab64ee4-c911-4bf9-93eb-bcb36da1ebbc', N'New years resolution for the bankrupt gardener was to forget the past and rely on the fuchsia.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e2e551da-3d76-40ac-ba00-8da53be8320a', N'News of a coming flood was leaked.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a02c3de3-79f3-4cee-969f-261207a02f97', N'Next time you wave, use ALL of your fingers!!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c9b73d2d-43fb-43f5-9fcb-aac5dfb288d0', N'Nice looking glass! said Tom reflectively.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'23c86a61-e479-4c52-9a0c-4c33cfa8b635', N'No book was so bad, but some good might be got out of it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e3d067b9-05b1-4f43-9aaf-6af22b973947', N'No bungee cords, but we encourage leaps of faith.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f3c727ff-d420-4c69-b516-ca3a81d72dcc', N'No Credit, Bad Credit? No Problem. No Money? Problem.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'41aae9f0-9ffe-49a3-be0b-aebd636d26b0', N'No longer foster, no longer friend.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'83f9d1b9-6866-4d75-a9f5-331c46711805', N'No man can serve two masters.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8c8d8f20-7b1c-4755-b033-cbffe9b62ed7', N'No man is an island.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'07c20594-5ac0-43a9-8ae4-297bd45c270c', N'No man is born into this world, whose work is not born with him.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'77c57037-c588-4c32-afc0-ccfcaf9cf142', N'No man is indispensable.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'16c111d4-8176-458a-afd7-08caee15d2af', N'No matter how much you push the envelope, it'' ll still be stationery.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'33a81698-7598-4f30-a2ca-6536126c066c', N'No need of words, trust deeds.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'77bac9cf-2287-4624-9953-f557f82e68cc', N'No news is good news.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e19d5420-1d55-4c93-bf1e-d8101d8d56f3', N'No one chills out in the fires of hell.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'43ba75ed-ccad-4c2d-94a7-f4e423eaa95a', N'No one knows where the shoe pinches, but he who wears it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e3601701-8db8-44c8-8448-96b35b286078', N'No pain, no gain.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'38daa890-c327-48ff-b456-680753f88e8a', N'No viruses detected. Must be a pair of Nanites.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'37506e25-f572-4bf4-9f57-ebae3093bfa3', N'No, baby oil does NOT come from squeezing dead babies.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'54a3bafb-e59d-4a99-a8d9-e7908986e8f2', N'Noah wasn'' t the first off the ark. He came forth.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0725bd46-ee66-4a5d-bd89-15e71a3d3b62', N'Nobel got a big bang out of it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6af7e775-ce59-41f8-8b91-b425b4dd8100', N'''''Nobody has scored yet in the tennis game,'''' said Tom lovingly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd2a28e02-110f-48b0-afb4-afacd68fbd41', N'None but the brave deserve the fair.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'119368be-0b87-4091-a1b8-10c126102796', N'None of you exist. The sysop types it all in...')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'36ba1c2e-f094-4f45-af19-3e86eedaff92', N'Noteworthy musicians are very composed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3e07dd06-b6f1-4ccc-9e36-45c09202e65d', N'Nothing can compare to picnicking on a French hillside and savoring the bries.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'06edc3ee-9770-4234-9eaf-216698e9b672', N'Nothing for nothing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bbc43a4d-6730-442d-846f-be41c556fbff', N'Nothing is so smiple that it can'' t get screwed up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'579e4153-3256-4785-9f59-05f01d5bcb73', N'Nothing succeeds like success.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c0853281-ddf2-4b2a-aa05-fd9f5f1a030e', N'Nothing ventured, nothing gained.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd5aec1f7-6291-4570-aa0f-a403162930a0', N'Notice in a field: The farmer allows walkers to cross the field for free, but the bull charges.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'628c0b58-6edb-4701-a9be-21167f14b684', N'''''Now I can do some painting,'''' said Tom easily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ff013c92-e6ae-4779-87cd-4b85e4ccd5f6', N'Now on CD ROM, classic taglines of the computer era.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'561a455f-57ef-44dc-abec-d2d543923e35', N'Now, witness the power of this fully OPERATIONAL tagline!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0e4a6648-41fc-4256-b61f-d4467764da37', N'Number of Vulcans needed to replace a bulb? Precisely 1. 000')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a3a20db8-e61c-45a6-9a07-d54d9e9a2733', N'Objects in taglines are closer than they appear.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'41223336-60eb-4b0f-af8f-b5e9862f1a3f', N'Objects under T- Shirt are larger than they appear.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'82929eae-72e4-447e-a39a-ad79e3e4ac1b', N'Occasionally, I hear an assertion followed by a hasty qualification, such as,'''' Jim graduated in 1995-- if memory serves.'''' I'' ll respond:''... or only stands and waits.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b81af2a1-caeb-4e0d-9add-1792c834ba36', N'Of all the people I'' ve met, you'' re certainly one of'' em.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3792419a-2ce3-4790-b9d4-57c593cee786', N'Of course I have backup tapes! Do you want last years?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3e9f5600-69bf-4576-ac2f-b18c943a6e78', N'Of COURSE I'' m on topic.( Which echo is this?)')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd08166cb-8faa-4432-86b4-03836192c6d8', N'Of two evils choose the least.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3ee566e0-6e0a-4ed7-921a-ae932f1eae0f', N'Officer Jones takes his yearly bath every June. He is a characteristic example of a dirty cop.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8f3122ef-027b-485d-9b51-b597cf5a3a42', N'Oh sure! But what'' s the speed of dark?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'80c6cff8-c422-4fce-ab5f-3db30291cbec', N'Oh what a tangled web we weave. On the Internet.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'abe84231-9c2c-4d69-b6c9-9a4edc2ec13c', N'Ohm resisted the idea at first.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'60d8426a-1e78-43fc-a06c-e182b9353a7a', N'Oil executives are always using crude language.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'34b9d00b-c05a-4226-8fda-d288e8c8c90e', N'Okay, I pulled the pin. Now what? Where are you going?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'afde935b-a539-452a-8940-398e5f8a532b', N'OLD ACADEMICIANS never die, they just lose their faculties')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6fb1a5e4-2f36-4fbb-9952-6a283de649a2', N'Old accountants never die, they just lose their balance.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'72eeaa23-20f8-4082-9a43-70ca76e03439', N'OLD ACTUARIES never die they just get broken down by age and sex.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bd411a6e-a282-4f02-ba7f-e19171dc8588', N'OLD AIR CONDITIONER REPAIRMEN never die, they just lose their cool.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8a6a47bb-83a0-4be0-91b2-71907f6dfa7c', N'OLD ALCOHOLICS never die, they just lose their spirit.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5f8caa35-34f4-4516-aff3-e4bb78ac123f', N'OLD ANTENNA ENGINEERS never die, they just phase away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'67ecf252-a20b-49f7-b218-58db6ef527ed', N'Old artists never die, they just put things in perspective.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f96128cf-1820-42e0-9790-7605fd2b7840', N'OLD AUDITORS never die, they just lose their figures.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0aad781d-a8c4-4915-aa7a-9c246ced946d', N'OLD AUTO MECHANICS never die, they just become exhausted.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'82c966b8-84f9-44e8-a73d-6add3414876d', N'OLD AUTO MECHANICS never die, they just retire.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b09a866f-ab70-40bf-8292-33064c35be9e', N'Old bakers never die, they just keep making lots of dough.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'072b25cd-df9e-44bd-b2cf-3df1d99e7bad', N'OLD BAKERS never die, they just stop making lots of dough.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4491ba6e-fdb5-422a-ae9d-ff1357e560e9', N'OLD BANKERS never die they just lose interest.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'76aee28e-d96a-4059-bebf-fc5df935b659', N'OLD BASEBALL PLAYERS never die, they just go batty.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'014f56c4-9abe-4bc6-b197-4cc804b9908c', N'OLD BASEBALLS never die they just get pitched.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'02f503e3-6388-4dd4-884e-4e8b0c664efa', N'OLD BASKETBALL PLAYERS never die they just go on dribbling.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dc2e9c41-d890-4465-a799-ec8e09045db9', N'OLD BATHERS never die, they just wade away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0d7d6480-8711-41fd-88ee-31c3cb77c663', N'OLD BATHING BEAUTIES never die, they just wade away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e158adfe-0704-449f-8190-8c9531d80e67', N'OLD BEEKEEPERS never die they just buzz off.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cd5fcf9e-50af-4282-8a24-845ddc033d6f', N'OLD BLASTING TECHNICIANS never die, they just lose their spark.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'82318047-5277-4cc6-b93e-b13c261da423', N'OLD BOOKKEEPERS never die they just lose their figures.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'05abb1d9-4c88-4084-91b9-88e6edece557', N'OLD BOOTLEGGERS never die, they just keep still.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'66e6192a-93ca-4f61-ad59-b9da2d1ab3b6', N'OLD BOTANISTS never die, they'' re just deflowered.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1fd47188-0350-4435-a389-d37be86a4ebf', N'OLD BOWLERS never die they just end up in the gutter.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'01a8b53c-c143-49e6-b2c5-d9594bf46eb3', N'OLD BOXERS never die, they just punch out')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'74db0a13-b56b-463d-ae59-ac00c922036d', N'OLD BREAD MEN never die, they just lose their dough.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'46e37d96-a2f5-4fbd-855e-fda0d90e2c94', N'OLD BRIDGE PLAYERS never die, they just sit around on their fat aces.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e8035038-b354-4e84-a244-288890e24b1c', N'OLD BUNGEE JUMPERS sometimes die but they can still bounce back')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'322364dd-6d67-4621-a8be-26ee93eef766', N'Old burglars never die they just steal away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9a083148-4530-4a5a-b5af-b3da38bc4c66', N'OLD BUS DRIVERS never die, they just take a turn for the worse.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'784983e9-e2d3-46ef-8aea-c2517eddd001', N'OLD BUTCHERS never die, they just get disjointed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e21f4e32-7bfe-47e7-84e6-32eb02d594fc', N'OLD BUTCHERS never die, they only meat their fate.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'10d24c82-b4ab-40be-995d-148f08b8e8cc', N'OLD CARD PLAYERS never die, they just fold.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'34a63218-1e53-484a-8b31-40b89423cb85', N'OLD CARD PLAYERS never die, they just shuffle off.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5bbe72f5-71ef-42a2-bd2b-0d138d359eaf', N'OLD CARDIOLOGISTS never die, they are just repulsed..')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd229cc2c-a514-4f63-b844-c653153c4391', N'OLD CARDIOLOGISTS never die, they just lose heart.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ec6bf7ac-375a-4069-9f4e-f3c3405252b6', N'Old carpenters never die, they just lumber around.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'09c31694-1618-425d-aa21-177ad62a9f4d', N'OLD CARTOONISTS never die, they just draw their last breath.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0bc9d260-35c2-4502-a139-990769de351b', N'OLD CASHIERS never die they just check out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8e0f3f71-c16d-4d45-99b1-f6c073dc11ff', N'OLD CASHIERS never die, they just change.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0318ee33-b2e6-4f4b-a572-373dcbb8c162', N'OLD CHAUFFEURS never die they just lose their drive.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'83439386-a54c-4449-995e-9fca03f4fff3', N'OLD CHEESE MAKERS never die, they just lose their whey')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cf5be9ee-0350-4e34-8bfc-80eb7b63d0da', N'OLD CHEMISTS never die, they just fail to react.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1283bdb0-579a-4c9e-b99a-dad31e1c5742', N'OLD CHEMISTS never die, they just lose their refluxes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9c9fe7be-f9cc-4aec-9c23-ff9c8eb877d7', N'OLD CHEMISTS never die, they just stop reacting.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7dd99cd3-0d8f-4079-9eed-9f72666ff528', N'OLD CHICKEN FARMERS never die, they just end up with a dozen aches.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4a48d17b-2fd0-4cbd-94a8-f801edb8cae5', N'Old chicken farmers never die, they just have a dozen aches.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1cf48248-2bde-4279-98f2-b951c09bd344', N'OLD CHINESE COOKS never die, they just wok away')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'31fe9b8b-55eb-4824-868b-02ba4b235556', N'Old colanders never die, they just can'' t take the strain anymore.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'230a2a65-2ff8-4809-850e-805a7fa3102e', N'OLD CONTORTIONISTS never die, they just meet their end.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'28306d64-0baf-4b68-9f0b-f3e8793a1fb4', N'Old cotton- pickers never die. They just bale out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bcf01506-f015-43c0-b021-ceede7d40660', N'OLD COUPON CLIPPERS never die, they just expire.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'56444c3a-518c-4ff1-b5e5-7c8b262e8a69', N'OLD COURIERS never die, they just keep on expressing it!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd5c3bb0d-d79e-45ea-86c8-d5a31c3be624', N'OLD COWBOYS never die, they just get the boot.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7815f4af-1dc0-4f22-8cb0-182a61bbbde6', N'OLD CREDIT CARD USERS never die, they just expire.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8f5c9a71-79ec-4578-8e4c-f463dbbf30ee', N'OLD CRICKETERS never die, they just get bowled over.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b2c81225-eda7-48f1-9170-56a9bcb0de94', N'OLD DAIRY FARMERS never die, they just go to the udder place.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'988bf159-ea2e-4ee8-a001-05e9317b0f3c', N'OLD DEANS never die they just lose their faculties.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'69ef7f14-7235-4aa4-8dba-5178ff00b364', N'OLD DENTISTS never die, they just lose their pull.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'86834e9d-2212-4589-8fb7-dbdc782cf528', N'OLD DIETICIANS never die, they just waist away')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2ff0565d-ac50-405d-beb8-35a73244f0ac', N'OLD DIVERS never die, they just flop.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd9f9892d-0028-4787-a20b-8758e29ac37a', N'OLD DIVERS never die, they just get board.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f99c00e7-a53e-4862-a885-45f66bba8775', N'OLD DOCTORS never die they just lose their patience.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'14dc10b0-4520-417f-b3aa-9c20fcd9e4f7', N'OLD DOOR FRAMERS never die, they just become unhinged.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'be490298-deef-4a5a-81ca-de65013e5069', N'OLD ELECTRICIANS never die they just lose contact.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'58ea7a0e-bdb3-4fcd-bf4e-c1a2086db555', N'OLD ELECTRICIANS never die, they just can'' t make connections')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4c8e9bb4-d7f8-48ac-afa8-1ea5f590b62f', N'OLD ELECTRICIANS never die, they just do it until it Hz.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'00619bce-09a0-404c-81fc-d2e12379fb7c', N'Old electricians never die, they just get discharged.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a8b30f9f-63d9-4c19-90f6-b03f18b9a49c', N'Old electricians never die, they just keep plugging away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e60f692b-1715-421a-8291-cbf46e16332d', N'OLD ELECTRICIANS never die, they just lose their potential.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e52c3bf2-e11a-47f2-8a3d-566ffa854270', N'OLD ELECTRICIANS never die, they just lose their resistance.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'17187b41-564c-4c1f-930d-835d17b31961', N'OLD ELECTRICIANS never die, they just lose their spark.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3835e495-220b-4b7e-b95b-f79fa11083ce', N'OLD ELVIS IMPERSONATORS never die, they just get out of sequins.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'34cd242a-e60a-46d5-b379-5cd84d0fcc05', N'OLD ENUMERATORS never die, they just lose their census')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'14ca2c42-b7ca-41f8-b511-05aa4fc50ddd', N'OLD ESKIMOS never die, they just go cold.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'712c5133-9757-445a-ae2a-289edef9cc07', N'OLD EXORCISTS never die, they just get repossessed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ef3da20e-8992-4004-a0fc-0affac81a963', N'OLD FARMERS never die, they just spade away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1443ee02-a7ed-4344-9609-9440240728a5', N'OLD FARMERS never die, they just turn into vegetables.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4064b2f1-0675-4ef8-aa27-82eb6524467a', N'OLD FIREFIGHTERS never die they just go to blazes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b5496b0c-1894-43d2-9a05-bb4396a50eab', N'OLD FISHERMEN never die, they just get reel tired.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dbd10689-b90f-47d8-83a5-86ce845c4c03', N'OLD FLORISTS never die, they just make alternative arrangements.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b6b30924-565d-4c99-910c-050b57af92d2', N'OLD FORESTERS never die, they just pine away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd1d664ea-7cce-48e7-894e-8d86bed7b573', N'OLD FORGERS never die, they just leave no trace.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bc108e8b-b796-4799-bb08-4ef66fcc0f57', N'OLD FROGS never die, but they do croak.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'eb212b55-2373-44d4-a142-59731cae0b5e', N'OLD GAMBLERS never die, they just get discarded.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'646077a9-30a8-49f0-915d-6ed0e1b1075e', N'OLD GANGSTERS never die, they just go to the underworld..')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fb445c5e-2dcb-4815-bbf3-5b2ff8ea75d9', N'OLD GARAGEMEN never die, they just retire')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4bedab45-56b9-42c9-b8ac-a13269637d0b', N'OLD GARDENERS never die they are just deflowered.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'587cb52c-e851-461e-b094-189580a123fb', N'Old gardeners never die they just vegetate.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1b8e365a-9b47-4a76-8ccb-3e1383b882d6', N'OLD GARDENERS never die, they just get uprooted.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7bf86a57-2421-4c54-838b-9c333c384a21', N'OLD GARDENERS never die, they just spade away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9b61c024-906f-4a40-a3f6-e49629160f45', N'Old genealogists never die, they just lose their census.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bfe29ff2-ac46-470f-866b-49aee8094d28', N'OLD GEOGRAPHERS never die, they just become legends.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7f15b2b8-555a-44bb-9015-0848ea148bb0', N'OLD GEOLOGISTS never die, they just have their faults')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e35624fd-28b2-4306-a1f9-ad3832fdbfee', N'OLD GEOMETRY TEACHERS never die, they just go off on a tangent.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9e7ab7f8-1d1b-43bd-84bc-6cd8cb091899', N'OLD GOLFERS never die they just putter away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0e938234-36a2-482a-b86b-a8262133486e', N'OLD GOLFERS never die, they just lose their drive.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b03d0610-d9fd-4807-9d4f-9d388f6fa66c', N'OLD GOSSIPS never die they just lose their confidants')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'060fccc9-b17c-4af9-b727-698f9becbdd0', N'OLD GRAVEDIGGERS never die, they just get buried in their work')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'48aa17be-5b09-48ee-adb6-ea3796e6aafa', N'OLD GRAVEDIGGERS; never die, they just spade away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e05f3c67-0d07-4620-9bb0-fcd85abf7532', N'OLD GROCERS never die, they just get shelved.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'001efac7-5869-48d5-ad78-7532c3964fdf', N'OLD GUITARISTS never die, they just become unstrung.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'419b8a2a-ba09-4180-ba94-7e1e37d1170a', N'OLD GUITARISTS never die, they just fret their lives away')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8a685fb0-b58f-468c-8656-3c5f94a22dc7', N'OLD GUNS never die they just get loaded.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ae990a20-8c64-4b80-b1c2-c87c67a41117', N'Old habits die hard.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'63cb3784-beea-4a22-8caa-4c9ab5a04317', N'OLD HACKERS never die, they just go to bits')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b9cefd13-5690-4dbf-b94e-d71aba499c13', N'OLD HAIRDRESSERS never die, they just braid away..')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f34645d3-9408-4014-ac89-46634b26392c', N'OLD HAIRDRESSERS never dye... or cut.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6e9d0cf9-3191-4be5-8228-a01f7c437e4c', N'OLD HELICOPTER PILOTS never die, they just lose their choppers.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cbd9380a-8ab4-4763-b482-52938cfd519a', N'OLD HELSINKI TOURISTS never die, they just vanish into Finn air.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bc733b91-4f14-4a84-8f9b-62cc6230174d', N'OLD HIKERS never die they just get the boot.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e55b6c6e-ca02-4d53-bf4a-d267526e4ef3', N'OLD HIKERS never die, they just trail away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'341fad1f-31f4-4c78-82da-5f8804854fcb', N'OLD HIPPIES never die, they just take a trip.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dfd2fa50-c092-49a0-9f7f-07a8d8ae346b', N'OLD HOCKEY PLAYERS never die, they just achieve their final goal.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7f1f38ba-0efc-47f4-9d0e-5715f2ab64a7', N'OLD HOOKERS never die, they just get laid off.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6a5fae21-ab6d-4bce-a348-e4ceefdccdc3', N'OLD HORSE STABLES do die but they can always be barn again')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6db41ed1-1e54-43ef-b0df-3329461ce37b', N'OLD HOUSEWIVES never die, they just wash away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9266ecd7-1aec-4537-92e1-2e0db40353ca', N'OLD HUMAN CANNONBALLS never die they just get fired.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'94c6f1e6-594a-4837-93b7-07b02ea899b0', N'OLD HYPOCHONDRIACS never die they just lose their grippe.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1977a3ce-c0a0-487a-9a5a-e6b7bef93537', N'OLD INTERPRETERS(for the deaf) never die, they just sign off.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'39e2a1c2-0d0c-45e3-82ab-e63a79a2811b', N'OLD INVESTORS never die they just roll over.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ad391d7c-19fc-4bff-91c9-53143a0c9104', N'Old is Gold, but never sold.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c9ae47dd-b352-43eb-8f91-d784ef32b14b', N'OLD JANITORS never die they just get swept up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2e55497b-3ff5-4c6f-870f-7fbc02379fd0', N'OLD JUDGES never die, they just cease to try')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bb5b749d-78d9-4a6d-9107-f3d02fc6be04', N'OLD JUDGES never die, they just slur their sentences')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'46364808-6109-47ff-a94f-dbdb50390eb9', N'OLD KENTUCKY FRIED CHICKEN FRANCHISERS never die, they just chicken out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'923e6a32-8ba3-4cc4-9564-ecc22453f4db', N'OLD KEY PUNCH OPERATORS never die they just punch out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6e134c59-9c11-43fe-819b-519561b82e05', N'OLD KINGS never die they just get throne away')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'27442bc0-0d78-452b-9df9-3b21be687c7a', N'OLD LANDSCAPERS never die, they just get weeded out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b63558d5-b6a2-41a0-aff4-35f9832ea9e1', N'OLD LAUNDRY WORKERS never die, they just are decreased.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c4e4c5df-a2ac-416f-a97a-36b260ab0f0f', N'OLD LAWN CARE WORKERS never die, they just recede.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'048def49-c551-4bb0-9f53-0830b2069477', N'OLD LAWYERS never die they just lose their judgment.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2cbba259-21ed-45fa-ab76-198dd1f04296', N'OLD LIBRARIANS never die, they just check out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f1ceadf6-730b-40ca-9af0-6ff40d7f22fb', N'OLD LIBRARIANS never die, they just lose their circulation.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'49172f30-4d26-45c3-a140-7966fc90f123', N'OLD LOCOMOTIVE ENGINEERS, never die, they just get derailed')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6b04dc8c-fe9d-4e88-be1c-0f23858a22f7', N'OLD LOGICIANS never die, they just vacate the premises.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1e32808c-6bb4-466d-9cbc-1ce5875f8665', N'Old lumberjacks never die, they just pine away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f361d67b-b8c6-4e97-aa6b-6da0f7d4227f', N'OLD LUMBERJACKS never die, they just split.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'23268421-0a25-4f58-a121-ed902005c7dd', N'OLD MAGICIANS never die they just disappear.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f805b493-d8f9-4352-a75e-74996da5b4b9', N'OLD MATH PROFESSORS never die, they just use strange expressions.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0f1c1284-1256-429e-87cc-3d156bb9f7df', N'Old math profs never die-- they just use strange expressions.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f6935bdd-ee86-4172-96b0-52fc81b8e68b', N'Old math profs never die, they just can'' t differentiate.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'06112e35-c116-492a-81bc-896e84f40e23', N'Old math teachers never die, they just become irrational.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c9708caa-e38d-4afe-80ac-1f0e064dbac1', N'OLD MATHEMATICIANS never die, they just go off on a tangent')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f4326599-963a-4646-801d-6f6783089571', N'OLD MATHEMATICIANS never die, they just lose some functions.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'17a3e726-186c-4596-91d7-3d574db8564c', N'OLD MECHANICS never die they just retire')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1293040f-3fe5-4f85-a4e9-fd4ffc397243', N'OLD MEDIUMS never die, they just lose their spirits.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c24108e7-3c57-4e60-bf0a-0f21d985cec2', N'OLD METEOROLOGISTS never die, they just get under the weather.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cc1e10b9-0ead-4f60-b430-fbd7c18be026', N'OLD MILKMAIDS never die they just lose their whey.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'078eef8e-964e-43d1-bce9-1710038f01bc', N'OLD MINERS never die, they just lose their veins.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8a79b086-17ac-4712-b681-b00bea5720ae', N'OLD MOONSHINERS never die, they just keep still.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bac00b43-d56e-47c0-8a7f-2bc8a9c331fc', N'OLD MUFFLERS never die they just get exhausted.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e2fbf8ff-e415-4e84-8cc7-0ff3fe396c5f', N'OLD MUSICIANS never die they just get played out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'527b6da2-7c3a-443a-9fe4-aea7d78a9e8a', N'OLD NEWSPAPER PUBLISHERS never die, they just lose their circulation.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c505d708-6c38-4e66-9e78-85b4ef5073da', N'OLD NITPICKERS never die, they just feel lousy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6bd2e07c-047e-41d4-9964-43eb5c73567f', N'OLD NUMBER THEORISTS never die, they just get past their prime.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'51803965-9112-4e55-ac4f-e6e34dbe7fb3', N'OLD ORGANISTS never die, they just come to a stop.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'40c76d6e-70e7-47f4-b046-d8bcc7d3101b', N'OLD PACIFISTS never die they just go to peaces.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'30af4cf6-69f2-4b9d-98fe-866d7f85079a', N'OLD PAINTERS never die they just get plastered.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'96354888-bdfb-465d-9f41-5d8d84fc7590', N'OLD PHILOSOPHERS never die, they just retire to their own premises.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7843ba47-33f8-4814-96f6-b960c7d6897f', N'OLD PHOTOGRAPHERS never die they just stop developing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd502f1fb-3d4f-4c59-8ec5-0715c07f09d5', N'OLD PHOTOGRAPHERS never die, they just lose their focus.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1d5f8e10-b799-453c-afe2-1110e3d60384', N'Old photographers never die, they'' re just out of the picture for a while.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f5e8da8d-d121-43b8-83a7-80405ed8aea6', N'OLD PICKPOCKETS never die, they just steal away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3ae73082-e66c-45e1-866e-0c95f8f7b61c', N'OLD PILOTS never die they just go to a higher plane.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7c8c2abb-3b73-454b-abd2-16c9820ce8bf', N'OLD PILOTS never die they just take off.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'55713582-4736-4806-b266-a499ff3fb364', N'OLD PILOTS never die, they just buzz off.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a66cc222-d79e-458a-b37e-d899399d71b3', N'OLD PILOTS never die, they just get more turbulent.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b351b909-01d1-4a26-8421-891ef97cb655', N'OLD PINEAPPLE GROWERS never die, they just get on the dole.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0db1f367-2487-46ef-97b8-c1cdb3e6dc4b', N'OLD PLAGIARISTS never die, they just steal away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd02ef080-be59-46cb-ade0-ae4919c04794', N'OLD PLANETS never die, they just lose their attraction.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1f45b22f-f1b4-459a-898b-765bf895b699', N'OLD PLUMBERS never die, they just pipe down.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'442dd581-ca86-47c6-abe3-6ec6f17d07b8', N'OLD POKER PLAYERS never die, they are just discarded.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0814b9cc-3073-48d4-a17c-29c333d977b3', N'OLD POLICEMEN never die they just cop out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ff1e125b-e54f-4fb2-b3c7-62d9ed5ece5d', N'OLD POLITICIANS never die, they just harangue in there.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a6423e76-8d29-4af3-a902-7dfdfed77bea', N'OLD POPULATION EXPERTS never die, they just lose their census.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'87740154-046c-4974-a575-b43ab78cfcab', N'OLD PRAGUE RESIDENTS never die, they just Czech out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3af83082-f5b7-4b06-bc34-4af198aa0c6c', N'Old presidents never die they just keep going through their cabinets.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1d81fd6e-874c-47e8-81e3-8f344aecc7cf', N'OLD PRESIDENTS never die, they just go through their cabinets')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'781acb9e-1c67-4eee-b12b-a6e5bec3c3b1', N'OLD PRINCIPALS never die they just lose their faculties.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1a569e85-9092-4937-a907-648ce158b7b7', N'OLD PRINTERS never die they'' re just not the type')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'12ff8cb2-418d-4264-895e-86f5540c5cc0', N'OLD PROCTOLOGISTS never die, they just butt out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5abe9f84-4c4c-4ec7-85dc-eac17ef2e5e4', N'OLD PROCTOLOGISTS never die, they just face the end.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2efc24c8-bb7b-4ace-9f17-cbbd30db77bb', N'OLD PROFESSORS never die, they just lose their class.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'261fb8b7-dc16-4703-ae5a-b8a9f2f1f6a1', N'OLD PROGRAMMERS never die they just go to bits.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b1a092ae-18c2-4a72-8ee6-b976e396bc37', N'OLD PROGRAMMERS never die, they just byte it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'587ee6f9-763b-4c0b-b8e6-85bf573f7053', N'Old programmers never die, they just can'' t C as well.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'02f0f3c3-eb46-4ec4-a031-f8ae77740051', N'OLD PROGRAMMERS never die, they just get bugged with life.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1ac559b6-83b1-46ed-bfd4-b4d571bba3b2', N'OLD PROGRAMMERS never die, they just move to new addresses.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b8dde0ef-7b7f-4fc5-b29c-3c15a6610582', N'OLD PROSTITUTES never die, they just fake away')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'17be9f30-c5c4-4173-a567-d3f7eb5aa01f', N'OLD PSYCHIATRISTS never die, they just shrink away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e395ae42-ee9d-4691-b66c-d7d3905bed64', N'OLD PYROMANIACS never die, they just lose their spark')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2a26eeec-3e30-44f8-a4bb-e697dfdb9d41', N'Old quarterbacks never die, they just pass away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c823bbd5-b9d6-445a-89cb-6c2642482f19', N'OLD QUILTERS never die, they just go under cover.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'08da4205-1668-4372-9886-adddd07a7ed0', N'OLD RABBIS never die, they just get grey around the temples.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fb8646ef-4bf1-4ae4-8ad8-4ad8c0e7f098', N'OLD RAILROADERS never die, they just derail.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4fdc8479-fb4d-473e-826a-ff80dd5da9f6', N'OLD RANCHERS never die, they just breed their last.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'32984281-dd1c-498b-89aa-18ab8b93eaba', N'OLD RIVER RATS never die, they just start to creek')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'807f0c8b-e533-49b8-8dd8-4920b2f564e7', N'Old sailors never die, they just get a little dinghy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b8a8e7e6-a952-4a48-ac1f-f9d3c53ee410', N'OLD SAILORS never die, they just lose their porpoise.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'766f04bf-9a05-4028-9c2c-ed67840e33cb', N'OLD SALESMEN never die, they just go out of commission.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5d454d06-a45e-4a05-8a83-e2d7d6fca69f', N'OLD SANITATION MEN never die, they just waste away')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8660321a-836a-403a-b405-b7b458c8782e', N'OLD SAUSAGE MAKERS never die, they just take a turn for the wurst.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3d5ccc41-158f-450f-bf82-db9935f7504b', N'Old school principals never die, they just lose their faculties.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a37d2239-7d6e-46bd-8622-b048ede7c595', N'OLD SCHOOL SUPERINTENDENTS   never die, they just lose their principals.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bd7b0386-49fd-4711-9511-ddcde736525c', N'OLD SCOTSMEN never die, but they can be kilt.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'861268f9-8ff9-400e-a6ce-53f65ec2c7e8', N'OLD SCULPTORS never die they just lose their marbles.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'71a9ef27-686b-457d-b692-d86ece365fb1', N'OLD SEAMSTRESSES never die, they just come to the point.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'15928eeb-97df-4674-8522-b255a16a6855', N'OLD SEERS never die they just lose their vision.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1249cfe9-7a21-4a43-a52b-29cb50a77277', N'OLD SEWAGE WORKERS never die they just waste away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8c7b11aa-815a-40a9-bfd2-07140b4528c0', N'OLD SHEET ROCKERS(dry wallers) never die, they just hang around.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a7ed2ecc-43e9-4c2a-af82-c94eb8aa6318', N'OLD SHOE SHINE BOYS never die, they are just rebuffed..')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'45041e6d-ebed-4979-abef-7a8556689d04', N'OLD SHOEMAKERS never die, they are just given the boot.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c09c4706-e5c7-4a7a-a163-c779d0bf6d4b', N'OLD SHOEMAKERS never die, they just lose their sole.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4565787c-1270-4564-9ff0-a026d1107396', N'OLD SKIERS never die, but they go downhill fast.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3c6acb87-f608-425e-a6fd-08f28b4fdd03', N'OLD SLAVS never die, they just czech out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd0fc5304-ed53-4000-9146-7037cd296490', N'OLD SOCCER PLAYERS never die, they just achieve their final goal.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a4b8ea69-4db1-4444-af44-9b11743f8300', N'OLD SOCCER PLAYERS never die, they just go on dribbling.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e900de3b-2700-4eb1-b5eb-d656112460bd', N'OLD SOCCER PLAYERS never die, they just lose their kick.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c3b38078-b318-4626-98ad-3a4e594ad388', N'OLD STATISTICIANS never die, they just average out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'18084b3c-9e3b-4791-b11c-4d92804a0218', N'OLD STATISTICIANS never die, they just get broken down by age, sex and marital status.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2a3993ba-672f-4771-b52e-1e5e203d2629', N'OLD STATISTICIANS never die, they just get mean.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4697c467-1dea-47eb-ae68-92a2336cbf54', N'OLD STATUES never die they just get busted.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3b0837b6-5294-45fe-baad-e8cba68229ed', N'OLD STOREKEEPERS never die, they just sale away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7a3a9860-f6fd-4626-bd60-e6fa414a8a01', N'OLD SWIMMERS never die, they just have a stroke.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3895ff0a-f0ca-4f46-ae9f-3cdf0e1448d1', N'OLD TAILORS never die, they just get ironic.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3721eb40-43a1-4943-9196-18b180ae6177', N'OLD TANNERS never die they just go into hiding.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e9e52af9-7e68-466d-87f0-81cdf4df401c', N'OLD TEACHERS never die they just lose their class.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8ac93250-5fd3-405e-b147-f9df4be89843', N'OLD TEACHERS never die, they just grade away')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'14e77baa-27f9-4f2e-bb90-a6fd3552c673', N'OLD TELEPHONE OPERATORS never die, they just become disconnected.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'12a28bd2-f57c-4e5d-97ad-416ddf68a1d4', N'OLD TRAIN ENGINEERS never die, they just get derailed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b352eacc-72fb-43e4-a099-54aa29f35d8e', N'OLD TREE SURGEONS never die, they are just uprooted.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e974a3ec-306d-45f4-abe1-280cda1e6aed', N'OLD TREE SURGEONS never die, they just pine away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a2388ad4-0924-4606-a650-f37e8266e870', N'OLD TREE SURGEONS never die, they just take a final bough.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'42c0a56f-84b8-416e-8905-2fde37eaa059', N'OLD TRIGONOMETRY TEACHERS never die, they just lose their identities.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1fff7949-2f93-4e68-b624-5dbdd0f76521', N'OLD TROMBONISTS never die, they just slide away...')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'38730dd7-4a61-4936-8520-84d6769cb83a', N'OLD TYPISTS never die, they just lose their justification.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fac90d8d-33f8-41a6-859e-037bf20d6f75', N'OLD TYPISTS never die, they just lose their touch.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e35e4676-db67-4c95-a9c0-331cce924f3e', N'OLD UNIVERSITY PRESIDENTS never die, they just lose their faculties')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e99cf38c-c68f-4870-bc86-8df4105a6db4', N'OLD UPHOLSTERERS never die, they just recover..')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ac83a0e7-fda8-40a9-b6e9-a40b50fb08bb', N'OLD VACUUM CLEANER SALESMEN never die, they just get sucked in!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'12619990-56ed-46d0-a7ed-7133cd3cbd0e', N'OLD VIOLINISTS never die, they just become unstrung.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b6b2b0b0-3f74-47c9-8403-a9c588c1c758', N'OLD WASHING MACHINE OPERATORS never die, they just keep agitating.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6be77b24-2462-4f22-af42-fc52adce18f4', N'OLD WATCHMAKERS never die, they just unwind.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0dd3a812-6abb-4185-b50f-7513d2c47235', N'OLD WATCHMAKERS never die, they just wind down.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'65734aba-803e-46fb-a7b0-b01617133b0c', N'OLD WEATHERMEN never die, they reign forever.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ac0858e3-4913-414a-9649-ba561544390d', N'OLD WHEELS never die they just get retired.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1c10679d-e514-4d47-8d90-2da29b6ebd02', N'Old white blood cells lymph around the body.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1da00cea-6f6e-49b9-89ce-db5593da4cd5', N'OLD WOOL COATS never die, they just become mothballed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b68a26ff-4b67-4813-bc10-89c2fc50b098', N'OLD WRESTLERS never die they just lose their grip.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2f034f17-04ed-4f6b-9f66-5161228dadc4', N'OLD WRITERS never die, they just get erased.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5bd3f732-f1c8-4e91-80ea-71c41c01ac12', N'OLD YACHTSMEN never die, they just keel over.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'04d418ee-7394-4373-8951-3feb39754e8e', N'On being served an extravagant dessert:'''' So rich, it has its own tax shelters.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'10bbc586-23d5-4acc-947f-9c4a250d2c3f', N'On cooking shows, there is little margarine of error.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'192133ed-a00e-4383-8dc4-b4a587ea8c39', N'On Independence day, may the fourth be with you.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2b09bbfb-7d58-4811-9c77-bba896f2346e', N'On my tour of the U. K., Charles invited me to cook at Buckingham Palace, and naturally, I took photos so I could show everyone the prince.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7b533307-6612-4a0a-b149-62beaba21d6f', N'On organic farms they till it like it is.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd69c7f32-7e77-4aae-9e4d-0c95c2ce1e54', N'On the old trains the engineer had a lot of esteem.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cb89ed78-e4e1-424d-bf3f-8cc7c210a660', N'On the way to the church our car broke down. I desperately tried to find some succor to help us resume our journey.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'698cd24a-bbd9-45fd-9238-0396a732feb5', N'On TV it'' s a maze of channels, luckily he had a guide.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'db78bbc8-526b-43af-a94a-2f4f79d8ea28', N'Once a drunkard always a drunkard.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'03d3a13f-23ad-496e-814b-756c2c1e9bfb', N'Once a thief always a thief.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'04fc165f-ccbe-4eb6-aa8a-8f1b4c0728e6', N'Once again, Odo wins the Twister championship.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9d0d9bc6-e576-4cf9-b022-e01a7ac8f68e', N'Once ice cream was invented the problem was licked.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3eafd044-23de-4e72-b3ec-60ff2e83e2d5', N'Once the pin is pulled, Mr. Grenade is no longer a friend...')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dc32d62f-afa1-4a09-b635-b7934529ace6', N'''''Once upon a time there was a beautiful princess,'''' Tom began grimly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fe720ed8-5e1a-43ac-b52a-e7c1c0ed7743', N'One day my friend asked me, how do you take such good care of your saxophone. I responded with tenor, love and care.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0ad0bda2-3100-4f60-930b-71c1c61501b8', N'One ear of corn said to the other'' You'' re getting husky''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'08365634-d1af-4821-b1f1-7eed33b1adbf', N'One evening King Arthur'' s men discovered Sir Lancelot'' s moonshine whiskey operation and shattered the still of the knight.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'695a18a9-63de-4ddb-a585-caba5bfd398f', N'One good turn deserves another.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cd332e0b-9dfd-4620-9f3c-431611b3ee81', N'One grasshopper told another about eating corn. It went in one ear and out the other.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0afb204d-ecaf-4082-a29f-dc89978c1842', N'One gruelingly intense month into the year- long diet regimen, the overwhelmed patient concluded she could not stand the weight.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6db7d3ec-c5ff-46fd-9f37-923d572fdf5f', N'One item contributed was a picture of a pretty, kimono- clad girl; it bore the inscription:'''' Maid in Japan''''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b156d4f9-e02b-4ed0-9312-20b2b4cce1a8', N'One leftover said to another'' foiled again.''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'31c2c09a-a1c1-4306-8a19-c21e0c9dcc3c', N'One might as well be hanged for a sheep as a lamb.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ebfd8114-4b15-4206-8156-efa714b307fb', N'One night a banking tycoon fell overboard from his yacht. He was saved because he could float a loan.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd4e0bc06-9bb6-4708-baf4-f7dc9cf5207f', N'One of the joys of being a lightweight is that commuting by wind is a breeze!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd39bb749-bb34-444a-a6a5-c8394eaa4efa', N'One of the tires just blew out, Tom said sparingly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7ae2e10b-a73a-431a-bc7b-d94abe1a7a4d', N'One of these new shoes isn'' t right.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'49cc8d9f-a05e-4a10-bc84-3d39464e7656', N'One palm tree said to another'' let'' s have a date.''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c433e40b-2984-46ff-8764-9a37e807a763', N'One rotten apple will spoil the whole barrel.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'92896cf1-c300-4d7e-b087-b3c9b8c4a669', N'One scabbed sheep mars the whole flock.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd8ed52e7-8bab-4f0a-a067-a4fe9d0f0fd8', N'One secret of success is to know how to deny yourself and other people.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'26a3941f-fd1a-4f41-8b8f-eaddcd4e2834', N'One should be cherry of virgins.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ff945be0-9212-4ca6-9fba-034e3ca1d30e', N'One Sunday afternoon the Three Musketeers played a game of touché football.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd55d26fe-3d4f-48a4-857b-2a91a24b41ba', N'One swallow does not make a summer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'081554e0-a5ba-4997-a14c-af8b03557fb7', N'Only the good die young.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a7dae8af-6034-40db-8858-4a8e2d3e94e3', N'Opening a new funeral parlor can be quite an undertaking.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a5b91cea-b9e6-46b1-a003-0633c27514ff', N'Opportunities take'''' now'''' for an answer')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3606bc6b-efa6-431c-bc5b-173ced0504aa', N'Optimist: A Yugo owner with a trailer hitch!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'15486937-51a4-4000-b060-ef5c074550a5', N'OS/ 2 VirusScan-" Windows found: Remove it?[ Y/ y]"')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'09b248c5-6e91-4353-a69e-645c04d8dc30', N'Our bikinis are exciting. They are simply the tops.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'55b96bd8-0d20-4ba3-99df-cf7ff88ff0ba', N'Our Boy Scouts'' knot- tying class went off without a hitch.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8f2875af-e2f5-4a5b-afec-b1941c9de9a3', N'Our country'' s olympic swimming program has quite a talent pool.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'28cfaa56-ecb2-4d2f-8fab-e9e76751348a', N'Our friends are our mirrors and show us ourselves.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8093d7dc-9bde-4935-b1a3-6e3449b31c55', N'Our garden hose was damaged yesterday, and I couldn'' t get to the leek without getting wet.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bdba01c2-e82f-4ab2-b032-3865ae15801a', N'Our greatest glory is not in never falling but in rising every time we fall.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'27d774b2-13af-4e13-8ffb-7728948c4e06', N'Our theft of raw gold from the mine site was a fiasco because, as we jumped into the getaway boat, we dropped the ore.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e3c67840-43e9-4b63-ad72-5bd092a821aa', N'Out of sight... Out of mind.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'00de68ae-a402-4bd8-833e-744b81164ee4', N'Out of small acorns grow mighty oaks.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5e92ed8d-41c3-442f-a8f4-0efdb70dec78', N'Overdrawn? No way! I still have checks left!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4089e6ff-80b2-4ac5-aec7-5e7fc28e372a', N'Overheard in med school-'' I learned about the colon through the process of elimination.''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd4c1f5e2-32df-4757-986a-8d18588d8ed5', N'Pablo and Jose waited for a signal from Pilar to join her in the Church Tower, but neither responded to the chiming because they didn'' t know for whom the belle was tolling.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b03c7255-6f4b-4d12-9c1e-762189d7d332', N'Packing up and relocating to a new home can be a moving experience.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e3855d4b-2b40-4cee-8a96-15e9aec983ae', N'Paddle your own canoe.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7dd85513-e3ec-46e9-9106-36d307923a15', N'paranoia: believing this tagline is about you.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'06d6f53f-a3c5-42eb-942a-d876cf38e75b', N'Partying Saturday and Sunday leaves me feeling weakened.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'017de467-a862-43a9-bf63-f20bb4f51748', N'Pasteur was boiling about not being invited.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'774eed9c-bc20-4250-a0f2-e838268dff71', N'Patience is a virtue heavy in wait')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b628d004-b72c-4d56-baf7-2f888c0a7e28', N'Patience is a virtue that carries a lot of wait.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ae117a12-e4d7-4a92-831f-6dd0914f291b', N'Patients usually feel better after receiving hand transplants.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4861b45f-de9d-4665-861a-c3a5e7f4da7c', N'Pavlov was drooling at the thought.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'80f315bd-cbbe-41c1-9e07-d5700ea3d498', N'Pencil sharpeners have a tough life- they live off tips.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2407e9d7-4b28-439c-9f0e-d071cc8d0662', N'Pencils could be made with erasers at both ends, but what would be the point?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'97a36390-0b82-433e-829f-7c20b18cbfe2', N'Penny wise, pound foolish.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'74fbd7ba-cbb2-416b-b3fe-e13a827f464b', N'People have a happy time vacationing in Ireland because they are walking on Eire.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a1ecddb7-92e4-49b5-95e0-34641c3976d2', N'People have many misconceptions about pregnancy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6abff2a4-6768-4d50-8bb7-a4debf7cacfa', N'People in medieval days were always hanging out by the gallows.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e8df4eea-5803-48bd-9922-d2d4b9ab68e1', N'People in Switzerland can'' t learn to ski without a lot of alp.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0317b989-3c1c-43e0-b945-f902544a7a92', N'People in the desert have dry humor.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8b8ae3a8-2dba-471a-a32e-f12f9552e4f1', N'People only throw stones at trees with fruit on them.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bafcf7c0-0564-45a9-b619-4047ed7fbf1e', N'People tell me I'' m indecisive. Am I? I'' m not sure.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f241cb4e-85a2-4ad0-96eb-c4791650668a', N'People who eat their apples stem and seed and all improve their core values.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'231dda8d-9c22-425e-ab07-f16348f34330', N'People who hate the marines are rotten to the corps.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dbe65978-0745-47ec-8e61-4a07254faa62', N'People who like gold paint have a gilt complex.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'03ff296e-b865-4d77-a8dc-535f85bb0b99', N'People who like yogurt are well cultured.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5a9d4d4e-50eb-4659-902b-e4be56b60bc4', N'People who live in glass houses shouldn'' t throw stones.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dd2c31c9-598a-40a3-a7bc-e19a1a4e41ae', N'People who make motor oil are very refined.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5426b392-8186-4a66-87e6-1787cc4a3591', N'People who make necklaces may get beady eyes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'898ccdbe-d5b5-4a10-98fd-7ff2ecc719ab', N'People who work at a mint make a lot of money.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b80f89e6-fc1f-4c56-bc98-2aa173df4137', N'''''Perhaps I will,'''' said Tom with all his might.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'56fecb80-3e19-46d4-b6cf-bab919401ca6', N'Peter went overboard for the lord, why can’t we.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3919e206-5b8f-4da8-bb92-2df06372bb4c', N'Pharmacists find their work to be very encapsulating.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'20099587-0ef1-4b92-a6f4-6c2df55ce603', N'Philosophy: unintelligible answers to insoluble problems')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fe177a48-f6f9-4738-883f-6b1a3c527695', N'Photographers are often very candid people.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dbd4722f-7c34-4c31-8dc6-30a36b40800f', N'Photography developers occasionally have serious emulsional problems.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'475d79c1-cba2-4a27-ac23-841c1c248c34', N'Piano players are considered to be Baldwin they lose their hair.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'da61a895-1873-4f8c-b72c-2c85cd174b02', N'Piano players know what bar they are in.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'eab5add1-ad2c-492a-8331-44c3af5030bd', N'Pick Pockets 50% Climb Walls 75% Steal Tagline 99%')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b482fd01-a50e-4e3a-8c15-591b40163c7a', N'Pick your friends, but not to pieces')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1d9e5a99-dd4c-4e7d-854f-6da63dd87c5c', N'Pills with long names can be quite a mouthful.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd117464d-54bd-4bd4-975e-80f27f6a6229', N'Pink satin was perfect for her gown, yet the debutante appeared even more charming with beaux on either side.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2bc3cc05-2a4e-439e-a028-4bda424434ac', N'Pipe fitters often have high pressure jobs.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd04222d1-41f1-44c5-8d5e-4de027d27658', N'Plagiarism is the sincerest form of flattery.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9acc5e92-fa98-4003-8821-fb624cd68ffb', N'Please mix me a martini, said Tom, dryly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'91e975f0-33e4-4d4e-b974-71df7df98e21', N'Plenty of people give the lord credit. Few give him cash.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'beaefa1d-3406-4d56-bd2e-36095b358602', N'Plough deep while sluggards sleep, and you will have corn to sell and keep.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'adf1fbbb-15e8-4011-b348-b4e89d4626f9', N'Plumbers often have to tap their natural abilities.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b3ce0670-728c-4b8f-ac9a-3158390218fb', N'Podiatrist malpractice: Callous neglect')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6248621e-da28-439b-aeb5-bb563c8d32e7', N'Poets are born, but orators are trained.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'01d2e3ef-aa87-41d6-9c66-a25d4ffd709c', N'Police can do a search if it'' s Warranted.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9f616e5a-e297-4470-a6c0-9ac5b5c20398', N'Politeness costs nothing and gains everything.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2504a63f-324d-41c1-a362-9f738a7e1798', N'Politicians get onto the merry- go- round and then put a spin on it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9131d394-afb2-43c2-b3bf-63b290ffc6dd', N'Politics makes strange bedfellows.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7a069bab-591e-47c0-936b-fb289df77f69', N'Pompous male bees are often known to drone on about themselves.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2f9f1556-e10f-4d2f-bffd-844c58e8609b', N'Poor blood circulation runs through the family.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'29aa5769-5feb-455c-82b0-cf060dd12c88', N'Poverty is the reward of idleness.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f279de8c-cc6a-428e-95a9-3f83874a3012', N'Power corrupts, especially at the electric company.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aea33326-8404-439f-af6f-d5b27215567f', N'Power tends to corrupt; absolute power corrupts absolutely.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f7406007-d8ec-41eb-9111-bf250483b04f', N'Practice makes perfect.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'52d280fb-eec8-4407-b484-e5b07e5adab2', N'Practice safe eating– always use condiments.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'64492317-758c-47fa-aa45-ee8da1f0be35', N'Practice what you preach.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6513810c-45a8-4cd6-8b29-542ac96fc872', N'Praise the day at sunset.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f3f4a1ef-17a0-464e-b311-3a77acc78d5c', N'Pray for keeps')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd5d6bb37-de7b-442c-9db5-d95bdae73698', N'Pray up in advance.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'43e59c28-707f-4b4d-adc0-8757dbdc61d0', N'Precepts teach, examples move.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'589ec28e-a0bb-41a4-bb5f-10258aaf1961', N'Press < CTRL > < ALT > < DEL > to read the next message...')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cda4d302-e5b2-4c90-ab5c-b87beaf6b583', N'Press any key to continue or any other key to quit')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b8826062-9f41-4e13-95d5-70fb8adc83ad', N'Press any key to continue. No, not THAT one!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'edce5100-c9f8-4b24-9f5c-f86d638302ab', N'Press any key to continue.. Any other key to format hard drive.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cb024492-72a5-42a8-b401-c808f11639da', N'Press any key to continue.. But my computer doesn'' t have an" any" key.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd4263989-01de-4bac-9f11-8ada64a5e756', N'Press Control, Alt, Delete for an I. Q. Test.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd99a8c83-4fa7-45a9-b12d-a2ead8183274', N'PRESS To test. < click > RELEASE to detonate.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'394dea6f-651a-4ebf-9da7-65869fb99f28', N'''''Pretend we were in the days before railways,'''' Tom coached.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f531e14c-dc98-49a0-a1ac-5300fa291553', N'Prevention is better than cure.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dd6ff7ff-1ec1-4e82-8eda-f25935850eaa', N'Pride comes before the fall.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c3eccbcd-e25f-4201-92f9-10d4557409c9', N'Priests can'' t marry without prior approval.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9f426557-236f-4bc3-b014-bb0b62cd3832', N'Prison walls are never built to scale.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4f022353-a17c-4832-9b84-b30ef0dc3083', N'Procrastination Day Has Been Postponed!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5406eba6-b730-485a-8c89-f4cd73f6e577', N'Procrastination is the thief of time.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b508b16e-4881-4849-a229-187c5095d9a1', N'Procrastinators suffers from a hardening of the oughteries.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7c96ac4f-ee77-4eef-ae27-36d080c2f56c', N'Profanity, the language of computer professionals')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'59b8d0e3-0474-4e81-9f24-fbdadc9e83f9', N'Professional rock climbers, the only people paid to get high.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2496c9ab-242a-4957-b7d4-5116f2cdbc2d', N'Professionals built the Titanic, amateurs built the ark.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fb4ce5e6-4b38-479d-8106-228f016b4ad0', N'Proffer'' d service stinks.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9a9345d9-8c9f-46e3-8c41-79cd1c4b2b02', N'Proofread carefully to see if you any words out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a35bac41-fa7f-457e-be30-b8763bd858b2', N'Proverbs run in pairs.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2b75f38a-b2bb-4912-95d4-4b56eac340a0', N'Psychiatrists like Kentucky Freud Chicken.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f6607343-3d35-4f0a-927d-bec9dca8aa92', N'Psychoceramics: The study of crackpots.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aba54899-e6c2-4516-b6c9-a0ff5f44708b', N'Punishment is lame but it comes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'217292be-96a1-49e1-9cee-6b4586b7f97b', N'Put a beggar on horseback and he'' ll ride it to death.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b4232064-d778-4c68-993c-3482283e51e4', N'Put your money where your mouth is.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'15472049-c681-4397-b0f8-b4968b031d99', N'Q: River Ravi flows in which state? A: Liquid.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd12c57a7-18d1-45d4-a99a-b043b3321f08', N'Q: What can a goose do, a duck can'' t, and a lawyer should? A: Stick his bill up his ass')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9a906555-0c8f-4748-8aa8-4f87266bf416', N'Q: What do you call six blondes placed ear to ear? A: A wind tunnel.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a4351470-62a6-4490-922f-fed8fc8ecceb', N'Quick at meat, quick at work.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7097906a-1ca9-4f28-95eb-915e5c570128', N'Qwertyus, god of keyboards, is a character from geek mythology.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b9b9a03d-0d14-4cb2-afaf-45f29fb4ab4e', N'Rabbits generally lead a hoppy life.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'43af0690-265a-43de-8af8-096694cd065c', N'Rabbits like their beer brewed with a lot of hops.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'95215403-210f-4259-b0f5-737427324559', N'Rats desert a sinking ship.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4912eae5-cf31-4f94-87ad-846e80e0dc05', N'Reading music makes me crotchety.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'811fb1b2-f100-440e-b98f-251b5eb31104', N'Real estate agents believe in doing good deeds.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd5ce577f-cf39-4fdc-9740-f51d79ba56bf', N'Reality is not only stranger than we imagine, it is stranger than we can imagine.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'586c4e5a-f855-4882-9fbe-8821f920b887', N'Reason does not come before years.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'047e6363-39e2-4ca2-b55e-79b68fd419be', N'Reassembling the skeletons of prehistoric mammals can be a mammoth undertaking.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'72e5c2a7-3ff8-4f0c-9689-7f0268f0923f', N'Reckless youth makes rueful age.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'12b9b83a-3052-4185-acd9-ee199745867c', N'Remember when safe sex was not getting caught in the act?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'833764ee-7b42-407e-b44e-3250f681423e', N'Remembering the Mongol leader'' s reputation for chicanery, Marco Polo approached the palace of the khan warily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'acda444c-d87a-4638-9751-3e629d090ee3', N'Rental agents offer quarters for dollars.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9b6a277e-243d-4c38-a0ca-a2feca3f5af6', N'Repartee: An insult wearing a suit and tie.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e999fab3-a7db-4879-9574-9df2191974f1', N'Repetition is the mother of memory.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7879da62-93c0-4fa5-be2b-74b7adf9c82f', N'Reported sightings of the abominable snowman are yeti to be confirmed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd5c00063-bc34-4d2d-a6ce-6a831832c6c3', N'Resist everything but temptation.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c6d36224-b521-4201-bba5-ffcbec94f6d4', N'Retired teachers are classless.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bc3bcf7c-e0f1-4c95-8724-e1e4c9df25c7', N'Revenge is a dish best served cold.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'abc8732c-050f-4e93-b4d4-267fcfac6cce', N'Reward for a job well done: more work.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ef886075-d380-4ec9-a81c-13fc618cc64f', N'Riker to Holodeck:" Woman, 23, hot."')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'555a5c24-9283-478b-be8b-ebbe91d4a45a', N'Roentgen was radiating.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b9ca0bb4-b0aa-4218-9079-7e5b65174dbd', N'Romance isn'' t a science- it'' s a heart.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e3b85407-42f2-4749-8ad6-a4713bbba583', N'Rome wasn'' t built in a day.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c4814d19-a89a-4c99-a0f7-41b3cc08bee5', N'''''Rowing hurts my hands,'''' said Tom callously.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'88c584ed-6ddc-407f-9a0e-9e17e274df61', N'Royal chairs are rarely throne out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a29e4d1c-45a8-4777-af8a-897dcc6498f1', N'Rule 1: Don'' t sweat the small stuff. Rule 2: Everything is small stuff')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f9ff9143-d894-4727-b737-d3f52f975216', N'Rules were meant to be broken.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6883afb6-a9e2-4ad5-a7ec-d0e221646c63', N'Running around your yard for thousands of miles would be quite a feet.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0fbfff9d-10b3-41ba-887e-d190e6684f3b', N'Runtime Error 6D at 417A: 32CF: Incompetent User.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dd9352e6-e48d-458c-bad1-155df79f54eb', N'Russia was slow to recover after WW2 because it kept Stalin around.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'91a25d87-b457-48ea-b0e6-77258fbdad5e', N'Safety goggles were invented by a peripheral visionary.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e89f8c6f-d9b9-4882-8c66-56b70546d74f', N'''''''''said Tom blankly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'35e847d5-66cd-42ba-976b-41077ab1e56f', N'Sailors like to seas opportunities.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'07548d35-ed1e-47ae-91f9-e6d05a981a63', N'Salespeople selling security equipment like to see people get alarmed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2d1503cc-25ac-4c55-ab54-6279d01e8659', N'Santa goes down the chimney because it soots him.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b73c8bb0-3a0d-405d-a65c-1d5f128bcfb1', N'Satan can’t bring you down any farther than your knees.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'522b45c6-2cc3-4676-9385-c9a04a0de7e4', N'Save the whales, spouted Tom.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e8bbb236-e456-411b-893b-9e0b18e2c142', N'Saw makers losing money have to make lots of cuts.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9bf557a7-d103-43f0-928e-5a117ced6d03', N'Scaldophobia: Fear the toilet will flush while showering.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9b009844-4f04-4405-8559-446fba6057da', N'Scarecrows are always garden their patch.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'846f273f-e8ff-48fe-a807-db5ca782677e', N'Scientists allow us to see the sun in a different light.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3902a348-f56d-4038-82c5-155d2b91ab56', N'Scientists have created a flea from scratch.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e3ff11ed-fa3c-438a-93a1-bdf17733f491', N'Scientists studying the sun have a flare for research.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2086f438-25cb-4eb5-a9e9-3ce0a454c5ad', N'Scrambling for cover amid the chaos caused by the rebel forces'' attack and the'''' coincidental'''' breakout of the zoo animals, I stumbled into the face of a hostile guerrilla!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dae224c7-439a-4d42-878b-2234bab5162e', N'Sea captains have a lot of latitude.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'de3f4a94-d6a0-421c-963d-e14118e7af61', N'Seafood operations start out on a small scale.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ade72ccd-4c0b-4383-a0f7-57483fd3183b', N'Second thoughts are the best.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ce8fc8e5-3072-4ec3-b653-7a1461340169', N'Securities are the cause of many people'' s insecurities.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd47aec57-0efa-4cf9-b8b4-b61e136bbfd5', N'Seek and ye shall find.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6a8198dc-bb06-4e43-8559-e45277cba8e9', N'Seek water in the sea.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e1b3c3bb-7dc4-49d1-a493-771ff32d05c0', N'Seen the new Clinton watch? Only $ 5. 95. $ 54. 95 with tax.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cad0028a-8966-4f98-b9fa-5ee85b4fafd3', N'Sellers of dried grapes are always raisin awareness.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4d314b8c-b638-4036-bdaa-801ec778d1e5', N'Selling gasoline too cheaply would be fuelish.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2250e41d-0682-407b-a252-9acd804054a3', N'Semaphore was flagged away as a form of communication decades ago.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b93b7f77-7db7-4588-90c0-3dde3e0d9b98', N'Send $ 20 and I will double your IQ or no money back')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7e0b4415-5d19-4aa9-ac43-dbd6b82d4975', N'Set a herring to catch a whale.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6516111d-c764-4dfe-83dc-45162a5e27ce', N'Set a thief to catch a thief.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'70776c41-b0d8-4b5a-97cc-b7e06fdc6154', N'Set your drink on a skateboard, they make good coasters.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a2df37e0-caad-4e15-8087-06b424731f74', N'Seven days without a pun makes one weak.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'630df6c5-69a5-4f14-a7b0-6448fbe36f7b', N'Shame take him that shame thinketh.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a6efbec6-4dcb-4379-bc97-6c74724adbfd', N'Sharks don'' t eat lawyers. Professional courtesy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7e07229b-76ae-4cc4-8438-b3188ece787b', N'She always paints night scenes. Other artists pale by comparison.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'96289995-72bf-403c-a75d-ff6eb50aab70', N'She became a lifeguard at the beach and kept the buoys in line.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aa6b2915-410f-42de-ac02-72f7949e2d3b', N'She became a telephone operator because it was her calling.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8361ad04-3841-4bbf-9e6b-f3abadab979e', N'She became an art dealer because she wanted more Monet.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5a611a97-34d3-415c-b38e-1e9d3fc77c70', N'She didn'' t marry the gardener. Too rough around the hedges.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'466aa6be-ea63-4ce5-a219-1f1b2e2e0359', N'She dumped him because of all their lousy dates. After all, whining and dining does get tiresome after a while.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6041c162-b8e6-422a-96ae-5ab8750ce15c', N'''''She even flies her own jet,'''' Tom leered.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6403a471-b6e6-4df5-8306-080b3c371712', N'She got fired from the hot dog stand for putting her hair in a bun.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'af0b1a56-fead-4b3d-b9a6-bd2adb4b13ad', N'She had a boyfriend with a wooden leg, but broke it off.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'51c7d717-5782-4430-88a3-2e41fc9fb943', N'She had two different jobs as a chef which gave her a full plate.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'daf475bf-bdc7-43f7-a04b-062d03db0e6d', N'She memorized just what kind of locket she wanted, by heart.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'27868aee-f0e1-40ac-967b-ff6d89ae2263', N'She must be wearing mink, Tom inferred.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2ac9d9f9-8953-4850-8389-3cf84dd8cf6c', N'She played baseball and so did he. They hit it off.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9cec00de-b09d-4650-973e-a899601aa83e', N'She'' s a composer who has scores of works to her credit.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a4e0ac45-6db7-4908-988d-d2dce5af3295', N'She said she had nothing to wear. I smiled.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6934e0d1-0bd3-40ec-aab7-fb39c9ccab3e', N'She said she wasn'' t pregnant but contractions speak louder then words.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b46cc0fa-2421-4ad0-a687-244f906c2abc', N'She started a new courier business for an express purpose.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b524b56b-09e2-45de-9d61-ff172776ebe0', N'She swallowed a peach seed and could feel it in the pit of her stomach.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e021920f-a720-4fd4-a3a3-6e4f1c94de7b', N'She thought it was a real horse, but it was a phony.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'99995644-ad3d-43df-b196-44fe2bc9bbb6', N'She told a long story about a coil of rope, and then left us all hanging.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b70ac086-936e-4183-b9a0-2d6fba22c955', N'She told me the drink was non- alcoholic, but where was the proof?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0272e50c-6aee-41f1-bfa4-21a1158d7854', N'She wanted the large estate quite badly but, she dared not mansion it to her frugal husband.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'56c50bbf-d636-4554-b70a-004c5eb2aead', N'She wanted to be a weaver but there were always too many snags.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3305c219-54c0-45ae-b9a8-508be207a9b2', N'She was always calling for her twins,'''' on the double.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'55e5a686-d9de-4240-bb0e-70f04134fc72', N'She was listening for a Russell while walking through the trees.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9a20103a-f746-48c8-b7d6-a9d5e61c84f5', N'She was only a Blacksmith'' s daughter, but she knew how to forge ahead.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'02adf2e7-7a10-4f9f-b5b2-e04375c75958', N'She was only a Bookbinder'' s daughter, but she knew her way between the sheets.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'33d718d8-0e78-430d-bd27-ecec7181ac65', N'She was only a Bootleggers daughter, but I loved her still.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2f1ee7e4-3239-4c46-b275-b5279ae01c83', N'She was only a Bottlemaker'' s daughter, but nothing could stop her.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'03993f3e-a40e-411e-8cfb-8efb04549e8d', N'She was only a Bricklayer'' s daughter, but she was certainly stacked.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f899537b-6f20-44b2-a01a-1fd692d003be', N'She was only a Butcher'' s daughter, but there wasn'' t much more she could loin.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'96608f2a-dbb4-44cd-957d-d9896a245d9b', N'She was only a Carpenter'' s daughter, but she knows every vise.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'66e94803-349e-47ef-8dc5-b82467ad4e22', N'She was only a Carpenter'' s daughter, but you should have seen her circular sores!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'38428383-6ba3-4e37-a7a0-c42f36ea9d66', N'She was only a Catcher'' s daughter, but she had many balls bounce off her chin.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9bfc0e1a-b2f1-45d6-90cc-f84ef276d812', N'She was only a Cattleman'' s daughter, but she couldn'' t keep her calves together.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'69db94c6-95a8-483d-af76-7b8795749df4', N'She was only a Coal dealer'' s daughter, but, oh, where she had bin.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'98ed1eb7-b921-4912-a4ce-465ba60b8c96', N'She was only a Colonel'' s Daughter, but she was great to the navy and rotten to the corps.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8ece3abb-a9a4-4360-8d52-03d7bba0c1d3', N'She was only a Columnist'' s daughter, but she'' s always chasing wild roomers.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'859f4b82-e59a-44f6-8e73-6cd2c47e1390', N'She was only a Computer Programmer'' s daughter, but she sure liked to byte.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'72a8002b-aa14-43c4-86bf-d0944d12fbf7', N'She was only a Conductor'' s daughter, but she told you where to get off.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd800078e-4c99-492b-8fa5-79609598902f', N'She was only a Convict'' s daughter, but she sure knew all of the bars.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'427bf77b-2dfb-4c44-b0f4-dbde441b7f5f', N'She was only a Cyclist'' s daughter, but she peddled it all over town.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a26170eb-b28f-467f-8b04-79725524832e', N'She was only a Dairyman'' s daughter, but what a calf')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5955fb3a-58ac-412d-a71c-f85ecb8b3b35', N'She was only a Dentist'' s daughter, but everybody wanted to fill her cavity.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3fe70c09-dd40-4525-b763-f738aa6fd59a', N'She was only a Doctor'' s daughter, but she really knew how to operate.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd6605e9b-cf0a-4d16-afe7-7a8aafd53a7f', N'She was only a Electrician'' s daughter, and she made house calls to remove her customers'' shorts.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3696fba9-8432-4d59-8582-21469fa3fa4c', N'She was only a Electrician'' s daughter, but she certainly had good connections.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'904e872c-5475-4765-af73-57e45f776a11', N'She was only a Electrician'' s daughter, but she went haywire.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ef8c61ba-2da6-483a-a8a2-cc57f7ee91b0', N'She was only a Elevator operator'' s daughter, and she loved to go down.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'889fed7f-0ccb-4ed3-93c1-7972068d5919', N'She was only a Farmer'' s daughter, but she knew hundreds of ways to fertilize.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'14d3679d-8547-4aa3-a158-7f0fd388c147', N'She was only a Farmer'' s daughter, but she was the best little hoer in the county.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b051042c-4f89-4ac2-9b29-d09383583f4b', N'She was only a Fireman'' s daughter, but she'' s really going to blazes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a0f0fc41-ea28-403a-811e-522eadda715e', N'She was only a Flag- waver'' s daughter, but she'' d let her standards down for anyone.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5f40931b-7013-421d-9af2-b2abccc2bac9', N'She was only a Fruit vender'' s daughter, but, oh, what a peach.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fb5caa02-d33c-4795-b194-408e7ee18b38', N'She was only a Fruit vendor'' s daughter, but, my, she had big melons.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f47a029b-8176-4621-aaf8-de0b85db18ef', N'She was only a Gardener'' s daughter, but she knows all the rakes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bb76b834-9447-4f1c-a073-12f66c4475c4', N'She was only a Glazier'' s daughter, but she was never a pain to me.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8bf04ced-0324-4f92-9778-8397c5191892', N'She was only a Glaziers daughter but took great panes to please')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'05b13a92-efff-4a8f-a79e-73a29fe73d4a', N'She was only a Globetrotter'' s daughter, but she manages to get around.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'53353dd1-5623-4bff-8eec-075ac058c39a', N'She was only a Governor'' s daughter, but what a state she was in.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0f6c8354-fb91-4928-8474-3809799b0c99', N'She was only a Grape picker'' s daughter, but she was never Chablis dressed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ecdc80bf-3dc9-4cd4-8db1-bdd45c423622', N'She was only a Grape picker'' s daughter, but she was somewhat of a winer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a03e96bc-839f-40cd-83dc-e5362e2278fc', N'She was only a Horseman'' s daughter, but she didn'' t know how to say neigh.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'569ee97b-bfd2-4623-ae6b-f716e985e550', N'She was only a Insurance broker'' s daughter, but all the guys liked her policy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd7704ab7-cbdf-40d4-b931-a766186d042c', N'She was only a Janitor'' s daughter, and she was often swept off her feet.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7472f65a-5c62-41ad-b9c1-2debaadda45f', N'She was only a Junkie'' s daughter but her crack was the best in town.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'94cefeae-692b-4e6d-a2c3-326f9f4005f0', N'She was only a Librarian'' s daughter, but she was checked out from cover to cover.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dc8bddf7-60c1-42af-bf39-68ff958263e0', N'She was only a Lighthouse keeper'' s daughter, but she never went out at night')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a83f4e76-680e-4ad2-98a2-63c1bcc0c524', N'She was only a Magistrates daughter, but she knew what to do on the bench.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6987c25d-7a4f-43c0-b339-8851be414c0d', N'She was only a Moonshiner'' s daughter, but I love her still.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c7e5c3af-5f59-4b0a-a920-c6fca4bc8972', N'She was only a Musician'' s daughter, but she knew all the bars in town.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c7f5e432-9f11-487b-b812-b871cddb4171', N'She was only a Photographer'' s daughter, but she was really developed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fa2d5e56-574b-405d-8ec8-c952481a59ae', N'She was only a Pitcher'' s daughter, but you should have seen her curves.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f53536f6-21b9-4afd-ad1c-699a79d6ad07', N'She was only a Poet'' s daughter, but I'' ve seen verse.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e1e5ad38-8ff2-4767-8baa-733517d2324f', N'She was only a Porchclimber'' s daughter, but you should see her stoop')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5efe18c3-1c58-43aa-a19b-f892ca322eef', N'She was only a Postman'' s daughter, but she sure knew her males.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c052fb0b-4e42-4085-a6f8-696b7ff734dd', N'She was only a Quarryman'' s daughter, but she took everything for granite.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ea1acd67-7ff4-48ef-8bd5-88efd18cd760', N'She was only a Rancher'' s daughter, but she couldn'' t keep her calves together.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4b07a333-af2b-4fc4-ba10-643471f1c8f2', N'She was only a Real estate agent'''' s daughter, but she gave a lot away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e8c77d47-3fd7-4573-b797-51736ef02cce', N'She was only a Sailor'' s daughter and how she loved seamen.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c89f2891-7d99-4271-8377-7230275e9b28', N'She was only a Swimmer'' s daughter, but she knew every dive in town..')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'58d412aa-0d47-44e3-a966-7a8a77693753', N'She was only a Telephone operator'' s daughter, but she sure had good connections.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ce61153d-45e0-42e7-81fa-2a7e892b4946', N'She was only a Vacuum salesman'' s daughter, but she knew how to suck!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bb3fb518-c3c0-433a-885c-46c780d943a6', N'She was only a Waitress'' s daughter but she sure could dish it out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'78b851d3-7455-4067-80ba-3d3379b19377', N'She was only a Watchman'' s daughter, but any time suited her.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b831224d-59f9-4f22-845e-19e7c6f82fdb', N'She was only a Weatherman'''' s daughter, but she sure had a warm front.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'352c2be5-96ad-4de0-ab14-5441ae923e62', N'She was only a whisky maker but he loved her still.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'21127dfa-eb6b-4f12-880f-4506315924db', N'She was only a Wrestler'' s daughter, but you oughtta see her box..')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7d79a0ab-f18b-4835-bdb4-072ba349bdb0', N'She was only an Apple- grower'' s daughter but the men said she was delicious.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'859f3790-9a3b-4bca-9cd6-49fb17e0a2d1', N'She was only an Archer'' s daughter, but to all the men she was the target.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7a5b055c-1cd0-48e1-9661-48237caa8cc8', N'She was only an Artist'' s daughter, but what a crowd she could draw.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'073bd577-4131-4aef-9ecd-19d581c8dd1b', N'She was only an Attorney'' s daughter, but what a will to break.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e4288715-2f86-47bc-96a7-b400d536cfdf', N'She was small, slender with doe like eyes.'''' Oh, my deer,'''' he whispered.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ddb6755b-b59d-4e4a-a664-ddadc1b19d58', N'She was so thrifty she could smell a bargain a mall away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'588ab697-7362-4f57-b19f-817804c57591', N'She was suspected of stealing a brooch but they couldn'' t pin it on her.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'50ca06af-65bd-4d53-9260-0b4a8e5de079', N'Sheesh! You start havin'' fun, and they send the lawyers!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0199b169-a184-450b-9f5a-8e80ed049f4d', N'Shepherds sometimes have staff meetings.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f44bb995-e80c-4826-837f-28655ff215ca', N'Shh! Be vewy qwiet! I'' m hunting wuntime ewwows!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7c16bd89-ca0b-489c-9fef-c617c1e95ba5', N'SHIN: A device for finding furniture in the dark')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1fa097e5-c557-4c1b-b768-2c23e60b0ab0', N'Shit or get off the pot.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1d49bd03-463e-435c-8f0b-6b77eca9c711', N'Shock me, say something intelligent!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'116acfc2-a31c-420f-8b1a-d70b3ccf128d', N'SHOCKING TRUTH: 50% of all people are below average....')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7a05b4a7-79d8-4b60-b4c5-9ce5a0273416', N'Shopaholics never die, they just sale away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1e4cde19-5664-4c20-868a-6633f5d6d2b7', N'Shotgun wedding: A case of wife or death.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'44b379dc-13f8-4c88-8feb-61a27d26a1eb', N'Should old people feel youthless?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c7026d06-b224-4ef4-8049-5df3a3bdd342', N'Should we tell the children when we move?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f03245f3-00cc-4ebc-b57c-004ce07f6953', N'Show me a baker who is on a roll and I'' ll show you someone sitting on a bun.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f0ce3d4d-3481-444e-9c0f-146f7ea03387', N'Sick fish go to the sturgeon.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'31f7583d-bacf-40bb-9e7c-9555ccdbdd06', N'Sign at a deer crossing: The Buck Stops Here.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'549278a9-54d0-4204-9e37-07b87ec8d96b', N'Sign at a place where you lose weight:'' Stop Look and Lessen''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1aa113e5-f5db-45c3-af23-0d8845fbe3fd', N'Sign in an electrician'' s shop:'' We will refuse you.''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3b14b141-3b86-41b4-8c53-8d8329e19604', N'Sign on a broken perfume bottle,'''' Out of odor''''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9775c834-12ea-4d8c-b816-f6f8d4e9bf35', N'Sign on a music store window:'' Come in and pick out a drum-- then beat it!''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e239aadc-ea18-405d-bebc-7d8893c9bca2', N'Sign on an electrician'' s truck: Let us remove your shorts.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bf0b8a09-7ea0-4e3e-af5e-c3e6126bba9a', N'Sign on the door of an internet hacker.'' Gone Phishing''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e65290a6-0b60-4b27-9d2c-920154168dae', N'Sign over the librarian'' s desk: No talking aloud.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'92f32a1c-99e1-41c8-99d9-cf96d20f0acb', N'Sign:'' Please turn out the lights. Thanks a watt.''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9b4c020c-0e0f-4164-acf2-12ea74685877', N'Sin and bear it')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4a0d4b68-3a51-4efb-9f27-e8a0db0c2909', N'Sin enough and you will become dead to it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'717b18df-0a12-42a0-8bdf-78aa487b3c6c', N'Since Bruce got too close to the big blade at the saw mill he is no longer feeling chipper.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'10d06ffb-864f-4aea-bd79-bff4eb0a5996', N'Since I'' ve taken the job in The Everglades I'' ve been swamped!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'755519ec-6d09-418d-8dbd-e384b5b37b33', N'Skipping school to bungee jump will get you suspended.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5c554148-f661-41d5-8375-54a5b2094281', N'Sky divers don'' t jump, they just fall away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a45350ac-10fa-4e6c-9632-bf7139d2f379', N'Slow and steady wins the race.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8fa125b4-c2ac-434c-ac16-9708f94a88d4', N'Small people are in short supply.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3ceb9ad8-9dfd-4727-92dc-950b70acc8af', N'Smaller babies may be delivered by stork but the heavier ones need a crane.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7b312733-7bf7-45de-bda7-8cb1a5234e6b', N'Smile, and the world smiles with you; cry, and you cry alone.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3eef4dc3-b34b-4353-9075-e747c5ef3bb9', N'So that'' s the way the wind blows, said Tom vainly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'03fb9c1e-5d52-4880-b6d2-5141feed85b0', N'So, how'' s the flower business going? Oh, it'' s blossoming quite nicely.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c2ed5571-514b-4b74-a0c4-7fecfc118e0a', N'Software Independent: Won'' t work with ANY software.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c15f992d-1a11-4780-94cb-ee8a04494b72', N'Solve the problems of the world: Vote anarchist.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f00a5c32-d949-4bf5-9c39-0e8bb816b3e7', N'Some bankers are generous to a vault.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ef453d01-0bc8-466d-b403-c621839e94ed', N'Some burglars are always looking for windows of opportunity.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6a3ebed5-e89c-468d-90a7-66b0d5928764', N'Some business graphs are full of legend.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd59fcf18-b713-4d20-b4a0-6412f987e105', N'Some cardiologists are heartless.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'552ce0e4-61af-4e11-a0c4-07290b0cecde', N'Some childen are often on their pest behavior.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'016c47a0-098e-4489-bcbb-b15619626819', N'Some clockmakers are normal, but others are a little cuckoo.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c4d5afab-9c2c-45a0-8710-3cae69625a70', N'Some commands given by the army are specific, others are General.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1b9858c2-43f8-4d83-ba86-3350d55d7ca8', N'Some cooks have a shellfish attitude.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a777bd96-a438-4f4a-82c1-aa155e1deea8', N'Some days you get the bear, other days the bear gets you.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'28452bae-ea35-4623-aeea-1bc7deaae842', N'Some diets cause a gut reaction.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f78b1437-819f-4c22-95e1-ed12705e599a', N'Some doting parents are son worshipers.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1123a4c9-b5d1-4e07-b17b-28a15b327023', N'Some food for thought is only baloney')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'639188cc-ede6-495d-bdb7-8c52029b79eb', N'Some foolish people gain by experience many perils of wisdom.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a9d4cae0-b8f4-485c-9872-0ec0b30de04b', N'Some horses cause their owners a lot of woe.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'976f6ec1-1b4e-4294-b5b7-90d13a59d2f1', N'Some jokes get dated, other jokes get married.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'054fbe94-321b-4d69-8337-f1f863e4b93a', N'Some mathematicians are reluctant to cosine a loan.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd49c3552-9403-49b0-85fe-d25d62e5931e', N'Some moss took a lichen to a tree.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1b7fb82d-8953-4d21-9754-1612c32b9a86', N'Some music stores are in a CD part of town.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'22556209-884e-4620-b809-85b6adba6192', N'Some orchestra conductors make their mark in the world of opera. They were in the right aria at the right time.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'88d69bcd-7d29-4bb7-a30c-2f0caaffdcd4', N'Some people don'' t have the Vegas idea of how to quit gambling.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd9ca4ca3-58aa-4f91-9b4a-f226fca486b6', N'Some people don'' t like food going to waist.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3b20db44-5407-4c0e-aacd-28982d336fe0', N'Some people find fire drills quite Alarming.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9715fe9e-acd3-4ee0-81ab-7f89df150dca', N'Some people go into martial arts just for kicks.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8b819477-9e8e-4c7e-9b8c-4d0c223ceafd', N'Some people have to get up for work at the crank of dawn.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9e5fa522-c594-4b22-b3e7-762d1ad6748d', N'Some people like raw meat on rare occasions.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'06b2d0c3-d588-4a1e-b7bd-eb11a7b826fb', N'Some people make big pottery items to urn a living.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3b148e6c-5e4d-493e-b07d-d192ef1b9553', N'Some people really enjoy blowing air out of their lungs- I'' m not a fan myself.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e283223c-97a9-4251-9df4-61ac7987dd7f', N'Some people still think that writing long stories is a novel idea.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4403f271-b755-4c63-a397-2e9006762f9c', N'Some people take beautiful pictures and cut them into pieces. That'' s a puzzle to me.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'11f91d52-e78f-4ec4-a6a7-0cec1d8e25ce', N'Some people who cut hair can be quite barbarous.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'564dcc6a-b54d-40a1-a24d-016f22005ea1', N'Some people with a lot of vision started the Blind Institute.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1337c4c1-5342-42b5-beb7-ad4299b0f73c', N'Some people, asked what they thought had caused the recent flooding in our valley, pointed to a concrete wall in the distance and said it was this damn thing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'27aec9b8-0056-4b6a-86e0-99cf97730ffb', N'Some rappers are good but others are Ludacris.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'57922de9-0f3b-443e-b4ac-8fb257c66d37', N'Some resist having the'' flu jab but it'' s quite innocuous.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5ca91311-ee02-47a0-9224-95895cc81b86', N'Some shoe sales have a good selection to boot.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'59acb680-99cb-4eea-83d7-bae8bc5c1861', N'Some thinkle peep I'' m under the affluence of inkohol...')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'44e96721-f901-454b-98bd-116a685c67b9', N'Some women stay single and others are the Marion kind.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bdbaa21d-f9cf-4929-98b3-2c2f02cb4648', N'''''Someone bumped into me while I was brushing my teeth,'''' said Tom with a gleam in his eye.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1edf5190-4c21-47ee-a1c1-230b7cb7d6ca', N'Someone led me to believe that graphite was discovered in Pennsylvania.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1bfd3e36-0c7e-417c-ae42-185e6f4b201e', N'Someone once accused me of stealing an old, rare, valuable stamp, and I philately denied it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'55db9133-fa90-490c-9aed-4582896f9996', N'Someone who attempts long distance fraud is known as a phony.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'20902774-415e-4704-a92c-c709a1a91301', N'Someone who gossips to you will gossip about you.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a1184383-4c41-4553-8e0e-50a8b8e5f328', N'Someone who robs shoe stores is an arch criminal.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6bf1166d-ec4e-467e-8c88-c45d8b04b6db', N'Someone who sells old chess pieces is a pawn broker.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'10648416-d6ca-4094-9646-44115a2a92e7', N'Sometimes a pencil sharpener is needed in order to make a good point.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6a59a8cd-bbea-445b-b3f9-9b2b50b16a7f', N'Sometimes a pregnancy is so long it seems like a maternity.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b4e63796-d52c-433d-8285-d533102d1fc4', N'Sometimes our Outlook in Life is sent but not received.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f7172917-950a-4aa0-a149-45e71b9fd0f2', N'Soon after he joined the band, the guitarist was instrumental.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b5eac360-f120-4d45-87da-620111666b8b', N'sophisticated, adj. deprived of its native simplicity.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1344256b-ac58-4cea-828b-d2c2dacb19a0', N'Southerners are quick on the drawl.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f6dbc6be-5637-4056-8ead-f2cdf69cfbed', N'Sow thin, shear thin.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'928b6ece-46e2-4f02-87ac-260b701568f3', N'Spare the rod, spoil the child.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0a6e88f4-c13c-45a9-8d9e-687b3c5cf3fd', N'Speed doesn'' t kill. Stopping very fast kills.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4f6366d4-f950-4b71-894c-de696f645c17', N'Sports are refereed by people of many stripes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a02fb7fd-5df6-48b9-bed2-f40b3b8d7aef', N'Squirt guns don'' t soak people, People soak people.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0ebb0748-f058-428d-b610-bb71b4c29699', N'Stamp out excessive postage prices.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'38512451-04ff-4b88-80be-8e96f0630081', N'Staying at the trendy, new hotel was the inn thing to do.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'de310b45-864e-42d5-87ea-07c250fdbe65', N'Stealing someone'' s coffee is called'' mugging''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e5edd35c-cf67-41a8-b5c7-21666c38fe66', N'Stereo speakers are made by'' high volume'' manufacturers.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'01538870-ea1f-4a49-bae9-771d60065d14', N'Stewardess trainee:" Where does THIS door gooooooooooooo...."')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'54a4f88d-35ca-4918-a324-e3fa054c485d', N'Stick em up! < BANG > Okay.... DON'' T stick em'' up!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'159fc669-2a03-4d8b-9922-f5c8488074b8', N'STICK\'' stik\ n. 1: A somewhat nonfunctional boomerang.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd239f532-ecda-43ef-8888-b9fb45f34d46', N'Sticks and stones may break my bones but words will never hurt me.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'031d1ff9-6534-464d-a427-da6d2e786ef0', N'Still water runs deep.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'48e008b7-21c3-44f9-9b64-d68a205fc3f3', N'Stolen eggs are poached.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fb443b4e-9816-4231-9254-d0ece0eaff4d', N'Stolen fruit is the sweetest.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'403f3496-be45-418a-95ee-6faffe955849', N'Stop talking! I'' m out of aspirin!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8bd14d27-b15d-4afa-9762-be7f28ea5140', N'''''Stop, horse! Stop!'''' cried Tom woefully.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'69824184-416e-4d5d-b923-2c2feb9d05e3', N'Strike while the iron is hot.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'05882222-33ef-4c44-b43c-0e5d021f506f', N'Strip mining prevents forest fires.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bc9ccf64-99dd-48b8-8d5e-7b14f3d705c9', N'Students who accent their textbooks with color markers add a real highlight to their day.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'49276263-c18c-4a18-b83e-e26edc8bde9f', N'Studying fungus is a way to mold young minds.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cd5db423-8db4-4776-ada5-04ea8b15bc96', N'Success comes in cans, failure comes in cant’s')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6d73efd3-f290-4296-a272-e0121fb40392', N'Success is a journey not a destination.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'08cc09d7-110a-403b-9552-a2d0f939a492', N'Success is just a matter of luck. Ask any failure.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd8a0ba25-7657-4d99-9215-4b3523a2fcb6', N'Sufficient unto the day is the evil thereof.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dde5776b-3742-4dd3-8668-cbdeb6f7ac75', N'Suicidal dyslexic jumps behind train- film at 11')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4d9f9441-480f-41e3-83af-3a0da9a5e2e8', N'Suicidal twin kills sister by mistake... news at 11!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c5b984c6-6a9f-41a0-956f-e92b11e19e84', N'Suicide at sea is definitely going overboard.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'af10737b-9b69-4328-ae0b-36166f1dc4b6', N'Superglue! Tom rejoined.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'451b8da9-5030-4d9b-9fc2-40e61081efce', N'Sure I can climb cliffs! Tom bluffed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e794adcd-a113-4ab8-887e-545579a47d4c', N'Surfing is a swell sport!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'92ee2892-7afb-4846-ab8a-c76209856bd7', N'Sushi: known to the rest of the world as'' Bait''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'915a0b98-358f-4d98-ab19-ff0995ccd220', N'''Sweeney Todd'' is a good source of sheer terror.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7a6e5b4a-f258-4a99-8fee-dd8f7bf3ec42', N'Sweet potatoes? I yam impressed!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a2a17d50-fda1-48ac-acbc-e82965236967', N'Swimmers have to be careful not to get into deep trouble.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dcf3e00b-e0ab-4832-b8ae-d5e1b2b13af8', N'Swimming instructors are always getting immersed in their work.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'57e6e362-868e-4ef4-abae-9444fc816f39', N'Swine were the most influential animal of the last decade.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'da70caf8-868a-4ee1-a9f6-924a70f4e053', N'SYSOP\'' sis äp\ n: the person laughing as you type')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7f8e9152-06d4-420d-975f-3de3600e1413', N'Tact is for weenies.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'42d56fe7-68ce-40a4-a66b-8961741b599f', N'Tagline dispenser temporarily out of order.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'330c94d6-eb94-4525-9246-d9dd14f143dd', N'Taglines: the toilet- stall walls of BBSdom.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4ce10a15-b66c-4b0c-8acf-8d261006e9e1', N'Tailors enjoy hanging out in internet fora, as they are full of threads.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'706f47a9-6ff1-4de3-9048-6dc84a26d941', N'Take a God look at yourself.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2f2e35a8-f823-4e49-8d45-e0a1f3e40f48', N'Take all things as they come and be content.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ec2e6b1d-bb49-4dff-adcb-951fbe363f39', N'Take care of number one.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'22572c82-4a7b-4e16-bdcc-7c59f953ce03', N'Take care of the pennies and the pounds will take care of themselves.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'30007b85-916b-46a3-bbea-43767b691fbe', N'Take me to the dance, Tom bawled.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c3844fb0-0407-468b-9655-3788c3ab2379', N'Take my advice, I don'' t use it anyway.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd9cc752a-2deb-4987-9743-54237be4e418', N'Take the will for the deed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'91e1785f-73a3-471d-aa49-e06dc9e5487c', N'Take things as you find them.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cb295f30-3b2a-453b-b2f3-0f118270c78c', N'Talk is cheap-- supply exceeds demand!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b0fb7d6f-6b55-4f01-a37f-1933815e4a4f', N'Talk of the devil and he'' s sure to appear.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'67843333-29aa-45dd-b6ca-61bb6573bcae', N'Taxidermists really know their stuff.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f6404ed8-8032-4410-aec3-b2010ec506f6', N'Teacher: In this box, I have a 10- foot snake. Sammy: You can'' t fool me, Teacher... snakes don'' t have feet.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0176d129-9fc8-4ac1-bdfd-b10ab598b3a6', N'Tennis players don'' t marry because Love means Nothing to them.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ab717678-2c68-4159-a1f2-cb80da6ec10f', N'That gas pump must be sick. It doesn'' t fill well.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'25317cdf-6f93-46e2-8fcf-622f8ab7b0da', N'That government is best which governs least.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3adf2c1b-203c-4375-85c4-606aa5cb2318', N'That horse looks like a good bet at 17 to 1, said Tom oddly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e8bc2523-535e-4a31-b363-b682b278d069', N'''''That horse looks like a good bet at 20 to 1,'''' said Tom oddly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'68b18c58-4740-4cb0-8c2d-5d6160366b7b', N'That makes 144, said Tom, grossly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6c5df90a-9b81-48d8-ac60-c820e07d852a', N'That new mystery novel has a killer start to it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd8e41ae5-0117-4467-8a5f-51e9cef70d3d', N'That really nice fellow works in a clothing factory sewing zippers on jeans. That is good. He wouldn'' t hurt a fly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'70257931-5bc4-4dc4-bf9d-06667a1150da', N'That'' s a cool chair. Yeah, I know, it rocks.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'71204425-2ee0-4bb5-9b15-3111f5ce9a0d', N'That'' s no beagle; that'' s a mongrel, Tom muttered.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'99ff9e4a-17cd-4891-9c4e-86c0ecf2c822', N'''''That'' s nothing!'''' said Tom naughtily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1c3b316f-0291-429e-b1a8-ec44a389e82d', N'''''That'' s price- fixing!'''' said Tom caustically.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'65423043-923e-4b17-87b8-1c9e246e03b4', N'That'' s the seventh dip, Namaan said cleanly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'648c42fe-896e-420c-ac60-286d3370058d', N'That'' s the third time my teacher changed my grade, Tom remarked.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c3419172-46f4-4cd0-b353-82c4d2c9845f', N'That soil scientist always travels by himself. He'' s a loam ranger.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cf09ad93-071e-4c17-a80d-823f808736e4', N'That the obstetrician'' s services were needed on the train was an accident of berth.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'20f047c7-7327-4c4a-8408-df554e50d47c', N'The 4 major food groups: fast, frozen, junk,& spoiled.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'10e58a1d-b2ff-475d-9105-793049326ebb', N'The accountant enjoyed the job, figuratively speaking.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a9f7ce5f-36db-4986-8020-b725f010e8d4', N'The actors had one great movie after another. They were on a role.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'43c44c70-2032-4ac7-875f-e2fb29bf5adc', N'The agreeable tennis umpire was generous to a fault.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b4e04a7c-83ea-4485-8986-8c018c53c754', N'The ailing king of the doves sensed an imminent coup.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5593f14f-b227-4083-86b8-345d1eff54b1', N'The airlines have become so cash- strapped, they charged me for my emotional baggage.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1a2e8dd7-a99b-4a39-89b5-49fda831b730', N'The All- Pro wide receiver'' s wedding was a little bit shaky, but his reception was excellent.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2e0b3a9e-9fa6-4986-99f2-061e0e5f0d54', N'The Alpine Skiing competition started poorly and went downhill from there.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8cf8c8ca-7933-49ce-9e19-4d1e60a39c63', N'The aluminum foiled my plans.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9601ed9e-6175-434b-91d6-3b200a3ed469', N'The anesthesiologist'' s computer has an ethernet connection.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a4fd7207-3461-4c4f-a1fb-3d208699b24d', N'The apple never falls far from the tree.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9643914f-eff9-40e0-b218-cbcc92a2a79f', N'The Arab'' s opulence was obvious from his chic clothing.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c1276de5-96fb-4f7a-b65a-988eaa8dee38', N'The artist was great. He could always draw a crowd.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c72f08cc-e0d4-4e84-9b80-1de17e4c0388', N'The astronauts said their experience on the moon was out of this world.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a8b9aae4-0498-4600-9b04-3f4a39678ec2', N'The astronomer became an actor because he always wanted to visit the stars.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ce5ce28a-116a-4c58-95ba-0feef0f84b76', N'The astronomer made a claim about a well- known star, but it wasn'' t sirius.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'42a2d4a5-024c-4513-90fd-6e8b0e49e5ba', N'The astronomer'' s research project didn'' t win him the coveted Galaxy Award, but he did receive a constellation prize.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cfce146c-6115-420e-9895-896785dcc126', N'The athlete colored her hair and started a winning streak.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bf76465b-b756-4ae9-ba2f-8120731254b3', N'The Bagginses, they steals our taglines, precioussss....')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e9744718-e920-4fd7-a12c-3d984f5524be', N'The bald man decided to consider a hair transplant to rogaine his confidence in looking younger.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8dacc52f-06b4-4d5c-be68-ac84509f010a', N'The ballet shoes made a pointe.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'24fa55b7-3ee9-4491-b0ee-3f8712b52792', N'The bargain store promised a free abacus with every purchase, but I wouldn'' t count on it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'16bdef90-90eb-46cc-a182-f9ee060a0c99', N'The baseball pitcher'' s retirement was at the end of a wonderful ERA.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e2ddfe11-5722-49bf-8e0d-4d93414f05d9', N'The bear went over the mountain to see what was bruin.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'74ab6c4f-709d-4fc3-b616-e923933523fb', N'The Belly Dancer was popular with sailors because she understood navel maneuvers.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8103a1c3-ef5c-4f05-a300-28fb33d7aef9', N'The best defence is a good offence.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5512dbdf-2f8a-4d47-8873-6693bfe3c043', N'The best defense against logic is stupidity.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'757a092f-6096-495e-b1a3-b8ba7c14e638', N'The best goods are cheapest in the end.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7dbd6cba-a267-4b55-b8b8-0db2500a6e0d', N'The best is cheapest.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'65a59855-e7b5-4ac3-a442-2ba89d21888a', N'The best place for a mathematician is behind a counter.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'781221ef-c7de-4d2e-9624-a8213d5054d4', N'The best place for criticism is in front of your mirror.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cb6911a0-8f14-409b-8953-053a074c12d1', N'The best things come in small packages.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c8a61220-d3fd-4487-b9fc-28964be1abaf', N'The best things in life are free.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1e1076c6-a4d9-48d8-92e5-54e846fa8ea0', N'The best way to stop a charging bull is to take away his credit card.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'30820a20-5d4d-4791-84d3-e747df5766d9', N'The bicycle salesman had broken his ankle and was, alas, unable to pedal his wares.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e8facf9f-8545-4952-b529-94fe47c986f7', N'The big new clock at city hall was the tock of the town.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'af8738df-7cb5-4357-b9cc-677e3905567c', N'The Biomedical Engineer didn'' t have the heart to check the EKG machine.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ae685025-03d1-45d3-9927-83894040ae48', N'The boating store had its best sail ever.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ee5f7ec5-bfeb-470a-a650-188df182dd90', N'The body builder worried too much about the lifting contest and his trainer concluded that the mind is a terrible thing to weights.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0d4e5a95-7dc0-46a6-9896-4fd6d56a5b7c', N'The bold print giveth and the fine print taketh away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3fc1cc7f-2a88-4426-a71b-443540862e2e', N'The book about Teflon contained no frictional characters.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'99bfa050-162a-4012-9e96-0ba513df43ad', N'The boughs that bear most hang lowest.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1d8ead05-c1e5-4556-8a72-b2426f959bae', N'The boxer'' s girlfriend was a knockout.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'19d3a4a8-a304-4d05-abe1-efe63deaf096', N'The boy had never played basketball before so he decided to give it a shot.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'46d5435a-e7f3-4a76-bad8-31fabb2c4fc7', N'The boy'' s guitar teacher helped him pick up his skills.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2a73496f-06b6-4805-a629-5570107e4ff2', N'The boy swallowed a pillow, the hospital described his condition as comfortable.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ac55ae76-c763-4581-a56a-4ee8e27d0e04', N'The boy who got electrocuted was unable to give a statement because he was still shocked at the incident.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3d19f05d-5fd6-431e-b686-93622fa0aac4', N'The British cannibal enjoyed snacking on fish and chaps.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'443b3978-456f-4697-9795-6c750324bde2', N'The builders of raceways believe that one good turn deserves another.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'56641e56-6700-4db1-9488-49a1bf1db704', N'The building inspector said whoever installed the water pipes was plumb loco.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'20594eea-9f7b-4d79-a8fb-33b6c8417778', N'The bullfighter'' s display of timidity left macho to be desired.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1bd3b36f-4d55-41a8-b313-271a20f4a314', N'The butcher backed up into the meat grinder and got a little behind in his work.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'09524c91-07a5-4e1b-b999-30ecd4dff6d6', N'The calculus teacher tried to keep his students on task, but the class discussion kept going off on tangents.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'50296c1c-3fc3-4f69-a6dc-285a63a99c5f', N'The candle- making machine broke down when someone threw a spanner in the wax.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fa8f13e7-7953-47d3-a30e-d9c80b8af8f8', N'The cannibal passed his brother in the woods.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c20d96fb-763e-41f7-bf0c-704b8ed99092', N'The car stopped with a jerk, then the jerk got out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fdbd3f05-7668-4d84-9d69-003f39570b5f', N'The careless pyromaniac made an ash of himself.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9aed2a49-cd69-4796-ac41-fc091b4ce6bc', N'The carpenter was well- known for nailing his work.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c76ef0b5-7708-4128-a957-3f6a0e137f30', N'The cartoon animator felt imprisoned by his job. He could not free himself from his cel.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a9e1ad53-310b-4ce3-9931-a136637cd852', N'The case against a donut thief was full of holes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1d517bc8-f0e7-47d0-a8d6-f0c313d76cd7', N'The cast, after the scene in the forest, took their boughs.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'22e340eb-2673-4952-be88-fe23a7424545', N'The cat in northern Scandinavia always had a lapp to sit on.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3d0d8f73-2782-4e4e-98ab-4f883149e626', N'The cat took up computer lessons in hopes of mastering its grip on a mouse.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8b19ecac-e2da-4800-a189-f49e4203608b', N'The cd salesman said,'''' The classical music section is right over there,'''' as he smoothed his pencil- thin mustache and spread another handful of Brylcreem on his hair.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fb4ae339-ad77-4949-aa33-03839cf2dec1', N'The celebration of the royal wedding progressed well into the night. As he stumbled outside to await his ride home one inebriated nobleman, attracted by the bright lights, made his way to the theater district and sat down below one of the brightly illuminated theater signs to await his car. The driver, unfamiliar with both the nobleman and the area, was instructed to look for a well- lit marquis.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'99eeb836-1359-4110-a6c4-c28106308127', N'The chaplain got his gown from the army surplice depot.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ce2e113b-85c7-4471-99a1-05795faed075', N'The cheap eye surgeon was always cutting corneas.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3ff0b7e5-a7bb-4831-bc13-ca2c7b81d368', N'The chef took some cheese and made some grate things.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f8970e4e-135d-4c64-89cf-0722bdfb274c', N'The cheque is in the post, Tom assented.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2ca6eb15-c773-4254-a2bf-bdbf7d3a419a', N'The chicken crossed the playground to get to the other slide.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e77f1460-1ad1-4956-823b-f0f3f9454050', N'The chickens were distraught when the tornado destroyed their home. Hopefully they will be able to recoup.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'204413e9-5d8b-438e-9d67-5f19baec6fc3', N'The child is father to the man and to the woman.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c851dcfe-7541-4171-9704-1efc4b1a0b4f', N'The Chinese chef maliciously dumped a hot broth with dumplings on an obnoxious customer. It was a wanton soup attack.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'89bd8ef1-7bd6-467a-be08-cb1568ceb9a7', N'The church choir robes were too long and needed to be hymned.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c574c785-36e5-4873-a4ea-df512a7615fa', N'The church needs to be souled.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e89f8744-dee9-410c-b587-d06c72e75cff', N'The class took a field trip to a meat processing plant, but what they saw was just offal.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8018ce97-d769-4259-a07a-5ecdf71fc0d2', N'The cobbler'' s wife is the worst shod.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'321c08c1-8bf1-44bb-8208-e14a5387ac9e', N'The cobbler was asked how many shoes he had soled by a well')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'39853622-9496-47ab-8e49-afb4f4861055', N'The coffee tasted like mud because it was ground a couple of minutes ago.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'96d5534d-5539-468c-b2a9-0f57b95c3d5d', N'The color of the sun in the early morning: rose.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'69ca6266-4a94-4e86-b30f-e35d23d9547c', N'The comedian stopped at the fabric store on his way to a comedy gig. He was looking for new material.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a739896b-2e12-4306-bd20-9877faadb7bf', N'The concession stand at the circus had very good coffee. It was the greatest joe on earth.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9a9f190f-40a3-424e-a24e-1d1da70894de', N'The corner of Ninth and Broad attracts a lot of the homeless because of its reputation for having a grate area for sleeping')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'77f85469-dcaf-4d32-a3c4-0d8bf0abbb7a', N'The correct formula for concrete is worthwhile to cement in your mind.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6c57f7f9-63c8-475e-942a-6ae9b6fd8b15', N'The cosmetic student was sick on the day of the final exam. Now she has to take a Make Up exam.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'47e10f26-6c45-4e12-a44f-eea60cfc8dc2', N'The cost of a galvanized hull is enough to zinc a ship.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6a1d8c80-99d7-4e10-a55c-e54769dea42d', N'The cost of the space program is astronomical.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cb242882-1918-4c08-adfa-a2264e427212', N'The couple grew fruit trees and lived to a ripe old age.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c9273914-284c-4eb7-be35-b62e3fb820ed', N'The customer is always right.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6f29469c-fbfd-48d5-b808-1698d15b2d73', N'The dairy farmer while milking his cow strained his calf in the process.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'76849923-628f-4003-9abc-715460bc30a6', N'The dance club opened to rave reviews.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a5c9c0fb-d91f-4ccb-8221-31fd2442a742', N'The date of the marathon was changed. She took it in stride.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1b7f4774-f960-4ce7-af56-3cb5a3208397', N'The decision to begin construction on the Empire State Building was a groundbreaking historical event.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3ff47faa-f262-43e6-926a-9289424a50ca', N'The defendant in a coffee theft trial refused to testify on the grounds that could incriminate him.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'748170a2-b91d-4daa-8ef9-50bb2151822e', N'The dentist decided he was going to try a new path to fame and fortune, and this time he would choose a different root.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b4304116-6681-455c-91f9-70b431d6ccd4', N'The dentist'' s alibi was full of holes, so the police performed a cavity search.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'eecf4878-a033-45c0-b1e9-aff0bba54dcc', N'The dentist'' s favourite shopping centre was'' The Gap''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'328df179-a11c-4282-9cc2-69463d2da9ac', N'The dermatologist was an avid gardener but he had a problem with moles.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dffe2bfe-c0c8-492d-8aaa-c0822352bb55', N'The dervish had so much endurance, he set a new whirled record.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fda5876d-0f01-40dc-bd78-47823290bf8c', N'The designer wondered why his pirate room wasn'' t perfect, and the judge told him he went a little overboard.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'492c3d58-1a84-4461-87e6-d58d9d040217', N'The dieters vowed to let nothing go to waist.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e7102846-eb72-420f-8d7b-131e2ac6c9db', N'The diners were fully sated, unaware that the wurst was yet to come.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ac0158e5-37d7-4b1c-b69a-01258e3ee382', N'The discovery of how to make steel was ironic.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bccac5f5-1028-4295-8af3-3add6e7637d5', N'The doctor couldn'' t transfer the organs because he didn'' t have the guts to do it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3326202d-5a50-4432-9409-ff0938d12104', N'The doctors had to remove a bone from my arm, said Tom humorlessly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'36d2deac-840a-492b-bcb8-972d3fb7f5fb', N'The dogs bark but the caravan passes on.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'348c1c37-66ee-4df9-bf3b-b88520801fd4', N'''''The door'' s ajar,'''' said Tom openly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ded0e8f1-05f7-4b74-9362-a419a721577d', N'The door swings both ways.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5598aa52-69da-4c5a-b055-b510b9c6da8b', N'The duck said to the bartender,'' put it on my bill.''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'87c30bf3-e4d1-4dbc-9072-f863ebdd4b45', N'The duke and the count had a fight. The duke was down for the count.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'20ed380a-0e5c-44c7-8003-e539f5a0ada4', N'The earless defendant waived his hearing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e6934a64-0929-4855-9fcd-f63ea75eed3c', N'The earliest mention of cars is in the Bible when Adam and Eve were driven out of the Garden of Eden.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'300800c2-2393-494b-9ca9-cc08236b4002', N'The Easter story is not a dead issue.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a05053e7-b80c-4c51-adb7-e6dc86ff5e85', N'The editor inserted a caret in the recipe.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bca2da4c-ad7a-4aa9-b195-4ea8a5ce7421', N'The editor received his award with sheer delete.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'00f67756-a043-4547-a2fc-3b471fd50306', N'The Egyptian cinema usherette sold religious icons in the daytime. Sometimes she got confused and called out,'' Get your choc isis here!''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5981c8dc-7fa4-4dcc-9337-eb75674d681b', N'The eight chicken farmers jumped in their rowing shell and put their cox up in front.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a15fce72-364a-45ae-ad8d-16cd6dbddb09', N'The elderly chef retired because his sage was showing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd2469fd7-61f8-471c-a052-ea331c71b3fa', N'The electrician got his supplies at the outlet store.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bfb71da5-9864-412d-9b00-0da84acabe97', N'The electricity was off and they couldn'' t found out watt was the problem.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2296d3b6-18be-46d1-b167-5f9b9ea5f603', N'The embarrassed news anchor was bright red, but he nor the television monitor was appropriately phased.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8ed477fc-ba8e-40ac-824a-1668d6587be5', N'The enemy of my enemy, is my friend.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9508e560-7489-45f5-9c89-279f869fc490', N'The Ennui Society elected a new chairman of the bored.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8ca1e95e-0fad-4adc-a1b7-13a2d9307f63', N'The environmentalist rode his bike 20 miles in the morning and 20 more in the evening. He loved recycling.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'543e284b-f0fe-43fb-8d04-f034b8e71bb1', N'The evil onion had many lairs.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'12516f54-091e-41aa-8537-cb6b6ac2ef9e', N'The ex- lumberjack will be sawly missed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c7416b6d-2f72-44a2-a7a2-78863116adf0', N'The exception proves the rule.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bb9521f5-ef13-4e53-b857-01353c68c183', N'The exhibitionist went to the store because he heard they were having a flash sale.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'05a1a7b3-8e0b-4185-b039-ce83a64398b4', N'The eye looks but it is the mind that sees.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6da0f225-08f1-4769-9994-0582387a1a73', N'The failure of the third largest manufacturer of baby'' s toys was enough to rattle the entire industry.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6eaa18d2-8fe9-417f-8a26-f3fcf55b082f', N'The family elders have relative importance.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'66e190cc-1342-4747-b662-389d68329e61', N'The family of bears posing for their family portrait experienced a true Kodiak moment.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b4ff3318-0850-4647-9374-64c1ec666b5c', N'The farmer decided to get a cow, and milk the idea for all it was worth.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'026cf3d3-585f-490f-a45a-0e344faf20d2', N'The farmer'' s market featured an enormous expanse of bins containing Indian corn, and I wandered aimlessly through this maize for nearly an hour.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8bc3091d-b2e8-48ba-ada5-1adff76255b4', N'The fault line had a splitting headache.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6e5b25f9-6742-4671-a3d8-16ab96c0825f', N'The fence builders were upset with their working conditions, so the started to picket.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'432166cb-d6d0-4dd8-9343-66382a4bbc7b', N'The fertiliser business is a growing industry.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd4b73707-53f6-4b8b-828b-0e19a0fe1ebb', N'The fine print is usually a clause for suspicion.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'52304bde-40f2-4ff8-9279-2fbddd5cc495', N'The fire chief was always asked burning questions.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'123b178d-45c3-4151-9ca2-df85dd42dcea', N'The fireplaces of oriental doctors have an Asian flue.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'368832c5-0753-4845-9774-8bceb033c405', N'The first chapter of fools is to think themselves wise.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'403c444d-7770-46a3-8d72-5445ef8da597', N'The first duck wouldn'' t go in the water. The other duck said'''' What are you, chicken?''''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a3a17a46-3a2a-469b-a96f-c9bc2e18adb2', N'The first fish to gather in schools was the grouper.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9803dff5-d463-44af-9e03-7f64b12b7b71', N'The first guy to mass produce candies made a mint.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c763573c-2133-42be-a3a2-bf1fd2055f3f', N'The first order of priority in hiring math majors is get them to sine on the dotted line')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4ffb1365-ea74-48b2-b48e-46ca57bbbdaa', N'The first scientists who studied fog were mistified.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dfd50990-3d9a-4eb8-a6b6-f25f61dd374e', N'The first step to health is to know that we are sick.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e1578d25-b937-4427-af19-0fb301f6f7a7', N'The first time he put the horses on the carriage it went without a hitch.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e0827acf-334a-4986-a13d-fddf5f30616c', N'The first time I got hold of a hang glider I had to wing it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'80d84d87-7a9c-463d-9b4c-954d9b341457', N'The first time wine taster had a blanc stare on his face.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c34b0ceb-4044-4f6e-a182-897e551e5fc5', N'The fish missed the call because he was stuck on the other line.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'73f318f2-0bff-4844-bfcc-56473b5689a8', N'The fish were shy- obviously koi.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'05e3b52e-2d42-491c-85ac-cc9fb0d70093', N'The fisherman kept bragging about the big fish he caught, but he would not be very pacific about where he caught it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7b204647-b622-45c3-b57e-fda63e65235a', N'The flock of doves decided to stage a coo')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3b4c7b3d-de4a-4e7b-a3ac-58936a6c7996', N'The flush toilet is the basis of western civilization.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'26975441-d91c-476c-bfb6-b96354f0d1a1', N'The forecaster was away because he was under the weather.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6c424a2d-c9cc-4cb4-b7c3-d5a967fa3e7e', N'The four snack groups: cakes, crunchies, frozen and sweets.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e7828788-59f5-4ff4-bbe7-f4d98619f353', N'The frog went unnoticed in the milkshake because it blended so well.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a3430e0a-90ef-4aba-ba62-a57338a58498', N'The garden club visited the nursery and found themselves in a hosta environment.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'73f5f10e-b599-4031-95c7-2503d6019b2e', N'The gardener brought his hoes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b7db2392-311d-44eb-b56f-f5a90baad1b0', N'The general started bowling before his aide had entered his name on the score sheet. He had launched a pre- emptive strike.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b45050ec-ca3b-49db-9c12-ea64b93fb84c', N'The geneticist taught his students how to mendel defective genes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9ff5f7c1-6b01-4087-8158-92e102720286', N'The geologist went to the doctor because he had a loss of apatite.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ee126692-6e3c-40d8-a202-8dd0a602dae2', N'The golfer guessed that his ball landed 20 feet off the fairway. Of course, that was just a rough estimate.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2d1b9ee6-6706-4aed-aba9-225551cdbb1a', N'The good is the enemy of the best.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a834aab8-181d-4b24-abdf-ed05db6cf070', N'The grass is always greener on the other side.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cb754fcd-3c51-4039-a07a-4ff5ac95e49f', N'The gravity was so powerful, I couldn'' t stand it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fa07d0e4-99b1-4047-9c54-06847b9d88c3', N'The groundskeeper at a large cemetery was important because he had 5000 people under him.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b5399edc-ce1e-4de0-851f-9305fdcf626f', N'The guilt- ridden shark always has a feeling of remoras.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'11281251-dba0-4bfc-8267-f8d576ed0fa1', N'The guitarist passed out on stage, he must have rocked himself to sleep.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'264cf4a7-0fb1-4394-aea4-1effbd9bbb22', N'The gunman took a shot at new opportunities.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'abfad73f-2b2a-47f6-a76f-fd056caf69ac', N'The guy who sold his carnival got a Fair deal.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'25ce29c8-8edc-4cb8-be82-27f8957b65e4', N'The hardest thing for a person to keep is his opinion')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'20b98fac-312b-4de8-b735-d7699e9c7fd4', N'The harm caused by sibling rivalry is relative.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8ed92575-7a57-4c91-ba7c-a2640a7d49f8', N'The haughty magician had illusions of grandeur.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8b661d76-dfc2-44e3-88bb-95116bc7a1d9', N'The heart sees farther than the head.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'626cae47-be89-47ed-a97c-698d085301f7', N'The hostage said he couldn'' t stay on the phone long because he was tied up at the moment.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ce426d99-46be-4251-9397-40e96c5b5ddb', N'The hot dog vendor answered, with a tone quite frank.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2d32c970-4341-46b4-9d9b-a380585972a9', N'The hotel chef was noted for his tomfoolery and his capers.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b3cb1571-533b-446f-8746-3d3399c64cef', N'The hotel regrets that you do not find your rooms satisfactory; I will send up our sweet manager right away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd1424f6f-6696-4438-9865-09688b5f2487', N'The humorist'' s favorite sandwich was smoked tongue on wry.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'60477acd-5e3e-414e-9655-1533cea58e09', N'The hypnotist went out of business because he ran out of suggestions.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5f896566-6639-46fc-bb38-97ec12bb54a0', N'The ice at the rink has many ruts. I think the maintenance crew is slipping up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'075a1703-7453-4133-a6f0-f7f85ef4fc3e', N'The ignorant always adore what they cannot understand.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4f0c8552-30b6-42b7-a7b9-cfaf8865ab2f', N'The incontinent Scotsman had a wee accident.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd240fce4-fb99-4f12-a556-8692c92c73a1', N'The inept mathematician couldn'' t count on his friends.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'82bb2ee9-409a-42a8-8737-4b154325cf89', N'The intelligent entrepreneur'' s idea for designing catapults meant that his boss was completely thrown.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8be892ae-bc8e-4d93-96d1-36c2db7c3c5a', N'The invention of a shirt fastener after the button was a snap.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3bd3adec-7459-4f6d-9deb-7e0601ba1d43', N'The inventor of a hay baling machine made a bundle.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f9786818-8e86-431f-ae4d-69cca5b341ae', N'The inventor of chewing gum soon bubbled his money.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'432bc80f-98a4-4f60-b2ae-2fbea5a431fe', N'The inventor of glass decided to see it through.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'836f0ee8-5087-473e-9990-2792e25b856c', N'The inventor of sandpaper had a rough time of it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cfba91a3-6393-445f-953e-5dc7896ff848', N'The inventor of shag carpet made a big pile.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'17fcf57a-f528-44f0-babe-4575ec0df33a', N'The inventor of the fahrenheit scale solved the problem by degrees.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0e1f0b7c-5415-4e8c-b8c1-f0bfa5e040f2', N'The inventor of the stove top was in his element.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c2bb5d97-c44a-4b9c-bc3b-f7721bb2c6b8', N'The invisible cows were herd but not seen.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9de54fd7-e464-40f2-9ea8-98674b6d5ebc', N'The IRS left a message on my cell phone that I owed them more money. It was a taxed message.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a820dc63-9f8a-4d5c-bce9-af255e836fc6', N'The janitor'' s union called for sweeping reforms.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'90729b9b-8df9-4024-aa4b-60e41aa0bc1d', N'The Jedi Knight traded in his light saber for a light dagger. He had gone over to the dirk side.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fd6629c5-5c6f-4752-aaf4-6682d4af35cf', N'The journalist went to Greece to see the ancient ruins and is now writing several columns about them.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2cc82183-bba9-45ca-a8b0-7b0694b4f5bd', N'The Junior NCO had sore wrists. The doctor said it was corporal tunnel syndrome.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'798236e4-941a-4210-8cbe-71cb2ded6035', N'The key to changing your performance ability is by tuning out criticism and staying musically octave.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3bc2b184-3456-4a63-8301-1e52cd971f9a', N'The Keystone Kops were frequently criticized for excessive use of farce.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9cc0839d-65d2-4426-8287-cb4aa4aed0b9', N'The killer followed the psychopath into the forest where he was surrounded by the copse.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b3c4bfe8-64ee-424c-a2ba-8c0afe35422d', N'The king never let any of his personal musicians go swimming immediately after eating for fear that they would get minstrel cramps.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9d1f156e-8a4a-4f28-8aac-3a0e9b76fd17', N'The lamb was cold because he lost his muttons.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'df7ab7be-a01f-4055-aa76-09180f258b31', N'The landscaper thought gardening magazines were fun to leaf through.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8c952eab-4cc5-47da-8449-52e6091ac0aa', N'The last will be first, and the first last.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4a4fc750-06cc-4d8d-98e0-659a4d2e6762', N'The lawyer asked a loaded question about guns.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bfbbd249-3fb3-412a-a71e-3de00bd3e00a', N'The little green men told me it was the Dog Star. I told them they can'' t be Sirius.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd760cdd3-e4b5-4f64-8389-0b0cbb302430', N'The local baker was paying his staff based on a flourly rate.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'76f77bc2-e6d0-4349-907c-64d4795ac044', N'The Loch Ness monster eats fish and ships.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'35c387d8-80f6-4a36-be13-6629d845f128', N'The longest mile is the last mile home.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7a607c9b-2667-4b2e-afea-c3e029a80e06', N'The lumber company downsized. They got rid of the deadwood.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e5ec1bdb-6d43-4cb6-a7c1-cb3273751344', N'The mad scientist in the old castle had a strange secret– but he kept it under his bat.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4985d9bc-84fc-4020-9f49-bf70f9e026e2', N'The magician got so mad he pulled his hare out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'17f6abf2-b533-4d52-8854-4f9f940ed25a', N'The magician who loved his chocolate could perform a lot of Twix.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a1231514-59c5-46ca-be17-fd7c274e82af', N'The male pig puts everyone to sleep. You could say he'' s quite the boar.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b6f84bb2-7649-456a-9dfd-17dbefbcd071', N'The man addicted to brake fluid said he could stop any time.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'325d9b45-b558-448e-95a7-aa0879d111d6', N'The man brought an umbrella with him into the ice cream store because he heard there was a chance of sprinkles.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9f11793c-4f64-4db9-bc6b-52ce27d6a91b', N'The man found something to catch fish, which was a net gain.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'65580deb-7b62-45a8-b97f-52c14a9e7686', N'The man leaned on the printer cartridge because he wanted to tone up his abs.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'38bc343a-14a8-4a36-ab8d-84a51a3ad0b0', N'The man loved a good play on words but his wife couldn'' t stand the punishment.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5ff90d90-b03c-4ec0-a6f8-d7b42c8c9f06', N'The man put his name on the neck of his shirt so he would have collar ID.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'85cd5687-f5aa-4f9b-95b8-ab0489fb5b8f', N'The man who dies with the most toys is still dead.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ffbb5114-0dfb-4f8f-a156-e3e5730ce625', N'The man who fell into an upholstery machine is fully recovered.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'95b48753-a46d-40d3-a003-e77c570a7fa9', N'The man who impulsively got a cat despite his allergies later realized that it was a rash decision.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0d6c5bf0-3ecf-438e-b589-025b22f5e8ee', N'The man who worked at the watch factory was very funny. He stood about all day making faces.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'380f1b73-c6d7-4170-8782-2c2016f188b8', N'The man who worked in the gum factory fell in a vat of bubblegum. His boss had to chew him out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0fd9bf8b-606c-426b-b181-4bec1ec11a97', N'The manufacturers of dynamite do a booming business.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f359ec52-a9d9-4b3d-b8a5-37f347e6a4cb', N'The manufacturing of t- shirts has really cotton.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ece3dc0c-283c-45fe-b1b3-8240ad03b0c0', N'The marine biology seminars weren'' t for entertainment, but were created for educational porpoises.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8b628d65-67a3-43e2-b123-cd45089e3104', N'The massage which came with the spa treatment was a nice touch.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c296abc6-82f8-411b-8852-69a05c2665ea', N'The math professor liked even numbers, but only the odd one.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'26d5f096-2644-4754-bb8d-393df13041e7', N'The math professor went crazy with the blackboard. He did a number on it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f523a8ad-8e4e-4bb5-8fed-63397acd8e34', N'The math teacher was a good dancer- he had algorithm.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'30eac9b8-f43f-490a-87e6-3d41721d166b', N'The math teacher was hungry, but all she had to eat was a piece of pi.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'039692b5-f947-423a-a0a7-a286f344d10e', N'The mathematician worked at home because he only functioned in his domain.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a8293a8f-f5b8-4c67-b0e4-78715b2718e8', N'The mathematics professor, lamenting his students'' lackadaisical approach to trigonometry, sighed,'''' It'' s a sine of the times.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f0cd605f-3109-4404-be2b-abac388cf157', N'The meat truck took a long time to deliver because of the Jerky ride.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5a427e90-4176-46a5-a848-906477a5f594', N'The melody kept on playing until it became a strain.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd94696b4-ca08-497c-931c-060ea3e9ec2b', N'The members of the oldest profession are not really lost women; they are just mislaid.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'68282a14-770b-467c-8300-668321d1fcaa', N'The mime wanted to say something, but he wasn'' t aloud.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c416178f-d132-454b-9ace-922690dbfb2c', N'The model who joined the air force was a bombshell.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2416cead-082e-42cd-9b3e-a78191ab95c5', N'The more the merrier.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e6c5cd9a-5583-4041-b52e-45ae3d2d2f25', N'The more things change, the more they stay the same.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ef569611-fff2-4698-9cf1-9ea4560de6e3', N'The more you stroke the cat'' s tail, the more he raises his back.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'077e047b-a1e9-46ee-bf1c-177b6fee8f51', N'The mortician was late for dinner because he was buried in his work.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'430f518d-51ce-42bc-b7d0-bb34dae5f424', N'The most expensive component is the one that breaks.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9dcea746-1183-49b0-974c-1ac103255df2', N'The most popular operation for orthopaedic surgeons is upper- leg surgery: very hip.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8d50913d-f379-4b93-bbd9-ef738b1798da', N'The mother kangaroo tried to instill good financial habits in her baby. She told him to pocket all his allowance.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b3341002-a9b8-420a-a48a-68ef73471289', N'The movie about the mobile home was advertised with a trailer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd573f09a-8e3c-4ac1-93a4-c2fb737a3143', N'The mushroom is a vegetable of high morel standing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c1297d47-a15e-41f2-9cd6-f3c7cb92c18a', N'The musician in jail was anxiously awaiting his next release.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0db1e7ee-cf86-4eab-8c00-d308f9c6170c', N'The nail that sticks up will be hammered down.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'be151c3d-0c8a-4335-8a6a-9d902d6a17e2', N'The Net- surfing bandits always ended an operation by clearing out the cash.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7964c074-37a1-40d5-83ce-5329787fdf0b', N'The new father of quintuplets could hardly believe his own census.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9e38c6ac-19ce-452f-9c1e-e3dbf90f9b50', N'The new smoking cessation drug is expensive, and it'' s shrinking city coffers.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'52c7b1c9-a403-483a-81f4-aa5f3a3fae25', N'The newspaper doesn'' t put in Politics what is Classified.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3c9422e1-7883-494f-800c-6301a44f2597', N'The nuclear physicist took a vacation for a fission trip.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'33e0da74-1c6b-4b0f-af50-66fe6974f70f', N'The nudist defended himself by citing his Constitutional right to bare arms.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9af8925f-b142-465c-a93d-a9d8ddd856de', N'The obese editor started a weight redaction program.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f37f1356-2400-4cf9-b497-527fe3f796ab', N'The oil well driller had a boring job.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'38e1e671-9bd3-49b9-9855-24235891674a', N'The old doctors practice of bloodletting was all in vein.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1e69a8b2-26de-4a06-b7bc-3a92e6a977d7', N'The one thing that is constant is Change especially if you are a cashier.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1b9be70a-05b7-40a7-8de1-2f6edae05cf4', N'The only free cheese is in the mouse trap.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd28e4b5d-00f3-4cac-9fdd-505980774626', N'The only similarity between ancient times and the 1970'' s is that both were full of people getting stoned.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f35399cf-7fdc-47f4-8fb6-274caa7c0220', N'The only stupid question is the one that is not asked.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'37b3b6cc-8d96-49f0-924b-11c5e18e36e4', N'The only things sure for cab drivers are debt and taxis.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4624cb15-d2dd-47a9-90a7-b22b17318bdd', N'The optical scientist who stole his colleague'' s bifocals was sentenced to three years in a state prism.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'104295fd-0541-4f36-9625-b5f9541dca4c', N'The optician fell into the lens grinding machine and made a spectacle of himself.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5320b203-df7f-47ed-9843-a27bc1719ec0', N'The orange squeezer was invented with some juicy information.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd04b1634-daa4-403d-b54c-ba6a9bb06374', N'The organizational get together for a company football team was called a kickoff meeting.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'37cbb553-452a-4a3e-b8be-9327e6b64b53', N'The other animals shunned the kangaroo. They treated him like a leaper.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4779abc1-793f-4e42-8ba3-99b95a12b800', N'The other day I held the door open for a clown. I thought it was a nice jester.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'97acac70-8f47-45b6-8743-718ab131214c', N'The other day I saw a magician walk down the street and turn into a drugstore.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ed0007b0-594b-4d2f-9f66-ab2ea1af4983', N'The overweight fighter pilot was grounded for violating the rules of engorgement.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4586a265-c482-4aae-8611-b704cd2f5332', N'The owner of the hair salon had to make cuts on his staff.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'08cd8bf9-b008-497a-a6a9-46c644570ff3', N'The painter was hospitalized due to too many strokes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b2697e5f-a8a0-4497-84ae-d57c97ccba55', N'The parsley farmer couldn'' t pay his child support, so the courts garnished his wages.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aebec67f-ee89-4002-9762-32d48c284d8a', N'The passenger couldn'' t find where his next flight was, but then he made the connection.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2507617e-4f8b-44e6-91f5-b6cd77908f96', N'The pen is mightier than the sword.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd8329e3b-55b5-432f-9882-ecc755f0efc0', N'The percussionist was very good at analyzing symbols.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4c7d6a74-a719-4c1d-8316-481bb6d61c26', N'The personal trainer quit his job because it wasn'' t working out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ece1b7dc-30cf-467f-9cfe-827e2cf27ce8', N'The phone call interrupted my nap, and I never did get the rest.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9cdf16a5-621c-4b9f-a9d3-fd77bf4ef3db', N'The photograph that I took of the sandstorm turned out grainy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4c411a65-4059-4b21-ab79-27aec696a991', N'The pirates buried their treasure in the twinkling of an aye.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'006a233b-be0f-4333-80ed-d76a84db8e6e', N'The pistol of a flower is its only protections against insects.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'29c6002e-d087-48fd-84bb-fcc3b6149dc0', N'The place that made rubber balls almost went bankrupt, but they bounced back.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'53db72aa-743b-4f2e-8314-d27c2c01d0d1', N'The play on fishing had quite a cast.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0151d2e4-c58c-4918-bfbb-8b6369a751a6', N'The plot to his story of the pond was quite shallow.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'43e44205-47ee-4871-83ed-408e6ee0401a', N'The plumber had to quit his job because it was too much of a drain.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'35192987-6aea-45b3-a509-02730381334e', N'The plums for sale dried out, so the profits were pruned.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a040f5f0-07a6-4bd0-9212-beabea01d651', N'The poet had written better poems, but he'' d also written verse.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a2b21a3f-1943-4251-b225-99b5e17f1402', N'The police auction was a complete bust.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6ec9910e-ea34-406f-ba9d-7f19ff8a2462', N'''''The policeman charged me twenty bucks for speeding,'''' said Tom finally.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1cce0eb9-359c-4097-866c-44eb915bc5e9', N'The politician is not one for Indian food. But he'' s good at currying favors.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'583c7353-4a56-4b16-98f1-2a1941fe9aca', N'The pope, on his 2008 tour in the United States, skipped Mass.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'db205424-697d-4db4-b5e0-331eead2cb2b', N'The port was very beautiful. The sailors said it was haven on earth.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'73fffa7c-ced5-4a32-9b71-c72041b7767c', N'The portrait artist made extra money as a census taker. He was good at canvasing people.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4f9f3cdc-ae48-40ac-9d8a-053a9cdf5e9f', N'The postmen get together for mail bonding.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4272c9c2-9294-4976-af76-e0fb8d2e3929', N'The president of a ladder manufacturer had to step down.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5f363b59-3a2d-4dfe-a2d5-48fe0aa865f9', N'The price of the big fan blew me away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'28e1c97d-5e2b-4787-b365-6878b62b4f08', N'The Procrastinators Anonymous meeting has been delayed until next Wednesday')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'55ce1e25-495a-45c9-98d5-8e05c1142ea1', N'The proctologist reassured the patient that his condition could be rectified.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'50b76414-d6e0-4266-a9c5-68629efdbdf1', N'The prodigal son was having a bad heir day.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6ab83135-e8aa-439e-b82b-753f12d6c039', N'The promises of some tailors are pure fabrication.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a2265785-4ea8-47ef-8225-138c7f0aeb5e', N'The proof of the pudding is in the eating.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a0604a48-f2c0-48a1-8c77-19faf901192f', N'The prospector didn'' t think his career would pan out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd896210c-ee24-406c-a43b-85f69c638039', N'The psychiatrist told the genie his emotions were all bottled up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'01214009-ca46-4160-a459-ced43570b11e', N'The psychotic florist created many flower derangements.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2800761a-cdf6-403a-b869-f1b334d54a35', N'The pun in the title of the play'''' The Importance of Being Earnest'''' was a Wilde idea.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a7934460-875e-4780-aeb9-12598f3731ef', N'The queen told the prince that he was a royal pain.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'87b8aba8-31e0-4319-b170-032b7ac52552', N'The rabbi became a professional golfer because he was good at making the cut.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2e994cfe-8696-4a8f-9a8c-310f1f9b7410', N'The race dogs got a bad case of the fleas- they had to be scratched.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'acbd8833-9407-47ee-881d-0eaf10af5b67', N'The race horse went lame early. It was the first out of its gait.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e7c31fee-bee3-4631-80d0-10e2bf12e58c', N'The racers all had shorts on that were too small for them, so it was a tight race.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c63375c5-01ff-4a39-b92b-efc85f857ae2', N'The railway constructions are on track.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'babf866b-10d9-460a-b297-0b989d0c694c', N'The remedy is worse than the disease.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4330adb5-3a2c-4547-84b7-54799b55be16', N'The researcher'' s report showed data on the political graphed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cefbdc32-8d73-452b-b538-e0767f43e31e', N'The river crested when a factory spilled toothpaste into it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fc4a2851-ead0-4daa-b19a-e3f5434951b4', N'The road to hell is paved with good intentions.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aac9d763-26e9-46fe-bf06-5554aa346415', N'The rodent catcher was always trying to weasel his way out of work.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'19155248-9e16-4878-875b-f9d10ac17840', N'The roulette dealer had a unique personality. He had a different spin on everything.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4b5da511-a4fa-48cc-a0ae-ea165601e8bc', N'The royal pharmacist wore a tuxedo and dispensed with formalities.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b820639d-68a2-4a93-807e-cb82c29b8eae', N'The runaway beer truck barrelled down the freeway after its driver was mugged.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bf121692-449b-4d0d-bbc1-317146cee2be', N'The safe was invented by a cop and a robber. It was quite a combination.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a566c1ec-7dd8-4e9c-92bf-a36b61da513f', N'The sailor called his girlfriend'' s belly ring a naval destroyer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0fe50de0-6b9b-4aa1-bea3-1027d5517f18', N'The salesman was peddling used bikes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3f8994e7-fdfc-48cf-888e-dff9bc7f1ecd', N'The salt said'' hi'' to the pepper. It was seasonings greetings.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ac9ad8e4-79fe-422c-98ae-d4ac46c76ede', N'The satellite went into orbit on January 1st causing a new year'' s revolution.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0a30c232-afa0-4729-9bbf-2664a64a0a40', N'The science teachers broke up because there was no chemistry between them.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8cea7b14-f778-43fb-b078-289826fdbadd', N'The scorpion said to the desert,'' You know, our conversations are always so dry.''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f4c3a204-0074-4066-a8a1-2ebe6177f96a', N'The seed company turfed out my idea for ready made lawn.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'61824eea-e38b-49c2-a3d1-c74e5423fb83', N'''''The seesaw is upside down,'''' said Tom saucily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'52751638-4332-45e3-83a7-029932e4835e', N'The self- conscious shipbuilder tried to recruit extremely sycophantic sailors to compliment her newly designed destroyer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8d1043e7-a794-444b-8a8c-f70abd4e895d', N'The sergeant drank whiskey in order to be fortified in his position.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ed3a48a4-6958-45ce-9da0-15ef73908dca', N'The sheep robber was caught on the lamb.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7f8728bf-94e0-425a-be3e-f9f698f8af7a', N'The shoemaker did not deny his apprentice anything he needed. He gave his awl.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'89d20c46-566a-4d44-95ed-e081bf41294e', N'The show must go on.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9f240c8b-453f-452e-9cfe-f3de9136c7fc', N'The shy stripper couldn'' t bare it on stage.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'145d0863-aa50-4e70-972a-efcd8d748621', N'The sign on the nudist camp said,'' Clothed'' til May''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd9a7e477-92ab-4455-be17-375b9ec18c03', N'The size a dieter would like to get to is the sighs of relief.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cd46d7bb-c8f6-4908-851e-eae9e2cee8b9', N'The snowstorm arrived at a fortuitous moment. It was white on time.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'530f8b37-13ab-417b-83d6-5644f3a7acb3', N'The soap- eating cult was swallowing lyes in search of the truth.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'589d6967-092c-4299-b2e0-99dfb413a512', N'The son can warm you forever')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7338a5be-dd57-43c1-ac3c-c9cd2ab2ecb6', N'The son shines on the righteous.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ba88034b-067b-423a-b396-188671722594', N'The soup was so bad it was gruel and unusual punishment.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd40155c1-141a-4eb6-9ca8-b1aa302cddf3', N'The Spaniard'' s wife was always up before the Don.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1b8ec8c8-426b-4eb4-82f8-761ddb3d73a4', N'The spirit is willing but the flesh is weak.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0430cb37-f85f-4bcb-92ff-0ce54bbe5200', N'The squeaky wheel gets the grease.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5f869df3-c27d-4b10-83f3-6d08b3f2ccce', N'The star asked the sun why the moon was always up so late. Sun responded that it was just a phase.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'71a1e409-2cce-4f8e-a720-e699272db534', N'The state funeral remains to be seen.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5651caff-854a-40d9-b245-b755a64e7260', N'The state police highway officer worked tirelessly in the heavy rain to assist a lady whose car was stuck in a ditch. He was a real trooper.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'27a7ba55-1bcc-4ae8-b522-19529c661793', N'The statistician attended the dance stag. He didn'' t have any data.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd9ac4fc3-f529-4291-a4ab-d604237098d0', N'The stern pirate captain'' s policy of forcing the worst members of his crew to walk the plank went swimmingly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd8f0bf23-0590-406f-9105-0649eb59b89f', N'The steward refused to swallow the harsh whine of the petulant cabernet peddler.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7b9af29c-be40-45d1-9f15-642368c26750', N'The stink bomb tossed at the standup comics'' convention quickly emptied the place out; when the smoke cleared, not a wit of them remained.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'05cba305-3fc0-4a21-8fd8-cbca6a7387be', N'The stock market crashes, but Viagra beats the flop.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0568f91c-cd9c-4eca-b1c4-536b991889c8', N'The store clerk lost his job, so he set up a kiosk in the mall to vend for himself.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'063a0d07-4ff1-42ba-a64a-8ab5e1b0440e', N'The stress of having his beloved pet bunny die caused a man to go bald-- he was very upset about losing his hare.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'381857f0-f378-4630-ae4d-5804cabb35ac', N'The study of ancient symbols will lead you to rune.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2ac1d7b5-773a-42eb-be5a-9846ae64440b', N'The study of genealogy is a basic requirement for a descent education.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'084dc14d-a74a-41ed-904c-0a1315ef5c75', N'''''The sun is rising,'''' Tom mourned.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3bd15ebe-b951-4a97-a815-a576ee287f45', N'The sun was bright on a dry, cloudless morning, but later it waned.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'90eeefad-871e-466a-a7ee-1003c3008948', N'The surest steps to happiness are the steps to church.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6bfc40b8-25b3-4bce-aeda-296e2f438e4d', N'The surgeon really did not know how to perform quick surgeries on insects, but he did one on the fly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'191c3aa0-4747-4360-a962-35104c2da62a', N'The suspect'' Sheppard'' was finally taken into custody after authorities caught him on the lam.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'838ce5fd-6d8e-4616-9576-d35c73d6d31c', N'The swanky hoteliers'' convention tended to attract the inn crowd.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a52d9387-50cf-46db-8674-f906851723f7', N'The sweep got stuck in a cold chimney, which collapsed. He came down with the flue.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd26b1ab5-4534-4dd3-acde-6a8868318998', N'The swollen blood vessels in her legs were very quarrelsome- she had bellicose veins.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'319c1945-d3d9-43b0-9217-5cdb4ba9c1bc', N'The teacher asked a question and the students were all up in arms.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b726ce68-77b0-4cb1-8d38-e560a4f03c26', N'The telemarketer asked me if I read magazines at all and I replied that I did, periodically.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f6dd0fed-8fba-4d72-9822-1ef93a4ae8e9', N'The thief broke into the music store and stole the lute.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'776c4173-858c-4192-a187-9ba7f9f962d5', N'The thief had a bold plan. He figured he could carry it off.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'936ae6d6-ee6d-4479-9f44-f5f0d83915b3', N'The thought of having no alternative to soap never washed with the inventor of shower gel.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'06268082-6da7-4370-81f9-3f2524fd387e', N'The tightrope walker gently took a step at a time and always wore diamond- laced slippers. The spectators always would stare in awe at the tightrope walker'' s feat.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'98408df7-9f2d-4808-808c-5eb636ebaea0', N'The tired playgoers decided to bypass the new production of'''' Othello'''' despite the good reviews; having just returned from a long trip, they didn'' t feel like seeing any moor of Venice.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dedd3d55-6e35-417e-a3c6-8584fd44dc5b', N'The tongue weighs very little, but few people can hold it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'26618217-7b8b-4277-9685-66bd0dc5cc20', N'The trampoline was on sale for fifty per cent off. Needless to say I jumped on the offer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c98abf68-1af8-4591-bd9c-928dc5eb5bcc', N'The Transformer always had a lot of quarters with him. He was a big fan of change.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0dea0e23-8af4-4e2f-be11-10536580803a', N'The trapeze artist had to buy his own safety equipment. Every Friday he drew his net wages.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'94c6cda0-8e2c-4f3b-a728-f034cc63bbb2', N'The triangular computer monitor business was just a big pyramid screen.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd657f8d9-6a82-4836-ba90-56019a16b6c9', N'The triglyph commented,'' It'' s friezing in here..')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5b734ea9-250b-4560-a51b-fc58c6b35b51', N'The trucker explained that he was early because he had had no breaks.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5cf5fa8b-54cf-49de-a561-d68679f66d67', N'The trucker was always irritated at an inspection station, it was the weight that bothered him.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8db099f9-5dd3-455c-9ff8-f30aec137500', N'The trumpeter blew it while auditioning for the symphony.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3c2e5375-a8ef-4fdc-9ec7-c5775cf0ca0a', N'The truth shall set you free, or The truth will set you free.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'494b49d4-f54c-4b05-93fe-27fb2f210819', N'The Turkish soldier refused to eat cottage cheese, because he didn'' t trust the kurds')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'48b5a79e-097f-4289-b8d6-50d90fb9d289', N'The two bowlers bore a striking resemblance.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'22271a63-8196-43fc-9c14-c28cc6c375b2', N'The two guys caught drinking battery acid will soon be charged.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c46b215b-ebdf-4de7-b105-a7e7370f1c3f', N'The two inventors of the radio were on the same wavelength.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6eee20f9-85f0-46af-9a6c-705aa97bedbf', N'The ultimate liquid measure is the supreme quart.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3b12fb94-56e4-4461-b112-bca80f03af31', N'The undersized and timorous knight, armed only with an aluminum sword, lacked the adequate metal to face the ferocious dragon.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'def607dd-0f70-4c34-8345-550480db027c', N'The untruthful deli clerk was full of baloney.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fdf4e0ac-10bc-45bb-a9d9-139b2b4e9293', N'The unveiling of the statue was a monumental occasion.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'05dc0e3a-6fc0-4834-95dd-fa52dbcf86aa', N'The valuable dog was still missing, believed stolen, however the police announced they have a lead.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1c9959ad-7b1c-4df7-9656-73737df2e9a6', N'The Vatican'' s supplier of duck eggs is elected by sacred balut.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'26c3fa87-7836-45d7-aa1c-2cbd9ba498b0', N'The vegetable never taken aboard ship is a leek.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b5bfada0-806d-4e11-a80f-e0eb8da155e0', N'The vendor at the Arab market resented how I haggled and told me to take a haik.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'87fb1031-f3f6-4bca-a67c-1e7a16fb8b0b', N'The veterinarian had a great deal of trouble getting his dog to heel.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ac886c0d-9ac4-4974-9ba7-25bf7a842f79', N'The Vikings landed during thunder and lightning and took the city by storm.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4b54d6af-e774-4f9b-92fd-0bd9a56278c5', N'The voice of the people is the voice of god.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bd547c13-6ba0-4308-ae67-091fa2008c89', N'The waiter was shocked when I asked for my salad to be served naked. I explained, no dressing please.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0200cfa5-e946-4227-a16f-af72de51782a', N'The warden gave the inmates acne medicine hoping it would keep them from breaking out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bd780cdf-e697-4885-b99f-bd22664a0502', N'The way to a man'' s heart is through his stomach.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ecb4e89e-fa64-44b9-9811-fbd96e34e95b', N'The weather bureau is an umbrella organization.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b81e8d54-c0dd-4624-8769-9539e2397339', N'The weather man said there won'' t be any rain for 6 months, but I drought it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1f043c20-e0f0-4c31-a242-4409d07b88fc', N'The weatherman who forecasted snow in July was a bit of a flake.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'880d8333-e1b0-4480-9ebc-33d28b2162ef', N'The weekend reporter sailed through the newscasts while the anchor was aweigh.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'886fa42b-ed21-4bbf-8385-4c97d1ad3441', N'The weigh- in at the Sumo wrestling tournament was a large scale effort.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'795d903a-02da-42f2-bfdb-25e856116921', N'The whistling fisherman was always out of tuna.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1f5d71d7-efd5-4ec9-9dda-5ba00e29c8a0', N'The white beets were returned to the produce supplier because they were chard beyond recognition.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e19b6fdc-c721-425c-882f-ef4c195e247b', N'The winter drive- by shooting was a slay ride.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e5817aa4-9693-45ef-ab07-d29e127a4036', N'The wish is father to the thought.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c1c6e006-706a-44d5-b7b6-33755023875b', N'The wolf finds a reason for taking the lamb.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c1edd63a-4971-4e00-b5a6-0cb63fa0254e', N'The woman who rode her broom to a croquet game was a wicket witch.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7bbdc9db-3c50-488f-bd3b-0f7784714ec4', N'The word'' ovine'' means just like ewe.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a24312f6-42fb-477c-8066-ededd38f590a', N'The workers at that inn are very unfriendly. They create a hostel environment.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a829e5ec-207b-4989-ab64-8df215a23730', N'The world is coming to an end. Please log off properly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0d3bd71f-1c40-4b3e-891d-d2adcb9cc11d', N'The world is your oyster.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'821edf9a-5850-47e0-86a7-ac62e7000ef0', N'The worth of a thing is what it will bring.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4baca896-74ff-4f3b-9ee2-8b94c500076c', N'The young pine sapling was admonished by his father. Apparently he'' d been knotty.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'62b8441b-e74f-4d51-bb4b-e6580f1ef9e3', N'The younger brother the better gentleman.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'007cd3e7-2b43-416b-82ae-1fc63c59d2c4', N'Then there was the occasion I spotted a health- oriented cafe displaying a sign reading'''' California Shakes.'''' Obviously, I thought.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'314a7af4-8fc4-42c8-ad00-ca90fade581f', N'There are 2 kinds of people: pessimists and fools....')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c64b8efa-645d-4570-aa1c-89fb71a4d344', N'There are a lot of bakeries on the yeast coast.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'daa63ebb-e0f7-49c2-90ce-9401b98dbd9a', N'There are as good fish in the sea as ever were caught.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'08335093-2fad-4e4b-aa84-239dd73d0b0b', N'There are many judges who would like to acquit smoking.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd1afb153-f9f7-45b0-aa13-02ae81e38234', N'There are no answers, only cross- references.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ead4e414-6996-4ec8-bf06-8a967e994cdc', N'There are none so blind as they who do not want to see.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'635ac9f9-3cfe-41d3-b504-ec3649c6cc15', N'There are sins of omission as well as of commission.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'97e45709-8b58-4ccf-80d1-d633b680853e', N'There is a growing body of obesity research.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fd6cb14c-775b-458e-a81e-a2af07c85dfd', N'There is danger in delay.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f1e329d5-0769-4afe-88b5-05add939c135', N'There is luck in odd numbers.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'16ee3ff4-2765-49cd-b719-fe7243e9e7a3', N'There is no greater torment than to be alone in paradise.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'644d9981-c91e-4fae-8849-4b50e6d493c7', N'There is no little enemy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'13f40a1d-5f7a-4a4a-b9b7-19948a16a13b', N'There is no royal road to learning.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0729c712-6e50-48a6-a07a-f55291114ab4', N'There is no smoke without fire.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4bc3b869-0bd7-42e0-ad61-6fb262582919', N'There is no such thing as bravery; only degrees of fear.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fb3b813d-54dd-43b7-bd56-d3cf96d75a21', N'There is no time like the present.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd24b93ee-ca75-4d17-8791-0e0995fc56db', N'There is no tree but bears some fruit.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f7c52ee8-4033-44cc-a4ee-c006006e26ce', N'There is nothing more precious than time and nothing more prodigally wasted.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5294bf71-411d-4b2e-b869-5232697c9d5c', N'There is nothing new under the sun.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e5b77e13-738f-49f2-ab36-16a6eec6a88b', N'There is nothing worse for a performer than an audience of drunks and their boos.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f8d5d2b7-e3e5-40a2-b1a1-991e72c31d30', N'There is only one way to open the door and that is the key.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5a54f584-1a7f-4c30-a9ba-ebcd35b610fa', N'There is rarely a sale on beer because the demand is always high so there'' s no need to create a buzz.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1977f8f7-fd05-4c26-92f2-dec6757b23a4', N'There'' s a new magnetic steam iron that makes your clothes attractive.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'934417c3-65ea-423a-b975-82a113fefa9b', N'There'' s a repair shop for baroque musical instruments.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'37aefbfc-e819-47d0-bf7d-f2ecd2625da8', N'There'' s a Sin dividing line between heaven and hell.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2a9b1b42-7a67-4106-8972-7c23b3b61a76', N'There'' s many a slip'' twixt cup and lip.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'72142c4d-2388-4373-bd5a-54924a0701d5', N'There'' s more than one way to skin a cat.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8e435ee8-bbc7-45fb-82e3-168ca62aab11', N'There'' s no fool like an old fool.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'96aff7cb-bfba-4a8a-8fc3-65c5872b9ea4', N'''''There'' s no need for silence,'''' Tom allowed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'02ec4d45-f0f6-4816-a5e2-08176b8e7bd0', N'There'' s no peace for the wicked.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'19b7450b-8dcb-48b3-aaf8-87507a15b0d2', N'There'' s no place like home.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f79d67b0-3cb7-4733-81f6-5db04dbcac5c', N'There'' s no such thing as a free lunch.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'219a5a1b-614b-4606-8cc1-49a49bb46575', N'There'' s nothing to stop me putting things in tins, said Tom cannily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a0e97ea1-08e7-4d4a-ac1d-890ab4a85be1', N'''''There'' s room for one more,'''' Tom admitted.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c860cf8c-b732-451a-ab66-0b4321ac5bf5', N'There was a contest on a slippery rock slope. I won in a landslide.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'14e38f1f-2551-4289-ab64-8010ea8ae70a', N'There was a dentist who was convicted of incisor trading.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd5fea3af-1f3d-4cc0-af68-95b94aca0e78', N'There was a guy who played the organ in his garden to get organically grown food.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'79026c79-d11a-415d-989c-3fe982082fa3', N'There was a guy who was fired from the orange juice factory for lack of concentration.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'81039015-7826-45ab-86f9-ac8383584b72', N'There was a lot of equestrian paraphernalia at the bridle shower.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2b508ad7-ccb4-4b1c-8550-aaada1398ff6', N'There was a massive outcry against the plan to build a power line across a nature preserve. The public couldn'' t bear the tension.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cb84b499-5bea-4e86-84aa-33561b8467b5', N'There was a report of shots fired in a local bar. The police don'' t know what triggered the commotion.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9e808fca-9c0f-41f7-89cb-bd40ddd55684', N'There was a sale at the fish market today. I went to see what was the catch.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'00d2d6c1-bd7c-4811-8b32-6fab613338ae', N'There was a sign on the lawn at a drug re- hab center that said'' Keep off the Grass''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'36d3eb9b-836f-4657-851d-85a930e1f5fe', N'There was a snake that gave birth to a bouncing baby boa.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'358b2168-4bc4-4222-ad01-163015d9ed1e', N'There was an eye doctor who wanted to re- locate but couldn'' t find a job because he didn'' t have enough contacts.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f4819d88-db2f-4a80-a84f-98324a822de2', N'There was an orchestra conductor who threw tempo tantrums.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f11fdad7-5a7f-460c-ae80-69aa96c2a962', N'There was once a cross- eyed teacher who couldn'' t control his pupils.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6233136d-ef5e-41ed-b952-c4bad13b31c4', N'''''There, there,'''' was Tom'' s pat answer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'622bece7-4aed-4533-add1-7bf5629f52ba', N'There’s no high like the most high.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'90b7d083-d345-4175-978e-92f4ef530a0f', N'These are my parents, said Einstein relatively')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f2c518a6-26e5-484b-abbd-66075d3cb127', N'''''These bit patterns will be more readable in groups of 8,'''' said Tom bitingly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'590b781f-ee62-41a8-ab56-413cb73c1c29', N'They are not answering- we'' d better try the knocker, said Tom adoringly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c5fa2a85-9237-4d53-a9d0-b7abfca24661', N'They argued about their vacation and finally stayed at the last resort.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'14c8d01d-d776-4850-b18b-c3d8e3231c76', N'They bought a home on a cliff because they liked to live on the edge.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd89b4cb8-a3d7-4645-a95e-29cf7492d05c', N'They built a tree house together but then had a falling out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'52987ae3-0bc5-4c80-ba1f-6e28b52f287b', N'They call me Pops. I sell soft drinks.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8e446b5d-9160-4d04-9075-7832515fd80a', N'They called him the king of the dentists because he specialized in crowns.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'94ffbff6-0b38-4dcf-b54e-c17e8da33eed', N'They hid from the gunman in a sauna where they could sweat it out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6a3c30e1-86cb-4c6d-a7a0-d4d6948ba3b5', N'They log in.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c1db9e02-ab4c-4d16-99f0-bb43afb9a055', N'They owed me a lot of money for the new house- I billed them.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'463afdb8-5963-4d93-9ec3-d8a862d6d904', N'They replaced the baseball with an orange to add zest to the game.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dd00b3cd-d7df-4899-b5a0-130e4cce6306', N'They said he drank 2 bottles of whisky a day, but it wasn'' t true. He had to scotch those rumours right away.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'df462dd2-cf48-4fb7-8582-3fb0b90ea165', N'They say curiosity killed the cat, and they weren'' t kitten.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a84c652d-c5d1-49a1-b3dd-d8edd3b7de9f', N'they stand best who kneel most')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bbf988c0-6a5a-4b54-ad5c-3a01f55b45da', N'They threw a party for the inventor of the toaster. And he was toasted.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'316f38d4-0b7d-4edc-8d72-789ed9be6ec1', N'They took soft drinks off the menu just to sprite people.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0eae2817-d1c8-4900-a869-515e246c93ff', N'They tried to save him with an I. V. but it was all in vein.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8ec4b921-f6c1-4bb8-b982-6832eef30149', N'They were married by candle- light, but the marriage lasted only a wick.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd3d94ead-40d0-4021-9f71-56e7d132153a', N'They were the quietest burglars in the history of New York City. The newspapers called them'' Criminal Mimes.''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6009d6f0-f086-4b3d-9437-a0577b5db9c7', N'They who would be young when they are old must be old when they are young.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd7aad27d-1f1e-4c37-92ef-8c0aebe4e6bf', N'They won'' t stay at friendly hotels, because they'' re hostel people.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5842c469-12d1-41f8-9fc4-0f95c0e570de', N'Thieves have muscles of steal.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f0de6206-c8a7-4164-aa2a-158cc40864a4', N'Thieves who steal corn from a garden could be charged with stalking.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2b9e1709-f8c3-418d-b3dd-ffbf40c00847', N'Things working well, no problems. Time to upgrade.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'59c3ba32-aab5-4943-a1fe-4c2dd85631b6', N'Think before you speak.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5d69199c-61ee-464d-9610-76f13be81235', N'''''This boat is leaking,'''' said Tom balefully.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'451168fc-48eb-4204-b97b-bb7596a387cf', N'''''This Bud'' s for you,'''' said Tom lightly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'89a078bf-23a3-4e2c-90a4-b171091be8fb', N'This building is so high, the elevator shows movies.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'765a297d-7e07-4e1d-9894-45884c22e823', N'''''This food tastes of plutonium,'''' said Tom glowingly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2978b4d4-9060-4769-92b4-377def2d741c', N'This fowl has been stuffed, said Tom sagely.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b1fb502b-f199-474a-83fb-1c31c703d4e4', N'This is a good bra, she said upliftingly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7b6ac6cc-4090-4bfd-9d86-0082dcede321', N'This is a picture of my new house, said Tom, visibly moved.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd7eb5307-83b3-4754-9670-c6624019d5dc', N'''''This is all from memory,'''' Tom wrote.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3ae7d2b6-ff3b-4cb2-afcd-70d8944bdadb', N'''''This is mutiny!'''' said Tom bountifully.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'35d8c09f-4fcf-45a6-a919-ee7b3281a15c', N'This is some pretty good tapioca. That'' s one way of pudding it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'664a28e8-0e2e-4926-b8ab-51969baa2d05', N'This is the best guy I'' ve met to date.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'adc1ed48-1c5c-4553-a923-4d281c34be53', N'''''This is the most common language used on micros,'''' said Tom basically.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e7949ff2-4309-4e93-b945-c004560d4340', N'This is the Netherlands, Tom stated flatly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'90aedcee-4f6a-4296-8a32-417df6777afc', N'This is what I have learned off by heart Tom wrote.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'74647733-002e-4635-9c03-076cf6775114', N'''''This is where I keep my arrows,'''' said Tom quiveringly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a5099f5b-21b6-427e-98d8-72cf5c9064d9', N'This is where I keep my arrows, said Tom, quivering.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bff1deaa-682b-4d9d-9b2c-abeba49a56d1', N'This is your brain. Postscript on brain your is This.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'41ca5c79-5633-4a2b-9ebc-dbae569ac52e', N'This just in: Research causes cancer in rats!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'32d4630a-e7c6-4462-8300-ce81232747a4', N'''''This looks like the fruit of the blackthorn,'''' said Tom slowly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd6954dd4-b4fd-4fea-9b83-73cffb5def79', N'This message written with recycled electrons.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'16d5780b-eef2-438b-ba4b-be66e9d9ae3b', N'''''This movie will be very popular,'''' Tom projected.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f2726c14-47d2-4546-b494-95d4743b9648', N'''''This must be an aerobics class,'''' Tom worked out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b6adc222-a0c2-4c9d-9c2f-e22da2425b2c', N'''''This salad dressing has too much vinegar,'''' said Tom acidly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e3266694-9164-4df2-beed-d01d3547ac96', N'''''This steamroller is amazing,'''' said Tom flatteringly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'041e24a4-4abe-486b-89f8-0dfe1dfbfbb0', N'This steamroller really works, said Tom flatteringly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dc0843bc-fe94-46ee-a5c4-8e9d0e93dc9b', N'This tagline no verb.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'96e26933-0c24-47dc-8fd4-bc331b5b35c2', N'THIS TRUCK HAS BEEN IN 8 ACCIDENTS. It has not lost one yet.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6b5f0c4a-7b09-459d-93b0-e116c2b0722c', N'''''This wind is awful,'''' blustered Tom.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a7e40020-1792-4e5a-8e06-59eccdee0ebe', N'This, too, shall pass.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'40afac37-1273-4c8f-8d91-ddc87a4cc588', N'Those changing baby diapers sometimes act rashly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a551b781-c32f-4064-93df-993b2978961b', N'''''Those cobs are amazing!'''' said Tom cornily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8436b373-13bc-4723-aad3-1ef0e0775972', N'Those who build roofs are so inclined.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'63295af0-b7b7-426e-b78a-321b6a489353', N'Those who carry too many buckets start feeling pail.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c6416a62-8d0f-42af-8f84-03c0027622e0', N'Those who choose not to eat, slowly get hungry-- and Fast.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fa872715-14c4-45cd-bafb-e8cb8675cfae', N'Those who drink too much at night have to worry about the mourning after.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'69bbf677-d4d7-423e-ad96-2552cae9fe4b', N'Those who find bargain antiques like to junk for joy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'54b37ed9-9394-4612-9022-12cb859a79b4', N'Those who get up at sunrise have many ideas dawn on them.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'382346d3-9d5a-4f6c-930f-17ab0174643a', N'Those who hate classical music have my symphony.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'69db8cfd-e7c3-4800-a352-9453086fdc2f', N'Those who have icicles keep a stiff upper drip.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6c5b7bff-5d9f-420a-8575-ead5e90ef2e8', N'Those who iron clothes have a lot of pressing demands.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aad68aa8-e5f1-44b9-aa85-685d3fefca8b', N'Those who like sport fishing can really get hooked.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a4c4aca3-0013-4d46-8f72-73ea35298038', N'Those who live beyond their means should act their wage.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'99f76671-b1e1-4241-84ad-1e5cd29bec21', N'Those who live by the sword... kill those who don'' t.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1e3edbee-361c-4cd9-a805-8903c77f1c1e', N'Those who make balls of wool for a living like to come home and unwind.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c2651304-eb5f-410e-98d4-b46a2f9caf13', N'Those who make magnets can be quite attractive.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'43d3adbd-263a-477b-9590-43cf43f73bd2', N'Those who make sinks often feel washed out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'022c8a18-135b-4a1a-9c56-3823517af7d5', N'Those who make sponges get very absorbed in their work.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'73bd82b7-3fdd-42ab-842a-2c8ebf52331d', N'Those who play musical instruments for radio or TV have to stay tuned.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3c413853-861b-4757-ac06-854e25a59814', N'Those who polish cars so that they shine work in a buffer zone.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'348e6f21-c4e1-4f28-8aaa-a0186715cc5e', N'Those who want to paint polka- dots have to find a good spot.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'417cae37-794e-4a5f-bf3b-e079c35b3866', N'Those who work on reducing auto emissions go home exhausted.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5be9cf0a-0d06-43cb-96eb-4457657d220b', N'Those whose child is going through a'' phase'' may wish they had a phaser.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a5d11057-fd98-4bef-9911-b82a7e76ea2b', N'Those with scissors shouldn'' t use cutting words.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'93be4877-9642-4354-9a43-48eb889ec9ba', N'Those working in tissue research and testing are always blowing it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'72f248a2-2773-4acc-9f39-30c9191141e0', N'Though thou hast ever so many counsellors, yet do not forsake the counsel of thy own soul.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5f29bcd4-bf28-40eb-8e78-dde31bfad475', N'Three can keep a secret, if two of them are dead.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3d89334b-d518-49a7-bc84-6746e1f105a7', N'Three fingers were willing to cooperate but the thumb and forefinger were opposed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7e68fcee-c579-4028-9496-8cc37238930c', N'Throughout the centuries, the Buddhist herdsmen of Peru have followed their lamas religiously.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6fbc6945-0cd2-48b1-9704-3f34240b201d', N'Time and tide wait for no man.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'94095e0c-c350-43b9-8f25-5e63eb5e6f2b', N'Time flies when you'' re having fun.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1afede21-0781-4c98-b0cc-a9cc72acbcb1', N'Time flies when you’ re following the son')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7cdf606b-4378-457b-9806-0794fde42716', N'Time flies.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fb920267-5174-405c-8733-b7f286a58d00', N'Time is money.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2a69439b-e3f2-4212-9fbc-487b42a51bb3', N'Time is precious.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'90fcfbd6-3d31-4ccc-8b72-bd2331078e3c', N'Time will tell.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'569b3354-d0bf-4e0f-8872-fba7c1e956f2', N'Tip: Never take a beer to a job interview.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a25acf71-b2be-49bf-bc87-e97193d6411f', N'Tired well worn expressions need to be phrased out of the language.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ecc161fe-cfa8-473d-b399-d6f9ce18bc9b', N'Tires are fixed for a flat rate.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'46fd8070-6a46-4de5-967e-020db433ed57', N'Tires cost 100 bucks a pop.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'996f9a45-89e5-45f8-b95e-bb6b3c1eb308', N'Tit for tat.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f43acd74-d434-47d6-a908-ea951f8c4e08', N'To a person who is attentive to minutiae:'''' You'' re certainly observant, even if you'' re not religious.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'17692527-4f8b-4e98-b5e8-9bb6330ca25b', N'To be a mountain climber one needs to be in peak condition.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c75545da-7689-4e91-9882-f96b391013ff', N'To be a successful frequent flier you need a lot of connections.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'42f20d57-208f-4bd6-9f9b-0bfda0f44cf3', N'To become a pilot requires a good altitude.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e6d1632f-36d8-4699-b30b-456462cb3134', N'To become an electrician you have to pass a battery of tests.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b98a767c-9327-46b0-8908-69e43a2811e9', N'To crack open the walnuts, several officers foolishly pounded them with hand grenades, scattering the colonels everywhere.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ce0d8265-13ff-4696-9f5e-3099a1566edf', N'To draw cartoons for a living requires someone who is very animated.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'72821bf0-ce87-4931-a8dd-b9d7c6971b52', N'To earn an A in'''' Sewing with Burlap'''', you really have to know the coarse material.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e04d5724-485a-42e1-bb66-0fbaf9df280c', N'To emphasize that someone is a stranger:'''' As we used to say in the cheese industry, I don'' t know him from Edam.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'16f92078-8e91-414a-9833-7dbc8c09eaf4', N'To err is human, to forgive is against my policy')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4fe5b720-d5dc-4c4b-a408-3c889de6a359', N'To find bargains go where the auction is.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aebe1b7a-2ff8-4319-bc03-203cee26f688', N'To get his quarterback!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'19f17d3c-3c6f-40e3-9ff5-8089e12122a2', N'To golf at your favorite course may require a long drive.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e6a80fbc-d20f-4ba2-bbc1-e5de93375e9a', N'To heir is human.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5bfbdfa3-caf5-42fb-9154-30fc884ac654', N'To hell with criticism. Praise is good enough for me.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'68c45b92-29d3-4cf6-8737-702df1e20e58', N'To keep someone from stealing your shipments of smoked salmon, secure them with lox.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c6c23601-e4a3-4fd1-96b3-7a6d2a68e5f1', N'To kill a circus in one blow, go for the juggler.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ff03c944-ae76-43b0-925a-8f9008c043c6', N'To learn rope tricks you have to be taut.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fa577a77-0481-42c6-a8c7-c0e45e22e8dd', N'To many girls the word'' marriage'' has a nice ring to it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9f81eb94-6842-4dbe-80b5-fc2a174d10fa', N'To our sweethearts and wives. May they never meet!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3661dcdc-8737-4c52-bb41-6fb49767f1cd', N'To plan a graveyard you need a skeleton idea before a detailed plan.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'758d30cd-2e35-475b-91f1-4036679915f9', N'To save money for the company he cut all the electricity. They were soon in the black.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c0272199-77b7-43d5-8825-3a0b1cb31158', N'To some Christmas is about other people'' s presence.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd71b9f56-be51-4e6d-947a-267a2caf748b', N'To some- marriage is a word... to others- a sentence.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a6e914cb-5920-438e-9084-0c14606b598a', N'To stay fit the priest exorcises.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'51bc9607-f98b-4078-9fcc-d3cb31e89d7b', N'To stay out of debt, act your wage.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bee554ed-6cff-4885-a5c4-4302b3e87220', N'To teach someone how to build a compass you have to be good at giving directions.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'95b86566-4570-4cb3-a6d3-164899659799', N'To test a man'' s character, give him power.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'823796f8-0896-424f-bd17-ee4f94ecd16b', N'To write with a broken pencil is pointless.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'33aab6ec-40a5-46c2-aab7-b72de9c95ddc', N'Today a truck hit my car. I wasn'' t hurt but I got the freight of my life.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aa6d5b71-34c5-491a-b2fe-9c0246bcae68', N'Today is a good day for you to jump in a lake.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ee367fc0-b816-4f1f-b68e-cd2bf55a195b', N'Today is cancelled due to lack of interest!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd5ed21d1-e4ed-4ec0-b0a3-d20ba3c0c601', N'Today is the first day of the rest of your life.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'16304d49-11f7-4fdb-8739-42277e3b0e7c', N'Tom was so tired, he lied about his bed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cb1827ce-7ae2-4b15-8f74-5052681a1b43', N'Tomorrow is another day.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4d75c2a0-7e58-4ab5-b8b9-5df46a9a3ae7', N'Tonight'' s forecast: Dark, scattered light toward dawn.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ea305d27-cbd9-4f76-b7b7-98279504ca2c', N'Tony attempted to join his thin crust pizza company with Zimo'' s Thick Crust Pizza, but somehow it didn'' t pan out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'949a0fbf-ab11-48a1-92b3-53ce3374ef77', N'Took an hour to bury the cat. Silly thing kept moving...')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7dbd4be8-bf5e-4fed-a937-67e1b8419f27', N'Traveling on a flying carpet is a rugged experience.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fb2276e7-e6a2-485a-a60d-5e79ece64987', N'Tread on a worm and it will turn.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2c4eb1d9-0296-472f-8538-bae3d237f49c', N'Treat yourself to one of our Sundays.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7f552caa-4eda-44cf-8e90-d96d1da77678', N'Trespassers will be shot, survivors will be shot again!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9cf3eb85-1773-400c-91a4-eed304e8d574', N'Tried some bear stew. It was a little grizzly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'722395c7-5c94-4357-b880-1fd6fee8b3b4', N'Trophy shops often will give customers floss with their purchase to eliminate plaque problems.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'836b2cd7-82a3-4a70-9e83-6c3e8c033f62', N'Truckers like houses with long haulways.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a4f0bcb2-10bc-48bb-987c-1f812c690343', N'True Multitasking = 3 PCs and a chair with wheels!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c6d8ac84-b068-4057-a482-0e5843998e29', N'Trust your calculator. It'' s something to count on.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f8ed8b1f-def5-4048-bba0-ac77698132cd', N'Truth gives a short answer, lies go round about.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b7064aa0-0463-451d-8152-553c27c0aa9b', N'Truth is stranger than fiction.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e54af7ac-f1f5-4910-8524-66ad116b2581', N'Truth may be blamed, but it shall never be shamed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9c513ba2-466a-4396-8a58-0a242e65f1d5', N'Truth seeks no corners.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0ab266b7-2321-4dff-b311-469d8b7e0bb2', N'Truth will out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7d5559c0-0eba-4a62-aeb1-5a4109fe2972', N'Try our Sundays, they’ re better than Baskin Robbins')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'796ec530-409c-4618-8f2f-f105b913c4dd', N'Tweety of Borg: I tawt I attimilated a Puddy Tat!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'29e7565f-2121-4db6-8285-1e4ceb017f3b', N'Two airline pilots in a stand- up comedy did a takeoff.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9b292b1f-8921-4c1d-b76f-4a5092595c92', N'Two astronauts who were dating put an end to it because they both needed their space.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e362c220-36b3-4263-9922-099e859cdcf2', N'Two banks with different rates have a conflict of interest.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7f753ab5-7c39-42c1-b589-5388cba68b30', N'Two blackberries met. They were both in a jam.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a33a3dae-5954-4c01-9962-aeb5105bca16', N'Two brothers collaborated on haunted stories, but one was a ghost writer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f5f26c35-dff9-4798-a379-f175998e6bec', N'Two brothers fought over some sheet music but their mother wanted to keep the piece.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'787b8f85-0947-4680-bdfd-b3779bbe00c4', N'Two can live as cheaply as one, for half as long.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c90d1512-fedf-4ec8-a417-85c4e0440b15', N'Two cheerleaders got married after they met by chants.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1bdba299-690e-42de-ae39-04266c25ccec', N'Two clock makers argued and got ticked off.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3705539f-3138-4f26-9791-0423397cdb62', N'Two coin collectors got together for old dimes sake.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c1ae80a1-1673-4d2c-9f77-0a82c7b87d7d', N'Two companies that made shoelaces had common ties.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5b4571c2-5dae-4149-94be-e9546915751e', N'Two companies that manufactured rulers decided to align.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5505403f-8d9e-459d-81fd-860bf5776982', N'Two construction workers had a stairing contest.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5277dbfd-9d4b-47b8-8c33-2cde4297eae6', N'Two cooks disagreed but decided to hash it over.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c2ee6125-6f88-478c-8c5e-9845a60a47cc', N'Two cooks had a contest and the heat was on.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'048512be-28e8-4159-9a8e-736e1726ee8b', N'Two duchesses were arguing about their husbands. They decided to duke it out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bfd8ecf9-ef5f-48f3-a547-4d9bffe046ba', N'Two florists got married. It was an arranged marriage.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'61246136-5812-48f1-9a0b-c637b6e2501e', N'Two friends took ropes to school so that they could skip out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'daf518cc-8300-4154-9dfb-5c0741abcb86', N'Two geologists were staring at a huge fissure in a cliff face and one was overheard to say'' It'' s not my fault''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'abbe7608-517c-4115-8717-e512e52dedbc', N'Two heads are better than one.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b0116937-e3e1-41f1-aa28-a460482af4f7', N'Two is a company; three is a crowd.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'935ec136-5208-4bd4-a0bf-0fb1b4ab1ad0', N'Two lovers who had been apart for some time were reunited on a foggy day. One whispered to the other'' I mist you''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2ba81630-55ac-43f4-9feb-846503212184', N'Two mathematicians arguing about even numbers were at odds.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7d6f5e7b-b86d-456a-bb62-79da81a5a4c3', N'Two mining companies merged and became alloys.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bdb5f492-2f16-4c59-9589-05dc056f63b6', N'Two monocles were making love in front of a window and made spectacles of themselves.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'36784f2c-8155-493f-af0b-b848c1f6779d', N'Two pencils decided to have a race. The outcome was a draw.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'301b79e6-0332-43c4-900a-342bfcd7eb3c', N'Two podiatrists became arch rivals.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'eb351bf0-19e8-4bec-aab1-07365a448c27', N'Two referees went head to head because they had a score to settle.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'23a04ed3-fb4e-4d96-ab0a-4de11b81301f', N'Two rites make a wrong where bigamy is concerned.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'413de1e2-2edc-44d8-b48d-7750b7a5ab7a', N'Two silk worms had a race. They ended up in a tie.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e399ccd2-aed4-4f3f-8b50-49581850d4f6', N'Two snakes parted, and one said,'' fangs for the memories''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4a0cfaac-5d4b-4775-9ef5-0c88befb7b17', N'Two surgeons were joking about sutures and had each other in stitches.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'14d2de15-a00c-4636-bda9-a6d9dc619664', N'Two things prolong your life: A quiet heart and a loving wife.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'37cf8729-d466-4515-8d17-35128fe5fc8d', N'Two wrongs can make a riot.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'749a996d-c075-49d7-b6e0-d68c4bec98da', N'Two wrongs don'' t make a right.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0ef437fb-a3e8-4fa4-b0b7-5d19fddb07dc', N'Tying up a circle may take a lot of chords.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6fbe212e-2b6d-47a0-b5ee-0194df11400b', N'Ultimate office automation: networked coffee machines.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'889346c2-fcde-42ef-bb74-92598c2159c8', N'Underpaid weather forecasters predicted a storm of protest.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'65711376-10c4-4179-b3b8-26c3089a846e', N'Undertakers have to get up early in the mourning.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b91e9964-f855-48e2-a417-ba52e6bdf63d', N'Undertakers'' Motto- Trust us. We are the very last ones to put you down.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'41c420ff-ccf3-47b3-b61d-3460c9739e60', N'Unfortunately, Wife 1. 0 is not upgradable')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3ef4466c-c040-4581-8e2d-fc1df7a109da', N'Upon being shown a uniquely sculptured piece of so- called granite, a geologist remarked to his colleague'''' You know that'' s really gneiss.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8178ee0a-55f8-4e5c-9c04-84732dd37f21', N'Upon discovering her children playing with matches their mother was flaming mad.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'707ec80f-4848-4ff4-b4b5-40875197b281', N'Upon discovering the deadly virus carried by Surinamese toads, the herpetologist contemplated how best to protect the pipal.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'96dffcec-2fb0-4197-990b-1599ce704cab', N'Use it or lose it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'269bb019-e14e-492a-b4fb-76a96667fe8e', N'''''Use your own toothbrush!'''' Tom bristled.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1c80ebeb-d738-4911-8ec0-2ba55780f872', N'User: The hardest- to- setup PC peripheral you can buy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd34da404-7ef6-4978-8725-36fce57818dc', N'Using deodorant is no sweat.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bea3e432-1dcd-4211-8bfb-9471eddf75b2', N'Vampires are always looking for their necks victim.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'11370fe8-e59d-4679-b9e6-e45bb39d171f', N'VanDeGraaf charged his assistant to attend.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'94707f6f-7311-42f4-9c2f-5eae9373b660', N'Variety is the spice of life.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b0164dc7-9239-4578-b91f-3bd335d4e531', N'Vegetarian: Indian word for lousy hunter!!!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'781e4a7f-eab9-436b-8c84-c2fb116f5e1f', N'Vertical living is flat dwelling.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5d271dae-e4cb-4846-b2e3-a74fc5c1f342', N'Victims of bad construction in the orient are'' bamboozled''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8b73d3e9-e185-4cc3-86cb-e19f34137f70', N'Vines are extremely short- tempered. They snap at the slightest wind.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aab34e12-8a5f-4574-99ac-d2a32a0cdd10', N'Vinyl records are really groovy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'90b66781-2819-4fe6-a42a-d6cab144a2a7', N'Violinists are often fiddling around.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1c513ae4-d61b-45ec-9354-a3b31086ae95', N'Virginity IS curable if detected early...')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c9b72412-45b6-4e99-8a03-0ff7d27bd76f', N'Virtue which parleys is near a surrender.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c897e8eb-c079-4df0-90d9-6bfe73770fa5', N'Volta was electrified.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd5252533-6de3-4720-a7c0-73b5253d5cda', N'''Volts''- the dance you perform after an electric shock.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4d28ccbc-fcef-4426-9203-6b1a154c6bc8', N'Vuja De: The feeling that none of this has happened before.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'58058893-6a90-4bf7-bbde-291c5988bd18', N'Wade not in unknown waters.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'be8aa684-8086-4c69-8ff1-596c87ecb36c', N'Waiter, I'' ll have my bill now.- How did you find your steak, sir?- Oh, I just moved the potato and there it was.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4ec1f49a-8f8b-4df3-bd54-65d9d938400d', N'Waiter, my bill please.- How did you find your luncheon, sir?- With a magnifying glass.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'89021542-7c66-48ff-b1e6-ae9ee53e1550', N'Waiter, there are pennies in my soup!'''' Well, sir, you said you'' d stop eating here if there wasn'' t some change in the food.''''*')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2d78a01d-ba3d-4a95-9465-4e31d8cfc177', N'Waiter, there'' s a fly in my soup!'''' At our restaurant, we guarantee You won'' t find a single fly.'''''''' Whaddya mean?'''''''' Because they'' re all married.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'16a78d05-0c66-4300-b235-adf2fd390d81', N'''''Waiter, there'' s a fly in my soup!'''''''' Force of habit, sir, the chef used to be a tailor.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'79fa0a7d-652d-4372-8b23-1f8efcc0dc8f', N'Waiter, there'' s a fly in my soup!'''' I know. It gives you a nice buzz doesn'' t it?''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2eec8514-f437-43c9-ad35-dfa9679e9e96', N'Waiter, there'' s a fly in my soup!'''' No, sir, that is an essential bee vitamin.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'efdff2ea-7f49-428f-b545-15393187124b', N'Waiters are good at multiplication because they know their tables.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5946c2af-f3a9-4328-9518-b64241df7dce', N'Waiting for her photos to be developed a young girl sang'' Some day my prints will come.''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'33739c04-24ba-4cc7-9ccd-9b2852cd8fc5', N'Wal- Mart Is Not the Only Saving Place. Come On In.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'383bb937-2386-488d-b3dd-0ce18a8c1336', N'Wal- Mart isn'' t the only saving place!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'81474e52-5612-472b-a041-dc89b1fd8ba8', N'Walk softly, carry a big stick.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bcb9982b-88d0-4688-84e8-59c6adfde569', N'Wally wasn'' t sure in which branch of the Army he wanted to serve, but he gravitated toward the paratroops.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e0300795-ddb3-4535-850d-79c5625fb581', N'Wanting to buy his girlfriend a gift that she was sure to appreciate, Bugs Bunny decided that something on the order of twenty- four carats would be about right.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6fd64d0a-4e6e-494e-b6c8-784a99a07016', N'War is God'' s way of teaching us geography.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'314450dd-62a0-47a4-9c9a-930c2fc283e2', N'War is too important to be left to the generals.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ff6033aa-7a16-447f-829b-3e7d07bbdd12', N'Waste not, want not.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'338f62d1-68cf-4126-937b-73c51a9b9bcb', N'Water leaking through wallboard is usually a ceiling problem.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'57495b96-8fa5-47e4-8e36-36778c1fb846', N'Watson and Crick did the twist all night.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'eb8b0f14-38d7-48f7-bb2f-5dbf9296e22f', N'We are born crying, live complaining, die disappointed')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f3828a54-a5d3-461b-9ec7-b2d8d5ccb6eb', N'We Are Not Dairy Queen… But We Have Great Sundays')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'406e6507-f87e-4332-8833-ea52eaad945f', N'We are overdressed when we are wrapped up in ourselves.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'29f825a8-569a-47c9-9fe4-52283c65d434', N'We aren'' t surrounded. We'' re in a target- rich environment.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7a86a6b4-f430-4dad-9729-340c13b5708f', N'We believe in separation of church and hate')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3603fa5e-b42e-4b88-8d0a-525936f6c313', N'We carry our greatest enemies within us.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1aedd706-6f53-4722-9544-257f246120ff', N'We did it twice last night, she relayed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a9cb6c1f-40d5-4e1a-9829-57ca20f698a8', N'We don’t read palms; we wave them.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c29c1de1-5b23-45b6-ba48-99cc717f3c26', N'We found a dead crow in our front yard but have yet to hear the caws of death.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f5b64d89-8bad-4a00-a58f-8126d01d7dfc', N'We give nothing as willingly as our advice.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd236d549-f89e-4049-bc54-60d00f4c0dd1', N'''''We have no oranges,'''' Tom said fruitlessly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8570db4e-59d1-4b1f-b33e-eb181dc430bb', N'We have nothing to fear but fear itself.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b5fb5f7a-80c2-4ee5-a20e-d52e1a47a338', N'We'' ll burn that bridge when we come to it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a232df67-1c78-477c-9e9a-e2a4236738c3', N'We'' ll never run out of math teachers because they always multiply.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c486ec62-efa4-4888-bd6e-ea67c9f00976', N'We must take the bad with the good.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fd225aa1-d6dc-40a4-a14c-ae40041aae2c', N'We now return to your previously- scheduled topics.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd2da72f0-f975-4a10-8290-9727abdbf736', N'We offer counsel so you are not audited on your final return.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'36dc5ad1-95c1-4b7f-be71-7a5274e23afe', N'We'' re all sitting in the same boat: I fish, you row.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'26449c97-0cba-449a-b3dd-94c03d093564', N'We'' re expecting fallout from the recent layoffs at the nuclear plant.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'443d9c03-5e8d-4af2-b6e4-7ac6a0eb2892', N'We'' re lost but we'' re making good time.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2e9a9422-f7f0-45a2-8120-04d96e117384', N'We should make a beer commercial. It sounds simply intoxicating.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3ae361b3-2798-46f8-8c1d-919d0eb6cdee', N'We should not expect to find old heads on young shoulders.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1c5f6a6b-4fe1-4fbd-bc3b-5a40a70da465', N'We spent all day debating about housefires. It was quite a heated argument.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1b788dcf-7765-4444-95f1-82e7b9c170f1', N'We sternly warned the circus clown not to light the fuse while we were inside the cannon, but he did it anyway-- and it really made us soar.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5fc37d4d-489d-4995-bbb6-8ed84206994e', N'''We'' ve run out of lemons'', she said bitterly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e9cdf80f-720e-417b-885a-fa8eb663f35d', N'We'' ve taken over the government, the general cooed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ea632880-0384-4d9f-9b69-08bf1885e03c', N'We'' ve taken over the government, Tom cooed')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'471dc574-73f0-4ffc-9329-19cc86ce451b', N'We welcome you with open psalms.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fd1ccfe0-57e2-45b1-96ce-72e09bbbc485', N'We went to the owls convention and it was a real hoot.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd5c40abe-4977-4902-8438-abf6d0d64b48', N'We were so poor when I was growing up we couldn'' t even afford to pay attention.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'648b7514-49b0-4153-9ccb-2d3ca34e4b78', N'We’ve got children’s church because we know how to kid around')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4ecf7dd0-0eeb-4798-8730-8345b3fbefd9', N'Wealth rarely brings happiness.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6c8a85a5-22e6-4be7-8c99-ad27ea21c9a3', N'Weather forecasters have to have lots of degrees.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ebbc2784-ca0a-4cb8-a256-505a0d9b22b4', N'Weather forecasters thinking is sometimes clouded.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'75e61c16-2693-469e-ba31-2b7ba80e3218', N'Well begun is half done.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'45468a70-b6bb-4002-97c8-83f036b6f947', N'Well drilling is a deep subject.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'67108bcb-6116-463f-94c6-094ceaa93992', N'Well I'' ll be an SOB! Tom said doggedly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd9a9904a-8047-4b03-a6e9-10c538615bd5', N'Westinghouse stopped everything... he needed the brake.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9c7d0579-83bf-43c3-b7c3-be576c275cb9', N'What a charming doorway! said Tom, entranced.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fcba98d2-d95b-472b-ae96-ad0d7a3cfb1a', N'What a tangled web we weave, when first we practice to deceive.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'38bb72b7-bde5-4fb5-b618-ad7ebc913e29', N'''''What are these berries?'''' Tom rasped.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2c266999-7ec0-4f30-83ab-688d859e8997', N'What are you taking pictures of? Tom snapped.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd69195f0-7d32-46d1-9478-dcb1f4ad6f12', N'What did the grape say when it got stepped on? Nothing- but it let out a little whine.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a7210ef5-7247-4430-ba13-b08033ccbca0', N'What did the minister say to the underdressed layman?'''' No shoes, no shirt, no service''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0b0dc00f-0e15-4a1d-a6bc-c2ccb67346df', N'What did the nice girl say when her date invited her home to see his stamp collection?'' Philately will get you nowhere''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e3fb0280-7fbf-4048-9750-53bee3cb38ed', N'What did the skeleton have for supper? Ribs.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2ff5818e-e127-4285-a12f-ea178f722477', N'What did the triangle say to the circle? You'' re so pointless.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c16d87c3-7032-445b-89f1-a82abe8d8048', N'What do they call all that lumber on the Star Trek'' s Enterprise? Captain'' s log.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4408a817-6d30-4738-8c86-5517f6d51d47', N'What do you call Peruvian Rorschach tests? Inca Blots.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a9762018-2706-4fb6-a094-db6dc212066f', N'What everybody says must be true.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'69a9818d-7816-4c1e-bf96-29b155b917e2', N'What goes around comes around.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8272e027-62b4-4b16-9bcf-dc063b237cd0', N'What goes up must come down.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a62caf48-a7ef-4107-bf6c-1ee2d27ec6ae', N'What happens when you get scared half to death..... twice?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a9d7e988-09b8-400f-89f3-16dfc31c7854', N'What if there were no hypothetical questions?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'511340b9-fc3a-487a-b7fd-b43ef3bfbaa8', N'What is a duck'' s favorite game to play? Billiards.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'55288d7c-3a18-4450-b233-79e20be90168', N'What is the best store to be in during an earthquake? A stationery store.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'06fced57-9be3-4fb9-9c41-752455859f99', N'What it boils down to is this: eggs taste good.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'aea17110-731f-4406-bfa4-409f6e8584e4', N'What keeps a dock floating above water? Pier pressure.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd2a46f2f-2a5d-458c-8266-5dcfe1872c47', N'What kind of flooring do alligator hunters use? Reptiles!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fa603f35-145b-4aa8-9f92-8b59d648f34b', N'''''What'' s a wide- angle lens?'''' asked Tom obtusely.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cb2d213d-cebb-4692-9359-baecc1a7e56e', N'What'' s another word for Thesaurus?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd49f4438-0df0-4a78-9db3-92d937a4127c', N'What'' s good for the goose is good for the gander.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'af948d57-eba8-48e9-a51e-d0ed0a1e2868', N'What'' s the deal with negotiations?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fd81facd-5ead-4bcd-b588-177275fd0e93', N'What'' s the name of that street in Paris? asked Tom ruefully.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bde71ace-6fa3-4f41-aa6d-dddc17056da5', N'What was the best thing BEFORE sliced bread?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3315a6f2-16fd-4424-bc13-c2c506f6b989', N'What you can buy for a dollar these days is absolute noncents.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ea92471b-3dde-4f5b-9ed4-c6cce5b980a6', N'What you see is what you get.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'91c177c2-636d-4219-8b7d-e0f78ebe6695', N'What you seize is what you get.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fdc2baf5-74de-42b6-ba2a-2df452609877', N'What you sow is what you reap.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd1593642-7e86-40ba-a90c-7bc8278747d9', N'Whatever you do, act wisely, and consider the end.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b0761302-4d28-47cd-ae3f-584fd36d2190', N'Wheaties near the body suggested that police look for a cereal killer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e4f3ee47-a866-4626-8b0f-454ff65a17ce', N'When a college dormitory exploded a lot of roomers were flying.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'73063fc2-ab0c-4aae-a1a1-47081f2a3f44', N'When a cow laughs, does milk come up its nose?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8883c3a2-63cb-4b1c-a824-021e2f157bb2', N'When a duck is feeling down he might just be happy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'46299c9d-c1f6-48f8-a516-f8833991f7c7', N'When a guillotine executioner is layed off he gets severance.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5405ed34-477c-4b95-90fc-8edaa1ee79f7', N'When a ladder was stolen from a store the manager said that further steps would be taken.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b70d8167-a57d-48d9-b321-7660142d6482', N'When a letter carrier became a hero they called him a deliverer.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1197e11f-7b48-47de-a618-f641707c1bb3', N'When a new baby comes into a family, many changes are necessary.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e60046e3-b185-4fdb-b493-d16afed1e6a8', N'When a priest makes a mistake in church it'' s a clerical error.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1caf79d0-30f8-41d5-ab1a-978b87fcfbe3', N'When a problem or dilemma arises:'''' As plumbers say, it'' s not drain surgery.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd80c7822-b3d7-450e-b340-790be4349684', N'When a skunk walked in, the judge said,'' odor in the court''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c124835d-3bb6-42e4-a642-041f620c1ded', N'When a thief stole several volumes from the library he was quickly booked.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2ff6453a-d689-46d8-b45d-cc0a3762a282', N'When all is said and done, more is said then done.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'846010cc-25f6-4352-9f5b-0109ec98c83b', N'When an actress saw her first strands of gray hair she thought she'' d dye.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'be95cbde-66fe-4fe6-a653-6bd55eae717e', N'When an Agnostic dies, does he go to the Great Perhaps?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'551564f8-251c-4e61-a41b-74af320616ae', N'When ancient wall sculptors were finished it was a relief.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3a8c90da-8259-45df-ad2a-92297182b23e', N'When artists dream in color it'' s a pigment of their imagination.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dd87f4f0-13a8-434c-b3ac-ea4485ed087c', N'When asked by a Health Department official to describe the mess he saw on the slaughterhouse floor, the USDA inspector replied,'''' It was just offal.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c2047838-dce2-40d8-afd9-3f125c88e2a1', N'When asked by a passenger how high he would get, the pilot replied,'' I don'' t do drugs.''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f8ebc1ec-8e31-41ac-87fd-c8f204fdc263', N'When asked by her co- workers whether they should bring a gift to her birthday party, Mary replied,'''' You should know that all I'' m interested in is your presence.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2e61cbcd-dedb-44a7-a65d-cd1dba604942', N'When asked to picture the perfect modern defensive weapon the Claymore springs to mine.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'56ac7371-f143-4166-8504-653fc9f0d2f3', N'When asked whether or not I was bilingual, I was about to say I knew sign language, but I figured it was sort of a mute point.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b4904ac9-5e1c-401b-a1e2-ac4e527a0724', N'When bottled water is cheap it'' s called a liquidation sale.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd01e9716-240d-40a6-8d89-779ac53074a3', N'When buying a battery you should never have to charge it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'93710668-5abf-42a5-8bac-41c7dc32b2ee', N'When Caesar entered the Senate all hail broke loose.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd17deda7-c202-4013-bc3b-53dd8be03405', N'When cannibals ate a missionary they got a taste of religion.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c1692165-09b9-458b-bece-31343d8f6386', N'When cave men got together they formed clubs.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6dc42a69-c0bd-4cbc-9fa1-4cab642aac78', N'When choosing between two evils, select the newer one.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7284cae4-dfef-4ad9-b3ad-f78be0487a8a', N'When crazy glue was invented lots of people became attached to it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd406e80e-9431-4dc1-ac2b-9ef7e471d2a9', N'When entering a funeral home, remember to stay alert and always look alive!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cbbc7073-8247-46d8-86e4-1aa5390f94d7', N'When gossip finally led to the landlady'' s arrest for murdering her tenants and scattering parts of their bodies around town, her only comment was,'''' Well, that'' s what comes of spreading roomers.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0ef6f6f7-8672-4c7e-91ad-8fff7010365c', N'When he fell in the wet concrete he left a bad impression.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'468e838c-42cc-4726-a934-1ef6d0e277ba', N'When he forgot to itemize what he wanted at the grocery store he felt quite listless.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e067b8b9-2f13-4855-880f-13c828ddf2ab', N'When he found out that he would visit a real blacksmith he got all fired up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a0661442-1c23-41e7-b70a-7e25c36ee788', N'When he kicked the invoice, it didn'' t mean he wanted to foot the bill.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bd16121b-db13-4066-a007-accbd7744191', N'When he proposed to her, she found it very engaging.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd7db0cce-a20c-4c1c-9a48-8b05becbb9c2', N'When he switched from horses to sailing, his life took on a new tack.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd1b43e9c-5616-4357-9e4c-28f827758116', N'When his clothes dryer broke he was lint another one.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c248955e-67fa-4d5e-b9d3-dfe6e44dbc86', N'When I asked him whether we ought to climb the steep hill, he started up the incline and, in ascent, said,'''' Yes.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7cb9344b-525b-40e9-897e-17ad9d0eb1c4', N'When I asked if I could get insurance if the nearby volcano erupted they assured me I would be covered.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'425fa4d8-56bf-441f-8dea-246cb3f5adfb', N'When I asked the man how he became a ditch- digger, he said he just fell into it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cc0698fb-97ba-42d4-bdf2-6f6e7ca99df2', N'When I commented on a friend'' s psychedelic door he said, Don'' t Knock It.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fa0241bf-9aec-4dcf-9c03-9118b06a85e1', N'When I first tried the new cough syrup, I really had no idea what to expectorate.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fd17add3-a602-4c69-9da7-8b0cd05750f5', N'When I had my PlayStation stolen, my family were there to console me.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'06a842a5-f3f7-41f3-8e26-cee51c0b9d6b', N'When I phoned my friend yesterday we mainly talked about the weather and our upcomimg exams, and we both agreed that the poring was sickening.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a5675d02-5656-43c6-9aff-b339948d5bb4', N'When I suffered a groin injury I became quite testy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'be343fb4-3cd7-439c-9639-71be3df08921', N'When I was in my cabin on the ship I got sick. Someone told me once I got to the doc I'' d feel better.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3bf3291d-8220-4455-808b-5d31496e92b0', N'When I was starving to death, my children gave me a raisin to keep on living.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'82d33328-d203-46a6-b436-e317efaad98c', N'When I went to the International Club, I accidentally spilled coffee on a Hindu lady'' s dress. I told her I was very sari.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8887f4d7-264d-4085-8acf-c14d41501aba', N'When in doubt, do nothing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ef3327c8-2316-4f75-8e8f-7df831326be4', N'When in doubt, leave it out.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4f9af824-85e7-4155-a72e-b41d4f5e3881', N'When in doubt, mumble. When in trouble, delegate.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'94285372-cbbd-421b-8d9b-7653df91965f', N'When in doubt, tell a lie')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4e0a6909-2d46-4ea5-95dd-8522c1b7c7de', N'When in Rome, do as the Romans do.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'996981b8-1e48-4db5-92d7-13fd000758ff', N'When Irish boys carry their little brothers, they get a Pat on the back.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c76a3cc2-ff3d-4225-9b6d-f1459a4ca41f', N'When it comes to drinks, citrus fruit juices are always in the limelight.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'abd72b0e-4ffc-44a6-bced-bc0af56c18ce', N'When it got stuck in the mud my car had to be toad.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0e15dfe4-8c7f-4989-b232-1c79e8986ee7', N'When it was lumpy he had a beef with his gravy.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b0776be0-1df3-4555-9566-27cea7ec182e', N'When Jesus entered Jerusalem, people waved palm branches because they were being frondly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'727f150c-fa8b-467b-8be1-d7e1bbab27b2', N'When longshoremen show up late for work they get docked.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bf1fc796-fe1d-4e10-bb1f-71112e4f7277', N'When making butter there is little margarine for error.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'12af043a-2127-4d66-a5b4-a645ea619279', N'When Martha Stewart was on trial, New York Times columnist Clyde Haberman reported on her arrival at the courthouse, where a group of supporters had assembled to greet her.'''' They included a man in a chef'' s hat who stood with the others behind a metal barrier— one toque over the line.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'afd4a684-be8e-4085-aee6-bf679ed68300', N'When Mongolians walk they like to take big steppes.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'11318120-a5e3-4726-bbab-e233c6004794', N'When my camera fell in the toffee I was making, I got a very candied picture.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1048ead0-ae21-4827-846f-38c75c3604f7', N'When neon lights were perfected the inventor was positively glowing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9da2eba9-1696-4fe3-8652-98dd3d7b7481', N'When old story tellers die they are mythed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f42b10d0-a130-45a2-bb52-a459b565ead8', N'When one door closes, another door opens.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1ee8234f-fcfd-4b3b-978c-2dc11a415e09', N'When overcome by thoughts of sin the princess visited the knave.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5d59355d-ac3c-4823-84c4-a087d5c733bc', N'When people first heard of the ABS, it was braking news.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6d96aa97-6f4c-4612-8e01-ce67a0354f0c', N'When Plato discovered he was out of food, he decided to go shop at the stoa.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dfa450aa-6bd5-49f1-811c-02072761232e', N'When poker players have to fold they feel a bit discarded.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'80a57969-392e-496b-8e9c-44d91c04d001', N'When potato chips don'' t sell fast enough, the maker knows it will soon be crunch time.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c6cae8ef-e929-41ab-929d-defbf0261eda', N'When priests have a good idea they are supposed to parish the thought.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c9b24cd9-085c-40b0-8ef5-9c2d2b0bbd11', N'When she made Mario Puzo'' s books required reading for her class, she made him an author they couldn'' t refuse.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e4f2786e-8b85-4bdf-a50f-9ecade2aa6c1', N'When Socrates needed to buy food he went to the grocery stoa.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e95c6493-d2bb-4772-95c8-d0c98b6e304c', N'When some coins fell into the batter it turned out to be a rich cake.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ec44cedb-8466-435a-99ea-99ae3c06d615', N'When some people open their mouth they put their feat in.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a0029a39-02c5-458f-ada9-26950b2cebb8', N'When talking nonsense try not to be serious.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f5278279-4a9a-454a-bdc2-d0e362e3a065', N'When the air conditioning failed in the indoor stadium there was a fan protest.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1735f753-6b59-46a0-971d-363139ad73c1', N'When the artist tried to draw a cube he had a mental block.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'05d8f915-23ca-4791-a458-cd6d1eed3779', N'When the baby bird penned his first novel he was just a fledgling author.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0c4e141c-5ac5-44bc-a9af-eff512aab674', N'When the bad poet stood in front of the judge, the judge thought the punishment should fit the rhyme.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'26c0732d-b6fb-477f-9862-f9f52dc30004', N'When the beautician was asked to complete her make- up work she blushed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'58dc4b4d-a544-44f7-ac6e-31f04dc56187', N'When the beekeeper moved into town he created quite a buzz.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e9b63f89-2054-4e3d-b951-4580bc0889cc', N'When the bottom of a cargo ship got a hole, it had one hull of a problem.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9b3d1699-cad3-4d8e-8d80-d706d8e70b6e', N'When the branding iron was invented cattle were very impressed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b7462e9c-29fa-45e0-a566-f2dcaa53e4aa', N'When the butter melted, it was rendered useless.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7be004ee-52e0-4614-b25c-98e6df860fe1', N'When the cat is away, the mice will play.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cd91b11e-6d8b-4847-bbff-f31cc508bae3', N'When the cattlemen'' s association sponsored a track and field competition, followed by a barbecue, the commemorative T- shirt read,'''' We loved the meet.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'778d0673-a4b9-44b9-b92d-b2043d58cdcd', N'When the CEO dropped his brownie on the calculator, was he trying to fudge the numbers?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4e053ebd-1221-4d35-b885-702d846a0cc5', N'When the creator of Tarzan wrote about Pellucidar and other Earth- core stories, was it Edgar Rice burrows?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'104de61f-87f8-4963-bd55-1df03cd4e6fc', N'When the crop was destroyed, there was no more cranberry source.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'746f6171-759a-4320-8d15-75a05eeafd89', N'When the Dalmatian ran away, he was spotted two blocks from home.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f3562cd7-1cb9-46f0-9894-39c4f7824e1c', N'When the doctor asked the editor how he was doing, he said he had a problem with his circulation.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3497888f-9117-407b-9884-5f7dc0f1da76', N'When the electrican apprentice made mistakes, his mother grounded him.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b7a8fc1a-ba27-417c-9a99-6b02b1cbabdd', N'When the father found he had septuplets, he could hardly believe his own census.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e457fc4a-fc8e-4cc5-a0b0-7ed08a244589', N'When the florist was running behind in delivering the roses, he had to put the petal to the metal.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0ff73d2b-031f-4cdf-a831-4d999d5c9e31', N'When the fog burns off it won'' t be mist.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fd81f4fa-f208-4f55-acff-c9319a7ea3af', N'When the glassblower inhaled he got a pane in the stomach.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0dafed2c-b428-41a8-97ce-5545c2a38723', N'When the glazier was sent to the hospital room to check the cracked window, he told the patient in the body cast,'''' I'' ve come to feel your pane.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2c2832f8-82fd-462c-aead-d153b0a0f15d', N'When the goat ate a Scrabble set, the letters came out in alphabetical ordure.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7304a49e-0cd6-45f8-b5c5-fe6638e99284', N'When the head is sick, the whole body is sick.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'40888d03-3489-42af-9393-7c68b351829c', N'When the hockey player came home he gave his wife a puck on the cheek.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fa425782-97c4-4b6c-b004-db20b101bfa6', N'When the human cannonball retired they couldn'' t find a replacement of the right caliber.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b0c85fa5-1b4a-40b3-b22a-63c22613890d', N'When the human cannonball was late for work he got fired.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'77dc2cd5-c238-4367-bdcc-644de6f53ff4', N'When the investor came home from work he was spent.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'29aa5c7b-b25b-43ac-bdd5-90b42e10eac3', N'When the janitor wanted to take up public speaking he always had the floor.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'955dc2fc-0d28-4a6b-ba36-1fe6e81467a7', N'When the King asked the fool for a joke the fool just shrugged. He was the court gesture.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ea42598e-fb7e-42ea-8c89-17007897d898', N'When the orchard owner went to trial he was judged by a jury of his pears.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'760d6b0f-9f4a-4e06-a35b-d08b348d18f7', N'When the Pequod with its crew went down, Ishmael remembered, a great wail came up from the sea.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8bfae4cc-0336-4956-89c5-d7a3990dd264', N'When the pig is proffered, hold up the poke.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7f4a6d00-fe2f-42ba-95f6-2040dcf460aa', N'When the pirate captain'' s ship ran aground he couldn'' t fathom why.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1d9c706e-b79e-46c4-8ece-3601fc43c523', N'When the plane hit turbulence, the passengers went flying.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2855b21f-858f-43b5-88cf-06f28a3b7401', N'When the plums dry on your tree, it'' s time to prune.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'84fe25c3-5b45-4e63-accf-e4664283ff40', N'When the proposal was made to locate the governor'' s mansion in Albany, New Yorkers said,'''' That'' s a capitol idea.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'406e3013-d8c2-4f6b-9fa0-840c1fbdd46f', N'When the shocked IRS agent was found guilty of tax evasion he had to take time to collect himself.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2f4bc0f0-0743-4b06-ad9e-ef1f56a45ec7', N'When the shoe store owner discovered that someone had broken into his store, the police pumped him for information.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e3e5478c-4cf9-45d2-b73c-e191f054427b', N'When the spice ships used to bring goods to the king the captain was peppered with compliments.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e662fe70-0a68-4e88-9eb3-581c133a95eb', N'When the thief fell in the wet cement and broke both legs, he became a hardened criminal.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4b10db53-1c6e-40db-bdda-e2fc412844d5', N'When the tornado went through town it was quite a blow.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bf1d9c75-794b-4244-bf77-1e10dd951444', N'When the town removed billboards, they told people that'' s how it was designed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dfffd41a-e36d-426c-a65a-7273ed3fdd9d', N'When the TV repairman got married the reception was excellent.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'db2b61ba-7716-42e2-964a-39e15fe6e4f8', N'When the waiter told me they were out of corn I said,'' That really shucks.''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4d4b6f38-4d05-4159-9b49-8d7dd3e3a4c6', N'When the wheel was invented, it caused a revolution.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0b67bce0-ffaa-4e05-b0b0-cd7f3997992a', N'When the wino suspected his muscatel was watered down, he needed more proof.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6b3ba80e-fd83-4c81-9626-5e950155f97e', N'When the woman got paid for being in a study at the sleep clinic, she said it was her dream job.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0a02ac32-2cfe-478e-912d-cf6a0168f79f', N'When there'' s a sale on tennis balls it'' s first come first serve.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'35445c85-143a-4174-b4b2-e6a459360a4b', N'When there was a murder backstage at the Grammys they couldn'' t find DNA but they did find Prince.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7cdeffca-f842-460c-9345-68ef421b536e', N'When they bought a water bed, the couple started to drift apart.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fe6b575f-42f6-4d1e-aee5-3e08feef2028', N'When they claimed to house two thousand campers, it sounded like a lot of bunk.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'72155891-8338-4d6c-90e9-8b12f52f033f', N'When they told him that his drum couldn'' t be fixed, it didn'' t resonate very well.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'204a206c-18e4-4d6f-9f22-03396903a6d8', N'When those around King Arthur'' s table had insomnia, there were a lot of sleepless knights.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'084ca7e2-3ba9-4b5e-9331-2ca8145100c5', N'When thy friend asks, let there be no to- morrow.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b054d258-f748-4fec-9f38-25ab0b602487', N'When told his design for a stadium was too grandiose, the architect shed a tier.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f92aab34-275e-4a4e-8730-20a80791e5a6', N'When two bakers traded buns they had a roll reversal.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'78a16e07-8096-4da0-8e26-820b11238727', N'When underwear fell in the vat at a beer- makers, a scandal was brewing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5cedc57b-49f6-4c6d-ac60-e9e60f5943fe', N'When video arcades switched to a system of tokens, there was no quarter asked or given.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'41d2c621-f0d5-4975-9e23-db1a7d16b612', N'When walking through a pig barn be careful how you maneuver.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'df873677-04ad-4f5e-a922-a97092dcc0f1', N'When Wally discovered he had Lyme disease he was really ticked off.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'de1f8fa2-8b24-41c6-928e-0a28bb93931f', N'When William joined the army he disliked the phrase'' fire at will''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd4506346-6cd6-43c0-8919-27ddbdb24716', N'When writing out drink recipes you have to have a first draft.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f9f2be68-88b9-4538-81fb-f89c620e21b0', N'When you can'' t decide with your friends whose place to have a party at it'' s known as party politics.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'478b0450-a37a-4fe4-b3e8-34e1804a3da1', N'When you dream in color, it'' s a pigment of your imagination.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'798311c8-634a-49a1-beea-f17f74501c3e', N'When you give to god, you always get back change')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'16f03e25-6e8d-42e8-8629-b04a6778cada', N'When you'' re wearing a watch on an airplane, time flies.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6e7016fc-f537-4c80-a663-7310a80ea43c', N'When you use glue in class it paste to be careful.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7e8ce8d1-1f42-43de-99c7-36d1748768ff', N'Whenever I go near my bank I get withdrawal symptoms.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2f513157-26ef-4745-9919-544ef85c71fa', N'Whenever the nurses have a bad day they just keep needling people.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'55f83536-823d-45da-8a0c-17bca7ae76a3', N'Where do pancakes live? In a flat.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'554fc327-b54d-4ed7-b4dc-c223a5eda976', N'Where God has a church the devil will have his chapel.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0982913a-9764-4024-b7bd-469e5ebd2633', N'Where ignorance is bliss,'' tis folly to be wise.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c9cfba76-37b7-4c9a-a08d-e288eb205ae9', N'''''Where shall I plant these water lilies?'''' Tom pondered.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'20dd2c50-1707-4a58-a611-ff1cd6b6d8d1', N'Where there are many chickens you can find layers of eggs.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0951b579-631c-4df8-b0e9-3440d8b1ba39', N'Where there is a will, there is a way.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f353404e-8816-4455-9561-77190238264f', N'Where there'' s muck there'' s brass.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2a52e48b-2bbd-44df-8719-aca7e413b779', N'Where vice goes before, vengeance follows after.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7e6ba776-30c7-471e-afa7-bcb43aa5d9de', N'While attempting to decipher complicated technical instructions:'''' It'' s all Geek to me.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6da40c61-b324-4095-9c92-e7610cbc25da', N'While baking, I dropped a stick of margarine on the wooden tile floor, and when my neighbor slipped and fell, I said'''' It must have been the parkay.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'2f92ea05-1408-42e0-bd20-9e1b0bd47efa', N'While having a hard time water- skiing, the boy commented,'' This is such a drag.''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8c5016e3-64bb-4909-8b47-06f3a63e2d66', N'While the grass grows the steed starves.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3767e578-6c89-4686-9282-4cf7d01ac4e3', N'While the music was playing the geology teacher was rocking around.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'74014791-59f0-4da9-ba87-926f0d504c2d', N'Who digs a trap for others ends up in it himself.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ba6e50a7-20a0-45da-8773-1a481706e0d2', N'''''Who discovered radium?'''' asked Tom curiously.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f0f711b4-cbc1-4ed1-9001-dfcb6fef3ae8', N'Who do you have to sleep with to get service around here?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3ba96788-15ae-4d5f-b1e9-19e2823839ee', N'Who falls short in the head must be long in the heels.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd0db6a73-4100-4b2f-b578-e0d6fa908a7b', N'Who has not served cannot command.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'79ebe69b-18e4-423b-948a-573da8516b6b', N'Who lives by hope will die of hunger.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'22ca3c9d-cc08-4c22-b381-55de9f269827', N'''''Who'' s your favorite operatic tenor?'''' Tom asked placidly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'25c78bff-6962-4ac4-9edb-c6c56ef0257e', N'Whom God will destroy, he first make mad.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1d09adcc-00ed-4835-acf1-63647a590063', N'Why are all businessmen fat? Must be all the inflation.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c5a7aecc-047f-4dae-b6d8-86a7e548a8c0', N'Why are Italians so good at making coffee? Because they really know how to espresso themselves.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'37855fc6-b1c8-4794-9e0d-feb58fd7c6f8', N'Why can'' t women put the toilet seat back up?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'16d54365-f968-4b42-8660-b5c7af921d57', N'Why did CNN cancel that cool" Desert Storm" show?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7ef82889-0717-475a-ae31-547d8b66a5e0', N'Why did the agricultural presentation go so smoothly? They planted questions.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e251ef5b-6cf6-4fe4-9e8d-54d1498ad5f3', N'Why did the dairy churn? The less said, the butter...')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'df595236-91d5-4cca-8af7-86c7a8208b88', N'Why did the pig quit running the marathon? He had a problem with his hamstring.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7f0f71c9-c2f9-4930-8c3c-ba1ba821c402', N'Why did the termites eat the wooden barrel? To stave off hunger.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a5dd5632-5c09-4aa2-948d-a1d0289e59c6', N'Why didn'' t the little boy ask the flight attendant for a snack? He didn'' t have the nuts.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'92419957-0e72-40d0-86a1-2d295a5ffca4', N'Why do archers shoot arrows? Could it be they are trying to get a point across?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8b077b7e-5854-4a7a-b624-6882a956cfae', N'Why do people preserve fruits and vegetables? Because they'' can''.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9717f127-d47a-4ef8-a45f-be6b246a162c', N'Why do those that pay the least complain the most?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'71722824-2e78-4b4f-972c-b93b10b0a872', N'Why do we have training bras? What can we teach them?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5a1d4a72-2677-4c8c-8e73-9b95b5e9881a', N'Why don'' t people like to talk to garbage men? They mostly talk trash.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ee4bcb1c-107a-4a90-8471-29afe8e18bb0', N'Why is the word abbreviation so long?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'07caac72-341f-487f-b0d4-8634d9f1d527', N'''''Why is this telephone flex always tangled?'''' asked Tom coyly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6e0dc122-ee54-47c5-b5e2-8e03ed365e5a', N'''''Why shouldn'' t I stir my coffee with a ballpoint pen?'''' Tom bickered.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ddd5c39d-f252-4f71-92f0-bd2abf8b820a', N'Why was six afraid of seven? Because seven eight nine.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f1f92f11-43bf-461e-bac7-b1fb857bb47a', N'Why was the car embarrassed? Because it had gas!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a26dcb7f-e06d-43a1-a3f2-de3ba0ed8e8e', N'Why was the orange sad? He had peelings for the apple.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4fb980ea-2dec-48d1-8348-36bcbc168b07', N'Why was the rabbit depressed? He was just going through a bad patch!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bcda4d12-e997-4110-92ba-cd3397847193', N'Why yes, I- do- work for a unit of the Illuminati.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'599f67d3-8f0b-48ab-b10d-1ed3b9c5f494', N'Wife to husband,'''' That was an explosive passage of gas, I'' d say about 8. 0 on the sphincter scale.''''')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'6fe483ee-a82a-4e5f-bdb0-c69af5c78618', N'Wilbur Wright said he'' d take a flier on it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c0205693-578d-42bb-a2e2-c77766db9dd4', N'Will this computer last five years? Obsoletely!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c480d4e4-4c95-4061-9f09-b830e3939096', N'Willful waste makes woeful want.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'552b600c-bf27-4b05-ac52-2d17639452ea', N'Windows isn'' t a virus. A virus DOES something.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9e21fb78-a774-420d-b1bf-fcbafba4fc52', N'Windows isn'' t crippleware: it'' s" Functionally Challenged"')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ac5ffdc2-5c1f-4ead-ac39-92b4aa0e2632', N'Windows loading. Come back tomorrow.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e9d6c51d-d597-4068-852e-dd352c6ab46f', N'WinError# 01: Unable to figure out own code. System crashed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9a4ca66e-7333-4332-a042-3958efb2fce0', N'Winning candy as a prize is always a sweet victory.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b54a5d91-90c2-4d04-aacc-8f589bdeb180', N'Winning isn'' t everything, it'' s the only thing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'48dd4e79-bafe-4fb1-9122-d4f5ba2f1ee8', N'Wise men learn by other men'' s harms, fools by their own.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a9f40e05-7c40-4861-85fd-6a8c00f4711e', N'With certain cashiers, things are slow to register.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'3429eaf4-2cba-47c1-abb2-73cf1072d011', N'With friends like that, who needs enemies?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'36034b42-8a86-47b5-b8b7-9d3226dd7c0b', N'Without temptation there is no victory.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dbbbb45a-589a-4e79-a19b-a74484343f24', N'Women were meant to be loved, not understood.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a3644096-62c5-4c53-928e-e6bcbf5e2c4c', N'Women who seek to be equal to men lack ambition.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0a72c87f-b82a-49aa-a2db-62cb28d6c85f', N'WORK HARDER!... Millions on Welfare depend on YOU!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'cab1b03f-a82c-4377-9612-05bf4baa6c81', N'Workers in an upholstery business demanded a wage hike to cushion the high cost of living.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a6966fcc-485b-4cf0-9609-72625537c5db', N'Working for the IRS is a hard job because it is so taxing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f7d6be7c-a2e6-42ce-ab81-38b98e4806c2', N'Working hard to become roadkill on the Infobahn.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'8c8eec51-b5e0-4289-b169-fecf4a352a7f', N'Working in the bakery left her with a loathe of bread.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1484e174-14c1-489d-b970-4609b5bd5df7', N'World Ends at 3pm; Film at 5 on WLKY Early News....')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'71e54051-7f98-4d54-ae83-1a7fc9ed056a', N'''''Would anyone like some Parmesan?'''' asked Tom gratingly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e47d768b-3614-4389-bf5a-1f64b6b722ee', N'Would you like some soda in your whiskey? asked Tom caustically.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'dfdec6ae-9b38-4012-b8cd-3f6cbc630468', N'''''Would you like some soda?'''' asked Tom caustically.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1feb390a-93d5-4539-8286-b9ce932e8613', N'Wow, thanks for the tea. I'' m glad I got to Chai it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'bebd7707-d4ea-47a1-97cf-77f3e58cb5ed', N'Wrestlers don'' t like to be put on hold.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e401e9d4-0e01-4db6-9686-8629aaf521bf', N'Yea, I'' m a pacifist. Wanna make somethin'' of it, bub?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'266f6bfa-ec40-45fb-bf31-9cc018499939', N'Years ago, changing TV channels from a sitting position was a remote possibility.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9d52df73-d424-4860-b6c4-1549382d9f19', N'Yes, I have been reading Voltaire, Tom admitted candidly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'26388ab8-fad7-4cfc-ac6f-e087b49eebdd', N'Yes, I have read Gulliver'' s Travels, said Tom swiftly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'10d89c75-9a29-4465-a2ca-3a5e4d81194e', N'Yes, you'' re right. Unfortunately, I don'' t really care.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4a6be32f-6b0d-4b85-a1f1-3bc23146a127', N'Yesterday a cow saved my life- it was bovine intervention.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd6d7b654-d70c-481f-ba0f-943c62ae9486', N'Yesterday I accidentally swallowed some food coloring. The doctor says I'' m OK, but I feel like I'' ve dyed a little inside.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'afdc9781-f6e9-4528-8678-301caa545fbf', N'Yo mama'' s so easy, that Madonna get tips from her!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e458a3ac-42aa-4720-9263-1388a469d356', N'Yo mama'' s so ugly, she made an onion cry.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'976e3c8e-6af0-4287-a029-b3a4cba60932', N'You always find something in the last place you look.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e816846a-d5e6-4357-b746-08b730497c7c', N'You are an example of why some animals eat their young.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f3788418-aa16-46d0-81ae-f6f6d777ecbd', N'You are confused; but this is your normal state.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'935a1df4-d2c6-4247-a95a-b2795a61d49c', N'You are now entering a School Free Drug Zone.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fb8700a1-5732-4e78-8431-ea2ba0fb0a14', N'You can catch more flies with a drop of honey than with a barrel of vinegar.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'72540464-5e39-4f44-874a-79b6476fb068', N'You can lead a horse to water but you can'' t make it drink.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c51350b4-e44c-48f9-b924-2ec34d9e94e3', N'You can send me to college, but you can'' t make me think.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1c8002ad-5d30-4cee-ba75-ef38cfa05589', N'You can'' t have an omelette unless you break the egg.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'724d5b17-e68c-4fa2-8944-888b7eb253c8', N'You can'' t have your cake and eat it too.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'eba88dda-f975-4e76-8f08-e9de6bc3bdcd', N'You can'' t milk a bull.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a889942a-fd22-48b7-914b-076a980f9892', N'You can'' t see the wood for the trees.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b77c0917-e599-411a-81eb-ff0ce464ffa8', N'You can'' t trust a tiger. You never know when he might be lion.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'de22892a-779e-479b-8857-8d6f7cce0194', N'You CAN trust the government... ask any Indian.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'853cbfc7-0c74-4075-ac12-91b18c05d66a', N'You decide what kind of light bulbs to buy by a process of illumination.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7a3ae511-9b7d-4704-be82-07063dbd4f96', N'You don'' t get nothing for nothing.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'848a097f-bb91-4d74-9a15-f0e30764839a', N'You don'' t shit where you eat.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'01131a05-ce2a-499e-92d8-eba5ef0384ae', N'You get what you pay for.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'e795f157-783b-48fa-ac29-47240bfcb6a8', N'You go to heaven... God sneezes... What do you say?')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'29a7efe3-eabf-4374-9e90-8c41095d9581', N'You have an important role as a negative example.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'481cba68-e95c-433f-b337-99b53014a95a', N'You have the right to remain silent.... USE IT!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'365b4015-34dc-446d-b70b-87587d4ead34', N'You have to fill out many government forms because there are many forms of government.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1f5de13b-356d-4409-9a9d-fbdd6d803ce0', N'You have to give credit to people who work in stores during a holiday- and many people do.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'89e8a62a-0802-4a89-9010-0923875809e2', N'You have two choices for dinner: Take it or Leave it.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0dd0cc78-8971-462a-96cf-39c5d1b7ea12', N'You know the tree by its fruit.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'9e33cacd-9bb8-4074-b01e-5bbec4edf1eb', N'You know what happens after you miss math class? It starts adding up.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'5d880eee-fd58-47bf-b7f6-41d3e68e01a1', N'You lamb! said Tom sheepishly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'71b33250-f92f-4bb3-9345-e913a0e8d4b8', N'You'' ll never conquer me, Goliath said stonily.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'401dbac3-f4b6-4015-8d8b-2bd998ce0a80', N'You may use this opinion for a two week trial period.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'ed8be30c-8d9a-4221-8688-2c94d573e43c', N'''''You must be my host,'''' Tom guessed.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'04334054-921b-418f-8ee9-42050d12c48e', N'You must not run after two hares at the same time.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'08891b68-5ee3-4bae-b632-155646d02913', N'You never know what you can do until you try.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'23454dc9-24f1-43e7-8d5f-a36df541bbaf', N'You often hear of a good wine through the grapevine.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f6345567-9e2e-438f-a697-676a7f3bb22b', N'You'' re a wicked glutton, Tom insinuated.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c6fa73f8-8484-4898-81c2-4b84d6d3668b', N'You'' re not losing more hair, you'' re gaining more scalp.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1d91b0cd-c7b1-4c36-bb31-1a423a656c3f', N'You'' re not old, You'' re chronologically disadvantaged')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'd2504d15-c700-4818-b2ce-0189e8faf67c', N'You'' re only young once. You'' re immature forever.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'afa5e928-93a4-4e83-b6f4-3bfaf3c96427', N'You'' re so vain/ I bet you think this tagline'' s about you')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fe51876b-c522-49f3-9ce3-a18b3604a47d', N'You'' re telling me that'' s an alligator? That'' s a croc!')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'7bd0e13c-c920-4292-b107-e86b28198f9a', N'You really are addicted to soccer, you should think of kicking the habit.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'50cde09e-bba2-40d7-824d-d2b89a4989b4', N'''''You resemble a goat,'''' said Tom satirically.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0d709ef6-90de-4524-bac3-58bc97deffbc', N'You should always use basil the day you buy it- as they say, herb today, gone tomorrow.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f5abcede-fafb-412c-b64f-a82a615328d0', N'You should lock up your wine in a cabernet.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'4df3d32c-6591-48e9-8ab7-8bc1a11f70ce', N'You should massage a cow'' s back before putting it out to posture.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'a813f500-3e57-49f1-911c-5c86e463138b', N'You should never drink beyond the pint of no return.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0afeceaf-051b-4180-893a-02e9d6ac2b3f', N'You should never take rocks for granite.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'b8825a0e-2e96-4dce-91d0-aee25e56ed9d', N'You'' ve got more issues than Time magazine.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'90380b44-dffb-4126-a187-30c6ab451907', N'You'' ve obviously been educated beyond your intelligence.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'c5147ebb-eb36-4dad-b7b2-4d5136fdb78a', N'You won'' t often catch loggers or farmers going against the grain.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'99e3cb32-40f7-4a6c-a2ed-1c2c1d4daf8b', N'''''You won the bronze,'''' said Tom meddlingly.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fae93fe5-41d3-4488-a261-6a2b13ff132a', N'Young women who are mathematics professors closely watch their figures.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'0e9b3b0c-2d1d-4e49-b06e-9549fd80aca7', N'Your E- mail has been returned due to insufficient voltage')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'fcbaca60-e87d-4754-a205-206f7801647c', N'Your nose is in the scenter of your face.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'f2aae42e-b6e8-4f60-816c-ddf096d59ee7', N'Your very last breath will be a fatal blow.')
GO
INSERT [dbo].[PunResp] ([PunResponseID], [ResponsePhrase]) VALUES (N'1289bf50-beed-4bd6-9519-1cabf03f9c29', N'Zeal without knowledge is a runaway horse.')
GO



INSERT INTO [dbo].[PunResponseKeyWord]
           ([PunResponseID]
           ,[KeyWordID])
SELECT(SELECT PunResponseID from PunResp WHERE ResponsePhrase = '"A newspaper is a collection of half- injustices"'), (SELECT KeyWordID from KeyWord WHERE Word = 'news')
UNION
SELECT(SELECT PunResponseID from PunResp WHERE ResponsePhrase = '53. 7% of all statistics are totally incorrect'), (SELECT KeyWordID from KeyWord WHERE Word = 'math')
UNION
SELECT(SELECT PunResponseID from PunResp WHERE ResponsePhrase = '"Bother," said Pooh, as he torched the forest.....'), (SELECT KeyWordID from KeyWord WHERE Word = 'tree')
UNION 
SELECT(SELECT PunResponseID from PunResp WHERE ResponsePhrase = '53. 7% of all statistics are totally incorrect'), (SELECT KeyWordID from KeyWord WHERE Word = 'stats')
UNION
SELECT(SELECT PunResponseID from PunResp WHERE ResponsePhrase = 'Da brie is everywhere'), (SELECT KeyWordID from KeyWord WHERE Word = 'news')
UNION
SELECT(SELECT PunResponseID from PunResp WHERE ResponsePhrase = 'Because 7, 8, 9!'), (SELECT KeyWordID from KeyWord WHERE Word = 'math')
UNION
SELECT(SELECT PunResponseID from PunResp WHERE ResponsePhrase = 'They log in.'), (SELECT KeyWordID from KeyWord WHERE Word = 'tree')
UNION
SELECT(SELECT PunResponseID from PunResp WHERE ResponsePhrase = 'To get his quarterback!'), (SELECT KeyWordID from KeyWord WHERE Word = 'money')
UNION
SELECT(SELECT PunResponseID from PunResp WHERE ResponsePhrase = 'Because it lost all its contacts.'), (SELECT KeyWordID from KeyWord WHERE Word = 'eyes')
UNION
SELECT(SELECT PunResponseID from PunResp WHERE ResponsePhrase = 'An address.'), (SELECT KeyWordID from KeyWord WHERE Word = 'street')
UNION
SELECT(SELECT PunResponseID from PunResp WHERE ResponsePhrase = 'Microchips'), (SELECT KeyWordID from KeyWord WHERE Word = 'food')
UNION
SELECT(SELECT PunResponseID from PunResp WHERE ResponsePhrase = 'But I mist my chance. I can dew it tomorrow.'), (SELECT KeyWordID from KeyWord WHERE Word = 'weather')
UNION
SELECT(SELECT PunResponseID from PunResp WHERE ResponsePhrase = 'Bison.'), (SELECT KeyWordID from KeyWord WHERE Word = 'dad')
UNION
SELECT(SELECT PunResponseID from PunResp WHERE ResponsePhrase = 'Just steal her blanket.'), (SELECT KeyWordID from KeyWord WHERE Word = 'cold')
UNION
SELECT(SELECT PunResponseID from PunResp WHERE ResponsePhrase = 'He said Wii.'), (SELECT KeyWordID from KeyWord WHERE Word = 'game')

GO



INSERT [dbo].[PunSetupResp] ([PunSetupResponseID], [PunSetupID], [PunResponseID]) VALUES (N'f3edc0c6-e7ea-4a2f-a774-ba2d765971ae', N'cdc5bded-3c4d-494b-a26a-0096efc28a26', N'6a3c30e1-86cb-4c6d-a7a0-d4d6948ba3b5')
INSERT [dbo].[PunSetupResp] ([PunSetupResponseID], [PunSetupID], [PunResponseID]) VALUES (N'9b0b1770-4119-4b5f-a371-8ddf67aade09', N'6b4c09aa-eb80-430b-9a31-028ba238e46f', N'b4390516-70c6-4f9c-a7a7-97eb2f4a0f1e')
INSERT [dbo].[PunSetupResp] ([PunSetupResponseID], [PunSetupID], [PunResponseID]) VALUES (N'83aee77d-2118-4335-aa11-be86319352b9', N'9641609a-80ce-4277-a760-07473903ccad', N'c76ad0a6-bb3b-45bf-9f76-61cbdd29da3d')
INSERT [dbo].[PunSetupResp] ([PunSetupResponseID], [PunSetupID], [PunResponseID]) VALUES (N'88c189c3-40be-4a62-b842-bb2b69b1fa3c', N'472a3047-b806-41d9-a8af-0861cfaeadf0', N'14bde785-8a7e-40a7-b7c5-511b3588084f')
INSERT [dbo].[PunSetupResp] ([PunSetupResponseID], [PunSetupID], [PunResponseID]) VALUES (N'427b22e2-a37f-4e7b-933f-b16bf5cda692', N'f88d7abb-e451-4e79-8074-1d63b81aabaf', N'6be031ff-a3ec-4999-9041-d6480c5a7389')
INSERT [dbo].[PunSetupResp] ([PunSetupResponseID], [PunSetupID], [PunResponseID]) VALUES (N'edfdfdb7-7448-43e3-8d86-939f866584fa', N'8e77e490-b4a4-4546-b1a7-2242e12d7707', N'aebe1b7a-2ff8-4319-bc03-203cee26f688')
INSERT [dbo].[PunSetupResp] ([PunSetupResponseID], [PunSetupID], [PunResponseID]) VALUES (N'c8f603ad-30b7-410b-9e0d-5b383f197fad', N'28d0dc21-dbd6-4f1c-b7aa-4a755e508aac', N'79047cda-d599-4954-83c6-0e5e5a12b62d')
INSERT [dbo].[PunSetupResp] ([PunSetupResponseID], [PunSetupID], [PunResponseID]) VALUES (N'35fba6be-87c3-4e32-be4f-728fad17a9bf', N'063eced1-f574-44e0-bb2b-c48dbdb31f9c', N'6a1c2d6a-906a-4b52-9a38-bf6aab6d10c5')
INSERT [dbo].[PunSetupResp] ([PunSetupResponseID], [PunSetupID], [PunResponseID]) VALUES (N'c8a7eb8c-a700-4c57-8d17-be204a7df6df', N'8568205a-7ec7-422c-b66f-d55190645fb7', N'd3223b6e-b5cc-4ea5-9655-7cb6c8c11c82')
INSERT [dbo].[PunSetupResp] ([PunSetupResponseID], [PunSetupID], [PunResponseID]) VALUES (N'294824c7-9e89-4985-8ba9-f7664c278d83', N'64ba7be1-1990-4c5d-bc32-dba6d9634380', N'e7408de5-43bf-449c-89b4-add1795f5d2f')
INSERT [dbo].[PunSetupResp] ([PunSetupResponseID], [PunSetupID], [PunResponseID]) VALUES (N'73b894c6-40fe-4b21-98d6-e53a8cf3b9e9', N'948960e0-5131-4413-ac2a-ffd5c9cda224', N'82cba767-03d5-431d-a006-c76d565001b8')

