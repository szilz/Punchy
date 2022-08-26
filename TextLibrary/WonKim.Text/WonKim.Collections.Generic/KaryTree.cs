using System;

namespace WonKim.Collections.Generic
{
    /// <summary>
    /// https://xlinux.nist.gov/dads/HTML/karyTree.html
    /// http://www2.cs.uregina.ca/~beattieb/CS340/notes/09%20-%20Non-Binary%20Trees.pdf
    /// https://blog.mozilla.org/nnethercote/2012/03/07/n-ary-trees-in-c/
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class KaryTree<T>
    {
        public KaryTree()
        {
            RootNode = null;
        }

        public KaryTreeNode<T> RootNode { get; set; }
    }
}
