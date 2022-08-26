using Azure;
using Azure.AI.TextAnalytics;
using System;
using System.Threading.Tasks;

namespace PunchyBot.ServiceAgent;

public class LUISServiceAgent
{
    private static readonly AzureKeyCredential _credentials = new AzureKeyCredential("699f4214e96f43d58dd5ccf455655b7c");
    private static readonly Uri _endpoint = new Uri("https://luis-parsing.cognitiveservices.azure.com/");
    private TextAnalyticsClient _client;

    public LUISServiceAgent()
    {
        this._client = new TextAnalyticsClient(_endpoint, _credentials);
    }
    public async Task<KeyPhraseCollection> GetMessage(string userInput)
    {
        var replyText = ExtractKeyPhrase(_client, userInput);
        return replyText;
    }

    private KeyPhraseCollection ExtractKeyPhrase(TextAnalyticsClient client, string inputPhrase)
    {
        var response = client.ExtractKeyPhrases(inputPhrase).Value;
        return response;
    }
}
