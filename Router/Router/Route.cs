using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Router
{
    class Route
    {
        protected List<Point> path = new List<Point>();
        protected int price;

        public void Copy(Route b)
        {
            foreach (Point p in b.path)
            {
                this.Add(p);
            }
            this.price = b.price;
        }

        public void Add(Point p)
        {
            path.Add(p);
        }

        public void incPrice(int price)
        {
            this.price += price;
        }

        public override string ToString()
        {
            String result = "Найденный путь:\n";
            foreach (Point p in path)
            {
                result += p.GetNum() + "-";
            }
            result += "(" + price + ")";
            return (result);
        }

        internal void setPrice(int p)
        {
            this.price = p;
        }

        internal int getPrice()
        {
            return (this.price);
        }

        internal void addPath(Point h)
        {
            this.path.Add(h);
        }
    }
}
