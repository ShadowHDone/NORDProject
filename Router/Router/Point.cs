using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Router
{
    class Point
    {
        uint num;
        uint price = Int32.MaxValue;
        List<Way> way = new List<Way>();

        public Point(uint num)
        {
            this.num = num;
        }

        public void SetPrice(uint price)
        {
            this.price = price;
        }

        public uint GetPrice()
        {
            return price;
        }

        public uint GetNum()
        {
            return num;
        }

        public void Connect(Point from, uint wprice)
        {
            way.Add(new Way(from, this, wprice));
        }

        public List<Way> getWay()
        {
            return (way);
        }

        internal void setPrice(int p)
        {
            this.price = (uint)p;
        }

        internal int getPrice()
        {
            return ((int)this.price);
        }
    }
}
