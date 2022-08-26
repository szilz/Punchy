using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PunchyAPI.Common.Stemmer
{
    public class PorterStemmer
    {
        // Gets the stem of the keyPhrase using the Porter algorithm
        public string GetStem(string keyPhrase)
        {
            if (string.IsNullOrWhiteSpace(keyPhrase))
            {
                return keyPhrase;
            }
            if (keyPhrase.Length > 0)
            {
                keyPhrase = RunStep1(keyPhrase);
                keyPhrase = RunStep2(keyPhrase);
                keyPhrase = RunStep3(keyPhrase);
                keyPhrase = RunStep4(keyPhrase);
                keyPhrase = RunStep5(keyPhrase);
            }
            return keyPhrase;
        }

        // GetMCount counts the number of times a vowel is followed by a consonant in keyPhrase
        public int GetMCount(string keyPhrase)
        {
            int m = 0;
            for (int i = 0; i < keyPhrase.Length - 1; i++)
            {
                if (IsVowel(keyPhrase[i]) && !IsVowel(keyPhrase[i + 1]))
                {
                    m++;
                }
            }
            return m;
        }

        // Returns true if the char is a vowel
        public Boolean IsVowel(char c)
        {
            return (c.Equals('a') || c.Equals('e') || c.Equals('i') || c.Equals('o') || c.Equals('u'));
        }

        // Returns true if the string word has a vowel (accounts for when y is a vowel)
        public Boolean HasVowel(string word)
        {
            for (int i = 0; i < word.Length; i++)
            {
                if (IsVowel(word[i]))
                {
                    return true;
                }
            }
            if (word.Contains('y') && !IsVowel(word[word.IndexOf('y') - 1])) // has a consonant followed by 'y' i.e. syzygy
            {
                return true;
            }
            return false;
        }

        // Removes plurality, and common tenses (i.e. past tense) from keyPhrase
        private string RunStep1(string keyPhrase)
        {
            // Step 1A
            if (keyPhrase.EndsWith("s"))
            {
                if (keyPhrase.EndsWith("sses") || keyPhrase.EndsWith("ies"))
                {
                    keyPhrase = keyPhrase.Chop("es");
                }
                else if (keyPhrase.EndsWith("s") && !keyPhrase.EndsWith("ss") && keyPhrase.Length > 0)
                {
                    keyPhrase = keyPhrase.Chop("s");
                }
            }
            // Step 1B
            int mCount = GetMCount(keyPhrase);
            if (mCount > 0 && keyPhrase.EndsWith("eed"))
            {
                keyPhrase = keyPhrase.Chop("d");
            }
            else if (keyPhrase.EndsWith("ed") && HasVowel(keyPhrase.Chop("ed"))) // checks if ends 'ed' & has another vowel
            {
                keyPhrase = keyPhrase.Chop("ed"); // removes 'ed'
                keyPhrase = appendStep1B(keyPhrase);
            }
            else if (keyPhrase.EndsWith("ing") && HasVowel(keyPhrase.Chop("ing")))
            {
                keyPhrase = keyPhrase.Chop("ing");
                keyPhrase = appendStep1B(keyPhrase);
            }
            // Step 1C
            if (keyPhrase.EndsWith("y") && HasVowel(keyPhrase.Substring(0, keyPhrase.Length - 1))) // vowel in keyPhrase besides 'y'
            {
                keyPhrase = keyPhrase.ReplaceEnd("y", "i");
            }
            return keyPhrase;
        }

        // Adjusts suffixes to root word (i.e. joyfulness -> joyful)
        private string RunStep2(string keyPhrase)
        { // m > 0
            if (keyPhrase.EndsWith("ational") && GetMCount(keyPhrase.Chop("ational")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("ational", "ate");
            }
            else if (keyPhrase.EndsWith("tional") && GetMCount(keyPhrase.Chop("tional")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("tional", "tion");
            } 
            else if (keyPhrase.EndsWith("enci") && GetMCount(keyPhrase.Chop("enci")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("enci", "ence");
            }
            else if (keyPhrase.EndsWith("anci") && GetMCount(keyPhrase.Chop("anci")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("anci", "ance");
            }
            else if (keyPhrase.EndsWith("izer") && GetMCount(keyPhrase.Chop("izer")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("izer", "ize");
            }
            else if (keyPhrase.EndsWith("abli") && GetMCount(keyPhrase.Chop("abli")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("abli", "able");
            }
            else if (keyPhrase.EndsWith("alli") && GetMCount(keyPhrase.Chop("alli")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("alli", "al");
            }
            else if (keyPhrase.EndsWith("entli") && GetMCount(keyPhrase.Chop("entli")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("entli", "ent");
            }
            else if (keyPhrase.EndsWith("eli") && GetMCount(keyPhrase.Chop("eli")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("eli", "e");
            }
            else if (keyPhrase.EndsWith("ousli") && GetMCount(keyPhrase.Chop("ousli")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("ousli", "ous");
            }
            else if (keyPhrase.EndsWith("ization") && GetMCount(keyPhrase.Chop("ization")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("ization", "ize");
            }
            else if (keyPhrase.EndsWith("ation") && GetMCount(keyPhrase.Chop("ation")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("ation", "ate");
            }
            else if (keyPhrase.EndsWith("ator") && GetMCount(keyPhrase.Chop("ator")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("ator", "ate");
            }
            else if (keyPhrase.EndsWith("alism") && GetMCount(keyPhrase.Chop("alism")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("alism", "al");
            }
            else if (keyPhrase.EndsWith("iveness") && GetMCount(keyPhrase.Chop("iveness")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("iveness", "ive");
            }
            else if (keyPhrase.EndsWith("fulness") && GetMCount(keyPhrase.Chop("fulness")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("fulness", "ful");
            }
            else if (keyPhrase.EndsWith("ousness") && GetMCount(keyPhrase.Chop("ousness")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("ousness", "ous");
            }
            else if (keyPhrase.EndsWith("aliti") && GetMCount(keyPhrase.Chop("aliti")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("aliti", "ali");
            }
            else if (keyPhrase.EndsWith("iviti") && GetMCount(keyPhrase.Chop("iviti")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("iviti", "ive");
            }
            else if (keyPhrase.EndsWith("bliti") && GetMCount(keyPhrase.Chop("bliti")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("bliti", "ble");
            }
            return keyPhrase;
        }

        // Replaces multi-layered suffixes with one suffix (i.e. rationalize -> rational)
        private string RunStep3(string keyPhrase)
        { // m > 0
            if (keyPhrase.EndsWith("icate") && GetMCount(keyPhrase.Chop("icate")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("icate", "ic");
            }
            else if (keyPhrase.EndsWith("active") && GetMCount(keyPhrase.Chop("active")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("active", "");
            }
            else if (keyPhrase.EndsWith("alize") && GetMCount(keyPhrase.Chop("alize")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("alize", "al");
            }
            else if (keyPhrase.EndsWith("iciti") && GetMCount(keyPhrase.Chop("iciti")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("iciti", "ic");
            }
            else if (keyPhrase.EndsWith("ical") && GetMCount(keyPhrase.Chop("ical")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("ical", "ic");
            }
            else if (keyPhrase.EndsWith("ful") && GetMCount(keyPhrase.Chop("ful")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("ful", "");
            }
            else if (keyPhrase.EndsWith("ness") && GetMCount(keyPhrase.Chop("ness")) > 0)
            {
                keyPhrase = keyPhrase.ReplaceEnd("ness", "");
            }
            return keyPhrase;
        }

        // Removes suffixes (i.e. 'ent', 'ous')
        private string RunStep4(string keyPhrase)
        { //m > 1
            if (keyPhrase.EndsWith("al") && GetMCount(keyPhrase.Chop("al")) > 1)
            {
                return keyPhrase.Chop("al");
            }
            else if (keyPhrase.EndsWith("ance") && GetMCount(keyPhrase.Chop("ance")) > 1)
            {
                return keyPhrase.Chop("ance");
            }
            else if (keyPhrase.EndsWith("ence") && GetMCount(keyPhrase.Chop("ence")) > 1)
            {
                return keyPhrase.Chop("ence");
            }
            else if (keyPhrase.EndsWith("er") && GetMCount(keyPhrase.Chop("er")) > 1)
            {
                return keyPhrase.Chop("er");
            }
            else if (keyPhrase.EndsWith("ic") && GetMCount(keyPhrase.Chop("ic")) > 1)
            {
                return keyPhrase.Chop("ic");
            }
            else if (keyPhrase.EndsWith("able") && GetMCount(keyPhrase.Chop("able")) > 1)
            {
                return keyPhrase.Chop("able");
            }
            else if (keyPhrase.EndsWith("ible") && GetMCount(keyPhrase.Chop("ible")) > 1)
            {
                return keyPhrase.Chop("ible");
            }
            else if (keyPhrase.EndsWith("ant") && GetMCount(keyPhrase.Chop("ant")) > 1)
            {
                return keyPhrase.Chop("ant");
            }
            else if (keyPhrase.EndsWith("ement") && GetMCount(keyPhrase.Chop("ement")) > 1)
            {
                return keyPhrase.Chop("ement");
            }
            else if (keyPhrase.EndsWith("ment") && GetMCount(keyPhrase.Chop("ment")) > 1)
            {
                return keyPhrase.Chop("ment");
            }
            else if (keyPhrase.EndsWith("ent") && GetMCount(keyPhrase.Chop("ent")) > 1)
            {
                return keyPhrase.Chop("ent");
            }
            else if (keyPhrase.EndsWith("sion") && GetMCount(keyPhrase.Chop("sion")) > 1)
            {
                return keyPhrase.Chop("sion");
            }
            else if (keyPhrase.EndsWith("tion") && GetMCount(keyPhrase.Chop("tion")) > 1)
            {
                return keyPhrase.Chop("tion");
            }
            else if (keyPhrase.EndsWith("ou") && GetMCount(keyPhrase.Chop("ou")) > 1)
            {
                return keyPhrase.Chop("ou");
            }
            else if (keyPhrase.EndsWith("ism") && GetMCount(keyPhrase.Chop("ism")) > 1)
            {
                return keyPhrase.Chop("ism");
            }
            else if (keyPhrase.EndsWith("ate") && GetMCount(keyPhrase.Chop("ate")) > 1)
            {
                return keyPhrase.Chop("ate");
            }
            else if (keyPhrase.EndsWith("iti") && GetMCount(keyPhrase.Chop("iti")) > 1)
            {
                return keyPhrase.Chop("iti");
            }
            else if (keyPhrase.EndsWith("ous") && GetMCount(keyPhrase.Chop("ous")) > 1)
            {
                return keyPhrase.Chop("ous");
            }
            else if (keyPhrase.EndsWith("ive") && GetMCount(keyPhrase.Chop("ive")) > 1)
            {
                return keyPhrase.Chop("ive");
            }
            else if (keyPhrase.EndsWith("ize") && GetMCount(keyPhrase.Chop("ize")) > 1)
            {
                return keyPhrase.Chop("ize");
            } else
            {
                return keyPhrase;
            }
        }
        // Removes remaining 'e' or 'l'
        private string RunStep5(string keyPhrase)
        {
            // Step 5A
            int mCount = GetMCount(keyPhrase);
            if (mCount > 1 && keyPhrase.EndsWith("e"))
            {
                keyPhrase = keyPhrase.Chop("e"); // remove last letter
            }
            else if (mCount == 1 && keyPhrase.EndsWith("e") && !CheckCVC(keyPhrase))
            {
                keyPhrase = keyPhrase.Chop("e"); // remove last letter
            }
            // Step 5B
            if (mCount > 1 && keyPhrase.EndsWith("ll"))
            {
                keyPhrase = keyPhrase.Chop("l"); // remove last letter
            }

            return keyPhrase;
        }

        // Additional edits to keyPhrase should Step 1B be successful
        private string appendStep1B(string keyPhrase)
        {
            if (keyPhrase.EndsWith("at") || keyPhrase.EndsWith("bl") || keyPhrase.EndsWith("iz"))
            {
                keyPhrase = string.Concat(keyPhrase, "e");
            }
            else if (CheckDoubleConsonant(keyPhrase) && !keyPhrase.EndsWith("l") &&
                !keyPhrase.EndsWith("s") && !keyPhrase.EndsWith("z"))
            {
                keyPhrase = keyPhrase.Chop(1); // remove last letter
            }
            else if (GetMCount(keyPhrase) == 1 && CheckCVC(keyPhrase))
            {
                keyPhrase = String.Concat(keyPhrase, "e");
            }
            return keyPhrase;
        }

        // Returns true if the last two letters of keyPhrase are the same
        public Boolean CheckDoubleConsonant(string keyPhrase)
        {
            if (keyPhrase.Length >= 2)
            {
                string lastLetters = keyPhrase.Substring(keyPhrase.Length - 2, 2);
                return (lastLetters[0] == lastLetters[1]);
            }
            else
            {
                return false;
            }
        }

        // Returns true if the last three letters are CVC, and the 2nd C is not W, X, Y
        public Boolean CheckCVC(string keyPhrase)
        {
            if (keyPhrase.Length >= 3)
            {
                string lastThree = keyPhrase.Substring(keyPhrase.Length - 3, 3);
                return (!IsVowel(lastThree[0]) && IsVowel(lastThree[1]) && !IsVowel(lastThree[2]) &&
                    !lastThree[2].Equals('w') && !lastThree[2].Equals('x') && !lastThree[2].Equals('y'));
            }
            return false;
        }
    }
}

