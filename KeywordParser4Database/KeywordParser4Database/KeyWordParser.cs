// See https://aka.ms/new-console-template for more information

using System.Data;
using System.Data.SqlClient;
using Azure;
using Azure.AI.TextAnalytics;
using Dapper;
using PunAPI;
using PunAPI.Contract;
using PunchyAPI.Common.Stemmer;
using PunchyAPI.Common.Text;

using IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");

AzureKeyCredential _credentials = new AzureKeyCredential("699f4214e96f43d58dd5ccf455655b7c");
Uri _endpoint = new Uri("https://luis-parsing.cognitiveservices.azure.com/");
var client = new TextAnalyticsClient(_endpoint, _credentials);

List<PunResp> responses = GetPunResp();
PorterStemmer stemmer = new PorterStemmer();

int count = 0;
foreach (var punResp in responses)
{
    var keyPhrases = ExtractKeyPhrase(client, punResp.ResponsePhrase);

    // check if LUIS does not find keywords
    if (keyPhrases.Count == 0)
    {
        Console.WriteLine("NO KEYWORD");
    }
    foreach (var keyPhrase in keyPhrases)
    {
        // break up keywords by individual words
        string[] words;
       
        // split by space
        words = keyPhrase.Split(' ');
        
        // print out single key words that are greater than one char
        foreach (var word in words)
        {
            var editWord = word.Replace("-", "");
            var finalWord = editWord.Replace("_", "");
            if (finalWord.Length > 1)
            {
                // Get stem of the keyword
                var stemmedWord = stemmer.GetStem(finalWord);
                // If stemmed word is different from the original word, add to DB w/ mapping to pun
                if (!stemmedWord.Equals(finalWord))
                {
                    await MapKeyWordToPunResp(stemmedWord, punResp);
                }
                await MapKeyWordToPunResp(finalWord, punResp);
            }
        }
    }
    count++;
}

async Task MapKeyWordToPunResp(string finalWord, PunResp punResp) {
    // Add the pun response to the KeyWord Table with its keywords
    int inputCount = (int)await conn.ExecuteScalarAsync(@"select count(*) from KeyWord where Word = @finalWord", new { finalWord });
    if (inputCount > 0)
    {
        Console.WriteLine($"Skip: {finalWord}");
    }
    else
    {
        await conn.ExecuteAsync(@"insert into KeyWord(Word) values (@finalWord)", new { finalWord });
        Console.WriteLine(finalWord);
    }

    // get the keywordID again
    var keyWordID = await conn.ExecuteScalarAsync(@"select KeyWordID from KeyWord where Word = @finalWord", new { finalWord });
    // first check if keyword ID and punresponseID are already mapped
    int checkMapping = (int)await conn.ExecuteScalarAsync(@"select count(*) from PunResponseKeyWord where KeyWordID = @keywordID and PunResponseID = @punRespID", new { keyWordID, punRespID = punResp.PunResponseId });
    if (checkMapping > 0)
    {
        Console.WriteLine($"Skip: {punResp.ResponsePhrase} and {finalWord}");
    }
    else
    {
        // insert into the PunResponseKeyWord table
        await conn.ExecuteAsync(@"insert into PunResponseKeyWord(KeyWordID, PunResponseID) values (@keyWordID, @punRespID)", new { keyWordID, punRespID = punResp.PunResponseId });
        Console.WriteLine($"Inserted {punResp.ResponsePhrase} and {finalWord}");
    }
}

// SETUP SECTION
List<PunSetup> setup = GetPunSetup();

int countSetup = 0;
foreach (var punSetup in setup)
{
    var replyText = ExtractKeyPhrase(client, punSetup.SetupPhrase);
    // check if LUIS does not find keywords
    if (replyText.Count == 0)
    {
        Console.WriteLine("NO KEYWORD");
    }
    foreach (var keyPhrase in replyText)
    {
        // break up keywords by individual words
        string[] words;

        // split by space
        words = keyPhrase.Split(' ');

        // print out single key words that are greater than one char
        foreach (var word in words)
        {
            var editWord = word.Replace("-", "");
            var finalWord = editWord.Replace("_", "");
            if (finalWord.Length > 1)
            {
                // Get stem of the keyword
                var stemmedWord = stemmer.GetStem(finalWord);
                // If stemmed word is different from the original word, add to DB w/ mapping to pun setup
                if (!stemmedWord.Equals(finalWord))
                {
                    await MapKeyWordToPunSetup(stemmedWord, punSetup);
                }
                await MapKeyWordToPunSetup(finalWord, punSetup);
            }
        }
    }
    count++;
}

async Task MapKeyWordToPunSetup(string finalWord, PunSetup punSetup)
{
    // Add the pun response to the KeyWord Table with its keywords
    int inputCount = (int)await conn.ExecuteScalarAsync(@"select count(*) from KeyWord where Word = @finalWord", new { finalWord });
    if (inputCount > 0)
    {
        Console.WriteLine($"Skip: {finalWord}");
    }
    else
    {
        await conn.ExecuteAsync(@"insert into KeyWord(Word) values (@finalWord)", new { finalWord });
        Console.WriteLine(finalWord);
    }

    // get the keywordID again
    var keyWordID = await conn.ExecuteScalarAsync(@"select KeyWordID from KeyWord where Word = @finalWord", new { finalWord });
    // first check if keyword ID and punresponseID are already mapped
    int checkMapping = (int)await conn.ExecuteScalarAsync(@"select count(*) from PunSetupKeyWord where KeyWordID = @keywordID and PunSetupID = @punSetupID", new { keyWordID, punSetupID = punSetup.PunSetupID });
    if (checkMapping > 0)
    {
        Console.WriteLine($"Skip: {punSetup.SetupPhrase} and {finalWord}");
    }
    else
    {
        // insert into the PunResponseKeyWord table
        await conn.ExecuteAsync(@"insert into PunSetupKeyWord(KeyWordID, PunSetupID) values (@keyWordID, @punSetupID)", new { keyWordID, punSetupID = punSetup.PunSetupID });
        Console.WriteLine($"Inserted {punSetup.SetupPhrase} and {finalWord}");
    }
}

// Example method for extracting key phrases from text returns keyphrase collection
KeyPhraseCollection ExtractKeyPhrase(TextAnalyticsClient client, string inputPhrase)
{
    var response = client.ExtractKeyPhrases(inputPhrase).Value;
    return response;
}

List<PunSetup> GetPunSetup()
{
    // retrieves pun response
    using IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");
    var punData = conn.Query<PunSetup>("select * from PunSetup");
    return punData.ToList();
}

List<PunResp> GetPunResp()
{
    // retrieves pun response
    using IDbConnection conn = new SqlConnection("Server=puns.database.windows.net;User=AdminUser;Password=D@t@b453;Database=Dadabase;");
    var punData = conn.Query<PunResp>("select * from PunResp");
    return punData.ToList();
}



