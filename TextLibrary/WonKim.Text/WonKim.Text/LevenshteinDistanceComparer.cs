//-------------------------------------------------------------------------------
// Created by: [won.kim]
// Created on: [12/5/2015]
//
// The use, disclosure, reproduction, modification, transfer, or
// transmittal of this work for any purpose in any form or by
// any means without the written permission of Won Kim
// is strictly prohibited.
//
// Confidential, Unpublished Property of Won Kim.
// Use and Distribution Limited Solely to Authorized Personnel.
//
// © Copyright 2015 Won Kim
// All Rights Reserved
//
// Description: 
// 	
//
//-------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

namespace WonKim.Text
{
    /// <summary>
    /// Implements the most the simplistic implementation of the Levenshtein distance (aka edit distance)
    /// algorithm using a two dimensional array to determine the Levenshtein distance.
    /// </summary>
    /// <remarks>
    /// https://en.wikipedia.org/wiki/Levenshtein_distance#Computing_Levenshtein_distance
    /// https://xlinux.nist.gov/dads/HTML/Levenshtein.html
    /// http://people.cs.pitt.edu/~kirk/cs1501/Pruhs/Spring2006/assignments/editdistance/Levenshtein%20Distance.htm
    /// </remarks>
    public class LevenshteinDistanceComparer : IComparer<string>
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
            // Declare Levenshtein distance (edit distance) matrix.
            int xLen = x.Length + 1;
            int yLen = y.Length + 1;
            int[,] editDistMatrix = new int[xLen, yLen];
            int cost = 0;
            int aboveCost = 0;
            int leftCost = 0;
            int aboveLeftCost = 0;
            for (int xi = 0; xi < xLen; ++xi)
            {
                for (int yi = 0; yi < yLen; ++yi)
                {
                    cost = 0;
                    // Set [0, 0] = 0.
                    if (xi == 0 && yi == 0)
                    {
                        editDistMatrix[0, 0] = cost;
                    }
                    // Set rows in column 0 = yi.
                    else if (xi == 0)
                    {
                        editDistMatrix[xi, yi] = yi;
                    }
                    // Set columns in row 0 = xi.
                    else if (yi == 0)
                    {
                        editDistMatrix[xi, yi] = xi;
                    }
                    else
                    {
                        // NOTE: Edit matrix is offset by 1, therefore, subtract 1 from
                        //      xi and yi to use these variables to access
                        //      characters in string x and y, respectively.
                        // If s[i] equals t[j], the cost is 0.
                        // If s[i] doesn't equal t[j], the cost is 1.
                        cost = x[xi - 1] == y[yi - 1] ? 0 : 1;
                        // Set cell d[i,j] of the matrix equal to the minimum of:
                        aboveCost = 0;
                        leftCost = 0;
                        aboveLeftCost = 0;
                        // a. The cell immediately above plus 1: d[i-1,j] + 1.
                        if (xi > 0) aboveCost = editDistMatrix[xi - 1, yi] + 1;
                        // b. The cell immediately to the left plus 1: d[i,j-1] + 1.
                        if (yi > 0) leftCost = editDistMatrix[xi, yi - 1] + 1;
                        // c. The cell diagonally above and to the left plus the cost: d[i-1,j-1] + cost.
                        if (xi > 0 && yi > 0) aboveLeftCost = editDistMatrix[xi - 1, yi - 1] + cost;
                        editDistMatrix[xi, yi] = Math.Min(Math.Min(aboveCost, leftCost), aboveLeftCost);
                    }
                }
            }
            // The distance is found in cell d[n,m]. 
            return editDistMatrix[x.Length, y.Length];
        }
    } 
}
