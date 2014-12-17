using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace GreatMazinger
{
    public class Calc
    {
        public int sum(int first, int second)
        {
            int result = first + second;
            return result;
        }
        public int sub(int first, int second)
        {
            int result = first - second;
            return result;
        }
        public int dev(int first, int second)
        {
            int result = first / second;
            return result;
        }
        public int mul(int first, int second)
        {
            int result = first * second;
            return result;
        }
    }
}
