using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

namespace Router
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Программа поиска оптимального пути.");
            Console.WriteLine("Синтаксис ввода условий следующий: (A;B)-V,");
            Console.WriteLine("где А - вершина \"из\", В - вершина \"в\", V - вес пути между ними.\n");
            Console.WriteLine("Пустой ввод означает завершение ввода условий.\n");

            bool enter = true;
            uint a, b, price;
            string pointWay;

            List<Point> graph = new List<Point>();

            Console.Write("Введите первое условие: ");
            while (enter)
            {
                pointWay = Console.ReadLine();

                //Если введена пустота, то Fuck you, you son of a bitch/
                if (pointWay.Length == 0)
                {
                    Console.Write("\n***Ввод аргументов завершен***\n\n");
                    break;
                }

                // Распознование вводимых данных
                Regex regex = new Regex(@"(\d+)\D+(\d+)\D+(\d+)");
                Console.WriteLine(regex.Match(pointWay));



                Match match = regex.Match(pointWay);
                if (match.Success)
                {
                    a = UInt32.Parse(match.Groups[1].Value);
                    b = UInt32.Parse(match.Groups[2].Value);
                    price = UInt32.Parse(match.Groups[3].Value);

                    //Ввод А
                    Console.WriteLine("Вершина А: " + a);

                    //Ввод Б
                    Console.WriteLine("Вершина Б: " + b);

                    //Ввод веса пути
                    Console.WriteLine("Вес связи: " + price);

                    GetPoint gp = new GetPoint(graph);

                    gp.Get(a).Connect(gp.Get(b),price);

                    Console.Write("Введите следующее условие: ");
                }
                else
                {
                    Console.Write("Ошибка синтаксиса! Попробуйте заново: ");
                }
            }

            /** начало работы алгоритма **/
            Search s = new Search();
            uint min = graph.Min(y => y.GetNum());
            uint max = graph.Max(y => y.GetNum());
            string route = s.SearchPath(graph.Single(x => x.GetNum() == min), graph.Single(x => x.GetNum() == max)).ToString(); 
            
            Console.Write(route);
            //Console.Write(graph.Max(x => x.GetNum()));
            Console.ReadKey();
        }
    }
}
