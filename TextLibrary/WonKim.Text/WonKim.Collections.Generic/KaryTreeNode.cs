using System;
using System.Collections.Generic;

namespace WonKim.Collections.Generic
{
    public class KaryTreeNode<T> : Node<T>
    {
        public KaryTreeNode(T data)
        {
            Value = data;
        }

        public KaryTreeNode()
            : this(default(T))
        {
        }

        public LinkedList<KaryTreeNode<T>> Nodes { get; set; }
    }
}
