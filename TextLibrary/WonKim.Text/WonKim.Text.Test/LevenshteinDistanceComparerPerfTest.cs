using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;
using System.Diagnostics;

namespace WonKim.Text.Test
{
    [TestClass]
    public class LevenshteinDistanceComparerPerfTest
    {
        [TestMethod]
        public void Compare_Performance_Test()
        {
            int startTicks = 0;
            int endTicks = 0;
            long alg1TickCount = 0;
            long alg2TickCount = 0;
            int dist = 0;
            Stopwatch watch = new Stopwatch();
            IList<string> srcList = new List<string>(
                new string[] { "kitten", "sitten", "gumbo",  "kitten",  "meilenstein" });
            IList<string> tgtList = new List<string>(
                new string[] { "sitten", "sittin", "gambol", "sitting", "levenshtein" });
            string src = null;
            string tgt = null;

            LevenshteinDistanceComparer comparer1 = new LevenshteinDistanceComparer();
            watch.Reset();
            watch.Start();
            for (int i = 0; i < srcList.Count; ++i)
            {
                src = srcList[i];
                tgt = tgtList[i];
                dist = comparer1.Compare(src, tgt);
            }
            watch.Stop();
            alg1TickCount = watch.ElapsedTicks;

            LevenshteinDistanceRecursiveComparer comparer2 = new LevenshteinDistanceRecursiveComparer();
            watch.Reset();
            watch.Start();
            for (int i = 0; i < srcList.Count; ++i)
            {
                src = srcList[i];
                tgt = tgtList[i];
                dist = comparer2.Compare(src, tgt);
            }
            watch.Stop();
            alg2TickCount = watch.ElapsedTicks;

            Console.WriteLine(string.Format("Algorithm1={0}, Algorithm2={1}", alg1TickCount, alg2TickCount));
        }
    }
}
