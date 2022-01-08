// URI - 1002

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            double radius = double.Parse(Console.ReadLine());

            Console.WriteLine("A=" + (3.14159 * Math.Pow(radius, 2)).ToString("F4"));
        }
    }
}