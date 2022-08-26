using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PunchyAPI.Common.Stemmer;

public class ZilzStemmer
{
    public string GetStem(string keyPhrase) // assuming keyPhrase = one word
    {
        int indexLength = 0;
        if (keyPhrase.Length > 0)
        {
            indexLength = keyPhrase.Length - 1; // 'berry' indexLength = 4, 'berry'.length = 5
        }
        // Checking plurality
        // Any noun ending in -s, -x, -z, -ch, -sh takes -es at the end when it is plural.
        if (keyPhrase.Substring(indexLength - 1).Equals("es"))
        {
            string tempWord = keyPhrase.Substring(0, keyPhrase.Length - 2);
            if (tempWord.EndsWith("s") || tempWord.EndsWith("x") || tempWord.EndsWith("z") ||
                tempWord.EndsWith("ch") || tempWord.EndsWith("sh"))
            {
                return tempWord;
            }
        }
        if (keyPhrase.EndsWith("s") && !keyPhrase.EndsWith("ss"))
        {
            return keyPhrase.Substring(0, keyPhrase.Length - 1);
        }

        // Checking tenses
        if (keyPhrase.EndsWith("ing"))
        {
            return keyPhrase.Substring(0, keyPhrase.Length - 3);
        }
        if (keyPhrase.EndsWith("ed") && keyPhrase.Length > 3)
        {
            string trialWord = keyPhrase.Substring(0, keyPhrase.Length - 2);
            if (trialWord.Length <= 2)
            {
                return keyPhrase.Substring(0, keyPhrase.Length - 1);
            }
            else
            {
                return trialWord;
            }
        }
        return keyPhrase;
    }
}
