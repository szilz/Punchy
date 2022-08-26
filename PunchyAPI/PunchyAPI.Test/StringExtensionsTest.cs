using PunchyAPI.Common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PunchyAPI.Test;

[TestClass]
public class StringExtensionsTest
{
    [TestMethod]
    public void ChopTest()
    {
        var jump = "jumped";
        Assert.AreEqual("jump", jump.Chop("ed"));
        Assert.AreEqual("jumped", jump.Chop("blah"));

        var flower = "flower";
        Assert.AreEqual("flower", flower.Chop("low"));
        Assert.AreEqual("", flower.Chop("flower"));
    }

    [TestMethod]
    public void ChopEdgeCaseTest()
    {
        var empty = "";
        Assert.AreEqual("", empty.Chop("hello"));
        Assert.AreEqual("", empty.Chop(""));

        var space = " ";
        Assert.AreEqual(" ", space.Chop("    "));
        Assert.AreEqual(" ", space.Chop(" "));

        string? nil = null;
        Assert.AreEqual(null, nil.Chop("haha"));
    }

    [TestMethod]
    public void ChopIntTest()
    {
        var kitten = "kitten";
        Assert.AreEqual("kitt", kitten.Chop(2));
        Assert.AreEqual("", kitten.Chop(6));
        Assert.AreEqual("kitten", kitten.Chop(1000));
        Assert.AreEqual("kitten", kitten.Chop(-2));
        Assert.AreEqual("kitten", kitten.Chop(0));
    }

    [TestMethod]
    public void ReplaceEndTest()
    {
        var fruit = "peaches";
        Assert.AreEqual("peaches", fruit.ReplaceEnd("peaches", ""));
        Assert.AreEqual("poached", fruit.ReplaceEnd("eaches", "oached"));
        Assert.AreEqual("peaches", fruit.ReplaceEnd("watermelon", "lemon"));
        Assert.AreEqual("peaches", fruit.ReplaceEnd("pea", "lun"));
    }

    [TestMethod]
    public void ReplaceEndEdgeCaseTest()
    {
        var space = " ";
        Assert.AreEqual(" ", space.ReplaceEnd(" ", "leopard"));
        Assert.AreEqual(" ", space.ReplaceEnd("", "hi"));
        string? nil = null;
        Assert.AreEqual(null, nil.ReplaceEnd(" ", "hi"));
        Assert.AreEqual(null, nil.ReplaceEnd(null, "hi"));
        var empty = "";
        Assert.AreEqual("", empty.ReplaceEnd("", "lion"));
        Assert.AreEqual("", empty.ReplaceEnd(" ", "tiger"));

    }

    [TestMethod]
    public void ReplaceAtIndexTest()
    {
        var cat = "cat";
        Assert.AreEqual("ct", cat.RemoveAtIndex(1));
    }

    [TestMethod]
    public void AddAfterTest()
    {
        var cat = "cat";
        Assert.AreEqual("cart", cat.AddAfter("ca", "r"));
    }

    [TestMethod]
    public void AddAtIndexTest()
    {
        var cat = "cat";
        Assert.AreEqual("cart", cat.AddAtIndex(2, "r"));
    }
}
