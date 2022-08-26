using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace WonKim.Text.Test
{
    [TestClass]
    public class LevenshteinDistanceComparerTest
    {
        /// <summary>
        /// https://en.wikipedia.org/wiki/Levenshtein_distance#Computing_Levenshtein_distance
        /// </summary>
        [TestMethod]
        public void Compare_Distance1_Beginning_Test()
        {
            string src = "kitten";
            string tgt = "sitten";
            LevenshteinDistanceComparer comparer = new LevenshteinDistanceComparer();
            int dist = comparer.Compare(src, tgt);
            Assert.AreEqual(1, dist);
        }

        /// <summary>
        /// https://en.wikipedia.org/wiki/Levenshtein_distance#Computing_Levenshtein_distance
        /// </summary>
        [TestMethod]
        public void Compare_Distance1_Middle_Test()
        {
            string src = "sitten";
            string tgt = "sittin";
            LevenshteinDistanceComparer comparer = new LevenshteinDistanceComparer();
            int dist = comparer.Compare(src, tgt);
            Assert.AreEqual(1, dist);
        }

        /// <summary>
        /// http://people.cs.pitt.edu/~kirk/cs1501/Pruhs/Spring2006/assignments/editdistance/Levenshtein%20Distance.htm
        /// </summary>
        [TestMethod]
        public void Compare_Distance2_Test()
        {
            string src = "gumbo";
            string tgt = "gambol";
            LevenshteinDistanceComparer comparer = new LevenshteinDistanceComparer();
            int dist = comparer.Compare(src, tgt);
            Assert.AreEqual(2, dist);
        }

        /// <summary>
        /// https://en.wikipedia.org/wiki/Levenshtein_distance#Computing_Levenshtein_distance
        /// </summary>
        [TestMethod]
        public void Compare_Distance3_Test()
        {
            string src = "kitten";
            string tgt = "sitting";
            LevenshteinDistanceComparer comparer = new LevenshteinDistanceComparer();
            int dist = comparer.Compare(src, tgt);
            Assert.AreEqual(3, dist);
        }

        /// <summary>
        /// http://levenshtein.net/
        /// </summary>
        [TestMethod]
        public void Compare_Distance4_Test()
        {
            string src = "meilenstein";
            string tgt = "levenshtein";
            LevenshteinDistanceComparer comparer = new LevenshteinDistanceComparer();
            int dist = comparer.Compare(src, tgt);
            Assert.AreEqual(4, dist);
        }

        /// <summary>
        /// http://levenshtein.net/
        /// </summary>
        [TestMethod]
        public void Compare_Distance4_CaseInsensitive_Test()
        {
            string src = "Meilenstein";
            string tgt = "LEVENSHTEIN";
            LevenshteinDistanceComparer comparer = new LevenshteinDistanceComparer();
            int dist = comparer.Compare(src, tgt, true);
            Assert.AreEqual(4, dist);
        }
    }
}
