using Azure.AI.TextAnalytics;
using Microsoft.AspNetCore.Mvc;
using PunAPI.Contract;
using PunchyAPI.Common.Stemmer;
using PunchyAPI.Common.Text;
using PunchyAPI.Controllers;
using PunchyBot.ServiceAgent;
using System.Collections.Generic;
using System.Threading.Tasks;

// MessageController uses the keywords of the user's input gathers related words to query the DB for puns,
// this includes getting the stem of the words and words that qualify to have a small Levenshtein's distance.

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace PunchyBot.Controllers;

[Route("api/[controller]")]
[ApiController]
public class MessageController : ControllerBase
{
    private LUISServiceAgent luisAgent;
    private PunAPIServiceAgent punAPIAgent;
    private PorterStemmer stemmer;
    private LevenshteinCalculator leven;
    public MessageController()
    {
        this.luisAgent = new LUISServiceAgent();
        this.punAPIAgent = new PunAPIServiceAgent();
        this.stemmer = new PorterStemmer();
        this.leven = new LevenshteinCalculator();
    }

    // GET: api/<MessagesController>
    [HttpGet]
    // Returns a pun related to a random keyword from the user
    public async Task<PunSetupRespDto> Get([FromQuery] string userInput)
    {
        KeyPhraseCollection phrases = await luisAgent.GetMessage(userInput);

        List<string> stemmedKeywords = GetStemmedUserKeyWords(phrases);
        List<string> levenKeywords = await GetLevenshteinKeyWords(stemmedKeywords);

        PunSetupRespDto punResp = await punAPIAgent.GetSetupRespMessage(stemmedKeywords.Union(levenKeywords).ToList());
        return punResp;
    }

    // Returns a combined list the original list of keywords and the stemmed versions
    private List<string> GetStemmedUserKeyWords(KeyPhraseCollection phrases)
    {
        List<String> stemmedWordnPhrases = new List<string>();
        foreach (string phrase in phrases)
        {
            string stemmedWord = stemmer.GetStem(phrase);
            stemmedWordnPhrases.Add(stemmedWord);
        }
        stemmedWordnPhrases.AddRange(phrases);
        return stemmedWordnPhrases;
    }

    // Returns a list of all the keywords in the DB that start with the same letter as each keyword and have a Levenshtein
    // distance of 1 or less
    private async Task<List<string>> GetLevenshteinKeyWords(List<string> keywords)
    {
        List<string> combinedKeywords = new List<string>();
        foreach (string word in keywords)
        {
            List<KeyWord> punKeywords = await punAPIAgent.GetSameFirstLetterKeyWords(word.Length, new List<string> { word[0].ToString() });
            foreach (KeyWord punKeyword in punKeywords)
            {
                if (leven.GetDistance(word, punKeyword.Word) <= 1)
                {
                    combinedKeywords.Add(punKeyword.Word);
                }
            }
        }
        return combinedKeywords;
    }
}
