using PunchyAPI.Common.Text;
using PunchyAPI.Controllers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PunchyAPI.Test;

[TestClass]
public class LevenshteinTest
{
    private LevenshteinCalculator leven = new LevenshteinCalculator();

    [TestMethod]
    public void LevenDifferenceTest()
    {
        var diff = leven.Get("kitten", "sitting");
        Assert.AreEqual(3, diff);
        var diff2 = leven.Get("Saturday", "Sunday");
        Assert.AreEqual(3, diff2);
        var diff3= leven.Get("Sunday", "Saturday");
        Assert.AreEqual(3, diff3);
        var diff4 = leven.Get("kittens", "mittens");
        Assert.AreEqual(1, diff4);
        var diff5 = leven.Get("fox", "teacup");
        Assert.AreEqual(6, diff5);
        var diff6 = leven.Get("bear", "multidimension");
        Assert.AreEqual(13, diff6);
    }

    [TestMethod]
    public void LevenEdgeCaseTest()
    {
        var empty = leven.Get("", "Alpha");
        Assert.AreEqual(5, empty);
        var emptyDiff = leven.Get("", "");
        Assert.AreEqual(-1, emptyDiff);
        var same = leven.Get("donut", "donut");
        Assert.AreEqual(0, same);
        string? nil = null;
        Assert.AreEqual(5, leven.Get(nil, "panda"));
        Assert.AreEqual(-1, leven.Get(nil, nil));
    }
}
