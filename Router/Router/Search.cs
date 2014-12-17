using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Router
{
    class Search
    {
        /*
        Point from, to;


        public Search(Point from, Point to)
        {
            this.from = from;
            this.to = to;
        }
         */
     //   protected Point from, to;
        Route route = new Route();

        public Route SearchPath(Point from, Point to)
        {
            route.setPrice(Int32.MaxValue);
            from.setPrice(0);
            Route begin = new Route(); 
            begin.addPath(from); //Добавление в путь (первая вершина)
            SearchPath(from, to, begin, 0); //Поиск пути
            return (route);
        }

        private void SearchPath(Point from, Point to, Route before, int price)
        {
            foreach (Way con in from.getWay())
            {
                Route local_route = new Route();
                local_route.Copy(before);
                local_route.incPrice(price);
                Point h = con.GetPoint(from);
                Console.Write(local_route);
                if (h == to)
                {
                  
                    local_route.addPath(h);
                    local_route.incPrice(con.getPrice());
                    h.setPrice(local_route.getPrice() + con.getPrice());
                  
                    if (route.getPrice() > local_route.getPrice())
                    {
                        
                        route = local_route;
                    }
                }
                else
                {
                    if (h.getPrice() > local_route.getPrice() + con.getPrice())
                    {
                        h.setPrice(local_route.getPrice() + con.getPrice());
                        local_route.addPath(h);
                        SearchPath(h, to, local_route, con.getPrice());
                    }
                }
            }

        }
        /*
        public Route getRoute()
        {
            return (this.route);
        }
          * */
    }
}
