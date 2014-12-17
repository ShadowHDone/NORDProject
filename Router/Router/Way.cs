using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Router
{
    class Way
    {
        Point A, B;
        uint wprice;

        public Way() { }

        public Way(Point A, Point B,uint wprice)
        {
            this.A = A;
            this.B = B;
            this.wprice = wprice;
        }

        //SET
        public void SetA(Point A)
        {
            this.A = A;
        }

        public void SetB(Point B)
        {
            this.B = B;
        }

        //GET
        public Point GetA()
        {
            return A;
        }

        public Point GetB()
        {
            return B;
        }

        public uint GetWPrice()
        {
            return wprice;
        }

        internal Point GetPoint(Point from)
        {
            if (this.A.Equals(from))
            {
                return (B);
            }
            else
            {
                return (A);
            }
        }

        internal int getPrice()
        {
            return ((int)this.wprice);
        }
    }
}
