using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Router
{
    class GetPoint
    {
        List<Point> graph;

        public GetPoint(List<Point> graph)
        {
            this.graph = graph;
        }

        public Point Get(uint point)
        {
            if (graph.SingleOrDefault(x => x.GetNum() == point) == null)
            {
                Point p = new Point(point);
                graph.Add(p);
                return p;
            }
            else
            {
                return graph.SingleOrDefault(x => x.GetNum() == point);
            }
        }
    }
}
