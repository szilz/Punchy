using PunchyAPI.Common.Stemmer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PunchyAPI.Common.Test.Stemmer;

[TestClass]
public class ZilzStemmerTest
{
    private ZilzStemmer stemmer = new ZilzStemmer();

    // Sarah's stemmer tests
    [TestMethod]
    public void TestStemES()
    {
        var result = stemmer.GetStem("dresses");
        Assert.AreEqual("dress", result);
        var result2 = stemmer.GetStem("guesses");
        Assert.AreEqual("guess", result2);
    }

    [TestMethod]
    public void TestStemS()
    {
        var result = stemmer.GetStem("cats");
        Assert.AreEqual("cat", result);
        var result2 = stemmer.GetStem("trees");
        Assert.AreEqual("tree", result2);
    }

    [TestMethod]
    public void TestStemED()
    {
        var result = stemmer.GetStem("jumped");
        Assert.AreEqual("jump", result);
        var result2 = stemmer.GetStem("red");
        Assert.AreEqual("red", result2);
        var result3 = stemmer.GetStem("toed");
        Assert.AreEqual("toe", result3);
    }
}
