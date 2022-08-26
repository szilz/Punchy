// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.
//
// Generated with Bot Builder V4 SDK Template for Visual Studio EchoBot v4.15.2

using Microsoft.Bot.Builder;
using Microsoft.Bot.Schema;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http.Features;

namespace EchoBot.Bots
{
    public class EchoBot : ActivityHandler
    {
        //makes new member
        protected override async Task OnMembersAddedAsync(IList<ChannelAccount> membersAdded, ITurnContext<IConversationUpdateActivity> turnContext, CancellationToken cancellationToken)
        {
            var welcomeText = "Hello and welcome, I am a copy cat with an attitude";
            foreach (var member in membersAdded)
            {
                if (member.Id != turnContext.Activity.Recipient.Id)
                {
                    await turnContext.SendActivityAsync(MessageFactory.Text(welcomeText, welcomeText), cancellationToken);
                }
            }
        }

        //First response method
        protected override async Task OnMessageActivityAsync(ITurnContext<IMessageActivity> turnContext, CancellationToken cancellationToken)
        {
            //default response
            var replyText = $"Echo: {turnContext.Activity.Text}";

            //Sends typing indicator if user inputs 'wait'
            if (string.Equals(turnContext.Activity.Text, "wait", System.StringComparison.InvariantCultureIgnoreCase))
            {
                await turnContext.SendActivitiesAsync(
                    new IActivity[] {
                        MessageFactory.Text("Started typing", "Started typing"),
                        new Activity { Type = ActivityTypes.Typing },
                        new Activity { Type = "delay", Value= 3000 },
                        MessageFactory.Text("Finished typing", "Finished typing"),
                    },
                    cancellationToken);
            }

            //Throws some attitude in the mix
            if (turnContext.Activity.Text == "Hi")
            {
                replyText = $"Echo: {turnContext.Activity.Text}, Ugh you're so basic";
            } else if (turnContext.Activity.Text.Length > 10)
            {
                replyText = $"Echo: {turnContext.Activity.Text}, Ugh your message is so long";
            }
            
           
            //Checks if attachment is needed
            var reply = await ProcessInput(turnContext, turnContext.Activity, cancellationToken);
            if (reply != null)
            {
                await turnContext.SendActivityAsync(reply, cancellationToken);
            }
            else
            {
                //Sends initial response
                await turnContext.SendActivityAsync(MessageFactory.Text(replyText, replyText), cancellationToken);
            }
        }

        private static async Task<IMessageActivity> ProcessInput(ITurnContext turnContext, 
            IMessageActivity activity, CancellationToken cancellationToken)
        {
            IMessageActivity reply = null;
            if (activity.Text.Contains("how"))
            {
                reply = MessageFactory.Text("Here's how its done:");
                reply.Attachments = new List<Attachment>() { GetInternetAttachmentHow() };
            } else if (activity.Text.Contains("why"))
            {
                reply = MessageFactory.Text("Wellll");
                reply.Attachments = new List<Attachment>() { GetInternetAttachmentWhy() };
            }
            return reply;
        }

        private static Attachment GetInternetAttachmentHow()
        {
            // ContentUrl must be HTTPS.
            return new Attachment
            {
                Name = @"Resources\architecture-resize.png",
                ContentType = "image/png",
                ContentUrl = "https://docs.microsoft.com/en-us/bot-framework/media/how-it-works/architecture-resize.png",
            };
        }

        private static Attachment GetInternetAttachmentWhy()
        {
            // ContentUrl must be HTTPS.
            return new Attachment
            {
                Name = @"Resources\why-not.gif",
                ContentType = "image/gif",
                ContentUrl = "https://media0.giphy.com/media/3oxRmDVxtFVQWbBxE4/giphy.gif?cid=ecf05e47uz53a559zpp3hf1aczm7bqoui8us86kch9qof6sj&rid=giphy.gif&ct=g",
            };
        }
    }
}
