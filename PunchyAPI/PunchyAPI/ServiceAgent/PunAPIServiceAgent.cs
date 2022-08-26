using Azure.AI.TextAnalytics;
using Newtonsoft.Json;
using PunAPI.Contract;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Threading.Tasks;
using PunAPI;
using System.Text;

namespace PunchyBot.ServiceAgent;

public class PunAPIServiceAgent
{
    private static readonly Uri _punRespEndpoint = new Uri("https://punapi.azurewebsites.net/api/PunResp");
    private static readonly Uri _punSetupRespEndpoint = new Uri("https://punapi.azurewebsites.net/api/PunSetupResp");
    private static readonly Uri _punSetupEndpoint = new Uri("https://punapi.azurewebsites.net/api/PunSetup");
    private static readonly Uri _conversationEndpoint = new Uri("https://punapi.azurewebsites.net/api/Conversation");
    private static readonly Uri _reactionTypeEndpoint = new Uri("https://punapi.azurewebsites.net/api/ReactionType");
    private static readonly Uri _reactionEndpoint = new Uri("https://punapi.azurewebsites.net/api/Reaction");
    private static readonly Uri _punSubmitEndpoint = new Uri("https://punapi.azurewebsites.net/api/PunSetupRespSubmit");
    private static readonly Uri _submitTypeEndpoint = new Uri("https://punapi.azurewebsites.net/api/SubmitType");
    private static readonly Uri _approvalTypeEndpoint = new Uri("https://punapi.azurewebsites.net/api/ApprovalType");
    private static readonly Uri _punSubmitApprovalEndpoint = new Uri("https://punapi.azurewebsites.net/api/PunSetupRespSubmitApproval");
    private static readonly Uri _keywordEndpoint = new Uri("https://punapi.azurewebsites.net/api/KeyWord");
    private static HttpClient _client = new HttpClient();

    public async Task<PunSetupRespDto> GetSetupRespMessage(List<String> phrases)
    {
        var extension = GetSetupRespRequestData(phrases);
        var url = _punSetupRespEndpoint.ToString() + extension;
        var punSetupResp = await RunSetupRespAsync(url);
        
        if (!punSetupResp.Any())
        {
            var punResp = await GetRespMessage(phrases);
            var response = new PunSetupRespDto
            {
                ResponsePhrase = punResp.ResponsePhrase,
                SetupPhrase = null
            };
            return response;
        }
        else
        {
            // get random pun setup & response
            var random = new Random();
            int numkeyWords = punSetupResp.Count;
            int randomSetupResp = random.Next(0, numkeyWords);
            
            var urlResp = _punRespEndpoint.ToString() + "/" + punSetupResp[randomSetupResp].PunResponseID.ToString();
            var punResp = await RunAsync(urlResp);
            var urlSetup = _punSetupEndpoint.ToString() + "/" + punSetupResp[randomSetupResp].PunSetupID.ToString();
            var punSetup = await RunSetupAsync(urlSetup);
            var response = new PunSetupRespDto
            {
                ResponsePhrase = punResp.FirstOrDefault()?.ResponsePhrase,
                SetupPhrase = punSetup.FirstOrDefault()?.SetupPhrase
            };
            return response;
        }
    }

    public async Task<PunResp> GetRespMessage(List<String> phrases)
    {
        var extension = GetRequestData(phrases);
        var url = _punRespEndpoint.ToString() + extension;

        var punResp = await RunAsync(url);
        if(punResp.Count == 0)
        {
            var punSetupResponseError = new PunResp();
            punSetupResponseError.ResponsePhrase = "Sorry your message didn’t have enough pun-tential. Error 417";
            return punSetupResponseError;
        }
        else
        {
            var random = new Random();
            int randIndex = random.Next(0, punResp.Count);
            return punResp[randIndex];
        }
    }

    public async Task<List<KeyWord>> GetSameFirstLetterKeyWords(int stringLength, List<string> firstLetters)
    {
        var extension = GetKeywordRequestData(stringLength, firstLetters);
        var request = new HttpRequestMessage(HttpMethod.Get, _keywordEndpoint + extension);
        var response = await _client.SendAsync(request);
        var jsonString = await response.Content.ReadAsStringAsync();
        var keywords = JsonConvert.DeserializeObject<List<KeyWord>>(jsonString);
        return keywords;
    }

    public async Task<List<ReactionType>> getReactionTypes()
    {
        var request = new HttpRequestMessage(HttpMethod.Get, _reactionTypeEndpoint);
        var response = await _client.SendAsync(request);
        var jsonString = await response.Content.ReadAsStringAsync();
        var ReactResp = JsonConvert.DeserializeObject<List<ReactionType>>(jsonString);
        return ReactResp;
    }

    public async Task<List<SubmitType>> getSubmitTypes()
    {
        var request = new HttpRequestMessage(HttpMethod.Get, _submitTypeEndpoint);
        var response = await _client.SendAsync(request);
        var jsonString = await response.Content.ReadAsStringAsync();
        var submitTypes = JsonConvert.DeserializeObject<List<SubmitType>>(jsonString);
        return submitTypes;
    }
    public async Task<List<ApprovalType>> getApprovalType()
    {
        var request = new HttpRequestMessage(HttpMethod.Get, _approvalTypeEndpoint);
        var response = await _client.SendAsync(request);
        var jsonString = await response.Content.ReadAsStringAsync();
        var approvalTypes = JsonConvert.DeserializeObject<List<ApprovalType>>(jsonString);
        return approvalTypes;
    }

    private async Task<List<PunResp>> RunAsync(string requestExtension)
    {
        var request = new HttpRequestMessage(HttpMethod.Get, requestExtension);
        var response = await _client.SendAsync(request);
        var jsonString = await response.Content.ReadAsStringAsync();
        var punResponse = JsonConvert.DeserializeObject<List<PunResp>>(jsonString);
        return punResponse;
    }

    private async Task<List<PunSetup>> RunSetupAsync(string requestExtension)
    {
        var request = new HttpRequestMessage(HttpMethod.Get, requestExtension);
        var response = await _client.SendAsync(request);
        var jsonString = await response.Content.ReadAsStringAsync();
        var punSetup = JsonConvert.DeserializeObject<List<PunSetup>>(jsonString);
        return punSetup;
    }

    private async Task<List<PunSetupResp>> RunSetupRespAsync(string requestExtension)
    {
        var request = new HttpRequestMessage(HttpMethod.Get, requestExtension);
        var response = await _client.SendAsync(request);
        var jsonString = await response.Content.ReadAsStringAsync();
        var punSetupResponse = JsonConvert.DeserializeObject<List<PunSetupResp>>(jsonString);
        return punSetupResponse;
    }

    private String GetKeywordRequestData(int stringLength, List<string> startsWith)
    {
        var extension = "stringLength=" + stringLength + "&" + string.Join('&', startsWith.Select(x => $"startsWith={x}"));
        return "?" + extension;
    }

    private String GetRequestData(List<String> inputCollection)
    {
        var extension = string.Join('&', inputCollection.Select(x => $"keyWord={x}"));
        return "?" + extension;
    }

    private String GetSetupRespRequestData(List<String> inputCollection)
    {
        var extension = string.Join('&', inputCollection.Select(x => $"KeyWord={x}"));
        return "?setup" + extension + "&response" + extension;
    }

    public async Task<ConversationResponse> PostConversation(ConversationRequest? conv)
    {
        HttpContent content = new StringContent(JsonConvert.SerializeObject(conv), Encoding.UTF8, "application/json");
        var response = await _client.PostAsync(_conversationEndpoint, content);
        var jsonString = await response.Content.ReadAsStringAsync();
        var convResponse = JsonConvert.DeserializeObject<ConversationResponse>(jsonString);
        //Check convResponse, throw exception if null, else continue
        return convResponse;
    }
    public async Task<ReactionResponse> PostReaction(ReactionRequest? react)
    {
        var response = await _client.PostAsync(_reactionEndpoint, new StringContent(JsonConvert.SerializeObject(react)));
        var jsonString = await response.Content.ReadAsStringAsync();
        var reactResponse = JsonConvert.DeserializeObject<ReactionResponse>(jsonString);
        //Check convResponse, throw exception if null, else continue
        return reactResponse;
    }

    public async Task PostPunSetupRespSubmit(PunSetupRespSubmitRequest? request)
    {
        HttpContent content = new StringContent(JsonConvert.SerializeObject(request), Encoding.UTF8, "application/json");
        await _client.PostAsync(_punSubmitEndpoint, content);
    }

    public async Task PostPunSetupRespSubmitApproval(PunSetupRespSubmitApproval request)
    {
        HttpContent content = new StringContent(JsonConvert.SerializeObject(request), Encoding.UTF8, "application/json");
        await _client.PostAsync(_punSubmitApprovalEndpoint, content);
    }

    public async Task<List<PunSetupRespSubmitDto>> GetPunSetupRespSubmit()
    {
        var request = new HttpRequestMessage(HttpMethod.Get, _punSubmitEndpoint);
        var response = await _client.SendAsync(request);
        var jsonString = await response.Content.ReadAsStringAsync();
        var respSubmit = JsonConvert.DeserializeObject<List<PunSetupRespSubmitDto>>(jsonString);
        return respSubmit;
    }
}
