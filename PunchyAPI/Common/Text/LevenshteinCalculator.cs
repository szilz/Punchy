using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PunchyAPI.Common.Text;

public class LevenshteinCalculator
{
    public LevenshteinCalculator()
    {

    }

    // im still working on this
    public int GetRecursiveLeven(string firstWord, string secondWord, int index, int distance)
    {
        /*if (index >= firstWord.Length)
        {
            return distance + (secondWord.Length - index); // adds remaining letters in secondWord
        }
        if (index >= secondWord.Length)
        {
            return distance + (firstWord.Length - index);
        }*/

        if (firstWord[index] == secondWord[index])
        {
            index++;
            GetRecursiveLeven(firstWord, secondWord, index, distance);
        } 
        else
        {
            // delete, add, replace
            if (firstWord.Length > secondWord.Length)
            {
                firstWord = firstWord.RemoveAtIndex(index);
            }
            else if (secondWord.Length > firstWord.Length)
            {
                secondWord = secondWord.AddAfter(secondWord.Substring(0, index), ""); 
            }
            index++;
            distance++;
            GetRecursiveLeven(firstWord, secondWord, index, distance);
        }
        return 0;
    }

    public int GetDistance(string firstWord, string secondWord)
    {
        // Handling null cases
        if (string.IsNullOrEmpty(firstWord) && string.IsNullOrEmpty(secondWord))
        {
            return -1;
        }
        else if (string.IsNullOrEmpty(firstWord))
        {
            return secondWord.Length;
        }
        else if (string.IsNullOrEmpty(secondWord))
        {
            return firstWord.Length;
        }

        // Levenshtein's algorithm
        if (firstWord.Length == 0)
        {
            return secondWord.Length;
        }
        else if (secondWord.Length == 0)
        {
            return firstWord.Length;
        }
        else if (firstWord.Equals(secondWord))
        {
            return 0;
        }
        else
        {
            firstWord = String.Concat(" ", firstWord);
            secondWord = String.Concat(" ", secondWord);

            var diff = 0;
            int[,] matrix = new int[firstWord.Length, secondWord.Length];

            //  Populates matrix with letter indexes of firstword in first row,
            // and letter indexes of secondword in first column
            for (int i = 0; i < firstWord.Length; i++)
            {
                matrix[i, 0] = i;
            }
            for (int j = 0; j < secondWord.Length; j++)
            {
                matrix[0, j] = j;
            }

            // Compare each letter in secondword to each letter in firstword, if the letters are NOT equal, the cost of the
            // substitution/deletion/addition is 1. Populates rest of matrix with distance. 
            for (int j = 1; j < secondWord.Length; j++)
            {
                for (int i = 1; i < firstWord.Length; i++)
                {
                    int cost;
                    if (firstWord[i] == secondWord[j])
                    {
                        cost = 0;
                    }
                    else
                    {
                        cost = 1;
                    }
                    matrix[i, j] = Math.Min(matrix[i - 1, j] + 1, Math.Min(matrix[i, j - 1] + 1, matrix[i - 1, j - 1] + cost));
                }
            }
            return matrix[firstWord.Length - 1, secondWord.Length - 1];
        }
    }
}
