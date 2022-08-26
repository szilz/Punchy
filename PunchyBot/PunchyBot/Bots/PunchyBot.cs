// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License.
//
// Generated with Bot Builder V4 SDK Template for Visual Studio PunchyBot v4.15.2

using Microsoft.Bot.Builder;
using Microsoft.Bot.Schema;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Azure;
using System;
using System.Linq;
using System.Net.Http;
using System.Text;
using Azure.AI.TextAnalytics;
using Newtonsoft.Json;
using PunAPI.Contract;

namespace PunchyBot.Bots;

public class PunchyBot : ActivityHandler
{
    private static readonly AzureKeyCredential _credentials = new AzureKeyCredential("699f4214e96f43d58dd5ccf455655b7c");
    private static readonly Uri _endpoint = new Uri("https://luis-parsing.cognitiveservices.azure.com/");
    private static readonly Uri _punRespEndpoint = new Uri("https://punapi.azurewebsites.net/api/PunResp");
    private static HttpClient _client = new HttpClient();

    //Responses to user input
    protected override async Task OnMessageActivityAsync(ITurnContext<IMessageActivity> turnContext, CancellationToken cancellationToken)
    {
        var client = new TextAnalyticsClient(_endpoint, _credentials);
        var replyText = ExtractKeyPhrase(client, turnContext.Activity.Text);

        //Creating the extension to our url
        var extension = GetRequestData(replyText);
        var url = _punRespEndpoint.ToString() + extension;
        
        //get phrase list for keywor
        var keyWords = await RunAsync(url);

        if(keyWords.Count > 0)
        {
            //select random phrase from list
            var random = new Random();
            int numkeyWords = keyWords.Count;
            int ranPhrase = random.Next(0, numkeyWords);
            //send phrase to message window
            await turnContext.SendActivityAsync(MessageFactory.Text(keyWords[ranPhrase].ResponsePhrase), cancellationToken);
        }
        else
        {
            var noPun = "Sorry your message didn't have enough pun-tential. Error 417";
            await turnContext.SendActivityAsync(MessageFactory.Text(noPun), cancellationToken);
        }

    }

    //Welcome message
    protected override async Task OnMembersAddedAsync(IList<ChannelAccount> membersAdded, ITurnContext<IConversationUpdateActivity> turnContext, CancellationToken cancellationToken)
    {
        var welcomeText = "Hello and welcome!";
        foreach (var member in membersAdded)
        {
            if (member.Id != turnContext.Activity.Recipient.Id)
            {
                await turnContext.SendActivityAsync(MessageFactory.Text(welcomeText, welcomeText), cancellationToken);
            }
        }
    }

    // Example method for extracting key phrases from text returns keyphrase collection
    public KeyPhraseCollection ExtractKeyPhrase(TextAnalyticsClient client, string inputPhrase)
    {
        var response = client.ExtractKeyPhrases(inputPhrase).Value;
        return response;
    }

    public String GetRequestData(KeyPhraseCollection inputCollection)
    {
        var extension = string.Join('&', inputCollection.Select(x => $"keyWord={x}"));
        return "?" + extension;
    }

    //Communicate with our api to get a response
    public async Task<List<PunResp>> RunAsync(string requestExtension)
    {
        HttpRequestMessage request = new HttpRequestMessage(HttpMethod.Get, requestExtension);
        HttpResponseMessage response = await _client.SendAsync(request);
        var jsonString = await response.Content.ReadAsStringAsync();
        var punResponse = JsonConvert.DeserializeObject<List<PunResp>>(jsonString);

        return punResponse;
    }
}