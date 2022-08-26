using System;
using System.Collections.Generic;

namespace WonKim.Text
{
    /// <summary>
    /// Implements the Levenshtein distance (aka edit distance) algorithm recursively.
    /// </summary>
    /// <remarks>
    /// https://en.wikipedia.org/wiki/Levenshtein_distance#Computing_Levenshtein_distance
    /// https://xlinux.nist.gov/dads/HTML/Levenshtein.html
    /// http://people.cs.pitt.edu/~kirk/cs1501/Pruhs/Spring2006/assignments/editdistance/Levenshtein%20Distance.htm
    /// </remarks>
    public class LevenshteinDistanceRecursiveComparer : IComparer<string>
    {
        /// <summary>
        /// Returns the case sensitive Levenshtein distance between x (source string) and y (target string).
        /// </summary>
        /// <param name="x"></param>
        /// <param name="y"></param>
        /// <returns></returns>
        public virtual int Compare(string x, string y)
        {
            int dist = Compare(x, y, false);
            return dist;
        }

        /// <summary>
        /// Recursively calculates the cost of the edit matrix at position xi, yi for string x, y.
        /// </summary>
        /// <param name="x"></param>
        /// <param name="y"></param>
        /// <param name="xi"></param>
        /// <param name="yi"></param>
        /// <returns></returns>
        protected virtual int CalcCost(string x, string y, int xi, int yi)
        {
            int cost = 0;
            int aboveCost = 0;
            int leftCost = 0;
            int aboveLeftCost = 0;

            if (xi == 0 && yi == 0) return 0;
            else if (xi == 0) return yi;
            else if (yi == 0) return xi;
            // NOTE: Edit matrix is offset by 1, therefore, subtract 1 from
            //      xi and yi to use these variables to access
            //      characters in string x and y, respectively.
            // If s[i] equals t[j], the cost is 0.
            // If s[i] doesn't equal t[j], the cost is 1.
            cost = x[xi - 1] == y[yi - 1] ? 0 : 1;
            // Set cell d[i,j] of the matrix equal to the minimum of:
            // a. The cell immediately above plus 1: d[i-1,j] + 1.
            aboveCost = CalcCost(x, y, xi - 1, yi) + 1;
            // b. The cell immediately to the left plus 1: d[i,j-1] + 1.
            leftCost = CalcCost(x, y, xi, yi - 1) + 1;
            // c. The cell diagonally above and to the left plus the cost: d[i-1,j-1] + cost.
            aboveLeftCost = CalcCost(x, y, xi - 1, yi - 1) + cost;
            cost = Math.Min(Math.Min(aboveCost, leftCost), aboveLeftCost);
            return cost;
        }

        /// <summary>
        /// Returns the Levenshtein distance between x (source string) and y (target string).
        /// </summary>
        /// <param name="x"></param>
        /// <param name="y"></param>
        /// <param name="ignoreCase"></param>
        /// <returns></returns>
        public virtual int Compare(string x, string y, bool ignoreCase)
        {
            // If both x and y are null or empty string ("") then return 0.
            //      There is no difference between the strings.
            if (string.IsNullOrEmpty(x) && string.IsNullOrEmpty(y)) return 0;
            // If x is null or empty string (""), then return the length of y.
            if (string.IsNullOrEmpty(x)) return y.Length;
            // If y is null or empty string (""), then return the length of x.
            if (string.IsNullOrEmpty(y)) return x.Length;
            if (ignoreCase)
            {
                x = x.ToLowerInvariant();
                y = y.ToLowerInvariant();
            }
            int editDist = 0;
            editDist = CalcCost(x, y, x.Length, y.Length);
            return editDist;
        }
    }
}
