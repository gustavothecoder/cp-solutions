// URI - 1015

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] values = Console.ReadLine().Split(' ');
            double x1 = double.Parse(values[0]);
            double y1 = double.Parse(values[1]);

            values = Console.ReadLine().Split(' ');
            double x2 = double.Parse(values[0]);
            double y2 = double.Parse(values[1]);

            Console.WriteLine((Math.Sqrt(Math.Pow(x2 - x1, 2) + Math.Pow(y2 - y1, 2))).ToString("F4"));
        }
    }
}