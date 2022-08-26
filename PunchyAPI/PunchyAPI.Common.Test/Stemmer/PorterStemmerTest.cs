using PunchyAPI.Common.Stemmer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PunchyAPI.Common.Test.Stemmer;

[TestClass]
public class PorterStemmerTest
{
    private PorterStemmer stemmer = new PorterStemmer();

    [TestMethod]
    public void TestPorterStemED()
    {
        var result = stemmer.GetStem("jumped");
        Assert.AreEqual("jump", result);
        var result2 = stemmer.GetStem("red");
        Assert.AreEqual("red", result2);
        var result3 = stemmer.GetStem("toed");
        Assert.AreEqual("to", result3);
        var result4 = stemmer.GetStem("dyed");
        Assert.AreEqual("dy", result4);
        var result5 = stemmer.GetStem("yelled");
        Assert.AreEqual("yell", result5);
        var result6 = stemmer.GetStem("agreed");
        Assert.AreEqual("agre", result6);
    }

    [TestMethod]
    public void TestPorterStemS()
    {
        var result = stemmer.GetStem("cats");
        Assert.AreEqual("cat", result);
        var result2 = stemmer.GetStem("tigers");
        Assert.AreEqual("tiger", result2);
        var result3 = stemmer.GetStem("penguins");
        Assert.AreEqual("penguin", result3);
        var result4 = stemmer.GetStem("lions");
        Assert.AreEqual("lion", result4);
        var result5 = stemmer.GetStem("rider");
        Assert.AreEqual("rider", result5);
    }

    [TestMethod]
    public void TestPorterStemIES()
    {
        var result = stemmer.GetStem("strawberries");
        Assert.AreEqual("strawberri", result);
        var result2 = stemmer.GetStem("superfluities");
        Assert.AreEqual("superflu", result2);
        var result3 = stemmer.GetStem("tendencies");
        Assert.AreEqual("tendenc", result3);
    }

    [TestMethod]
    public void TestPorterStemING()
    {
        var result = stemmer.GetStem("string");
        Assert.AreEqual("string", result);
        var result2 = stemmer.GetStem("ping");
        Assert.AreEqual("ping", result2);
        var result3 = stemmer.GetStem("jumping");
        Assert.AreEqual("jump", result3);
    }

    [TestMethod]
    public void TestPorterStemSuffixes()
    {
        var result = stemmer.GetStem("homogeneous");
        Assert.AreEqual("homogen", result);
        var result2 = stemmer.GetStem("effective");
        Assert.AreEqual("effect", result2);
        var result3 = stemmer.GetStem("communism");
        Assert.AreEqual("commun", result3);
        var result4 = stemmer.GetStem("revival");
        Assert.AreEqual("reviv", result4);
        var result5 = stemmer.GetStem("characterization");
        Assert.AreEqual("character", result5);
        var result6 = stemmer.GetStem("multidimensional");
        Assert.AreEqual("multidimension", result6);
        var result7 = stemmer.GetStem("assistant");
        Assert.AreEqual("assist", result7);
        var result8 = stemmer.GetStem("rational");
        Assert.AreEqual("ration", result8);
    }

    [TestMethod]
    public void TestPorterStemEdgeCases()
    {
        var space = " ";
        Assert.AreEqual(stemmer.GetStem(space), " ");
        string? nil = null;
        Assert.IsNull(stemmer.GetStem(nil));
        var empty = "";
        Assert.AreEqual(stemmer.GetStem(empty), "");

    }

    [TestMethod]
    public void TestGetMCount()
    {
        var result = stemmer.GetMCount("pineapple");
        Assert.AreEqual(2, result);
        var result2 = stemmer.GetMCount("toe");
        Assert.AreEqual(0, result2);
        var result3 = stemmer.GetMCount("tiger");
        Assert.AreEqual(2, result3);
        var result4 = stemmer.GetMCount("completed");
        Assert.AreEqual(3, result4);
    }

    [TestMethod]
    public void TestCheckDoubleConsonant()
    {
        var result = stemmer.CheckDoubleConsonant("bell");
        Assert.IsTrue(result);
        var result2 = stemmer.CheckDoubleConsonant("hello");
        Assert.IsFalse(result2);
    }


    [TestMethod]
    public void TestCheckCVC()
    {
        var result = stemmer.CheckCVC("yogurt");
        Assert.IsFalse(result);
        var result2 = stemmer.CheckCVC("octopus");
        Assert.IsTrue(result2);
        var result3 = stemmer.CheckCVC("yak");
        Assert.IsTrue(result3);
        var result4 = stemmer.CheckCVC("way");
        Assert.IsFalse(result4);
    }

    [TestMethod]
    public void TestIsVowel()
    {
        var result = stemmer.IsVowel('y');
        Assert.IsFalse(result);
        var result0 = stemmer.IsVowel('p');
        Assert.IsFalse(result);
        var result1 = stemmer.IsVowel('0');
        Assert.IsFalse(result1);
        var result2 = stemmer.IsVowel('a');
        Assert.IsTrue(result2);
        var result3 = stemmer.IsVowel('e');
        Assert.IsTrue(result3);
        var result4 = stemmer.IsVowel('i');
        Assert.IsTrue(result4);
        var result5 = stemmer.IsVowel('o');
        Assert.IsTrue(result5);
        var result6 = stemmer.IsVowel('u');
        Assert.IsTrue(result6);
    }

    [TestMethod]
    public void TestHasVowel()
    {
        var result = stemmer.HasVowel("pineapple");
        Assert.IsTrue(result);
        var result2 = stemmer.HasVowel("dy");
        Assert.IsTrue(result);
        var result3 = stemmer.HasVowel("n0v0w3ls");
        Assert.IsFalse(result3);
        var empty = stemmer.HasVowel("");
        Assert.IsFalse(empty);
    }
}
