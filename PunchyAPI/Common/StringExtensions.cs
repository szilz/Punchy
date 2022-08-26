namespace PunchyAPI.Common;

public static class StringExtensions
{
    // Chops off the remove string from the end of the keyPhrase
    public static string Chop(this string keyPhrase, string removeString)
    {
        if (string.IsNullOrWhiteSpace(keyPhrase) || string.IsNullOrWhiteSpace(removeString) || !keyPhrase.EndsWith(removeString))
        {
            return keyPhrase;
        }
        return keyPhrase.Substring(0, keyPhrase.Length - removeString.Length);
    }

    // Replaces the removeString at the end of keyPhrase with a new replaceString
    public static string ReplaceEnd(this string keyPhrase, string removeString, string replaceString)
    {
        if (string.IsNullOrWhiteSpace(keyPhrase) || string.IsNullOrWhiteSpace(removeString) || string.IsNullOrWhiteSpace(replaceString) || !keyPhrase.EndsWith(removeString))
        {
            return keyPhrase;
        }
        keyPhrase = keyPhrase.Chop(removeString);
        return string.Concat(keyPhrase, replaceString);
    }

    // Chops off the given number of characters at the end of a keyPhrase 
    public static string Chop(this string keyPhrase, int numChars)
    {
        if (string.IsNullOrWhiteSpace(keyPhrase) || numChars > keyPhrase.Length || numChars < 1)
        {
            return keyPhrase;
        }
        return keyPhrase.Substring(0, keyPhrase.Length - numChars);
    }

    public static string RemoveAtIndex(this string word, int index)
    {
        string firstHalf = word.Substring(0, word.Length - (index + 1));
        string secondHalf = word.Substring(word.Length - index);
        return firstHalf + secondHalf;
    }

    public static string AddAfter(this string word, string firstPart, string addString)
    {
        string secondPart = word.Substring(firstPart.Length);
        return firstPart + addString + secondPart;
    }

    // i.e. 'cat' indicies = 0c1a2t3
    public static string AddAtIndex(this string word, int index, string addString) //cat
    {
        string firstPart = word.Substring(0, index);
        string secondPart = word.Substring(index);
        return firstPart + addString + secondPart;
    }
}
