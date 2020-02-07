// URI - 1011

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            double radius = double.Parse(Console.ReadLine());

            Console.WriteLine("VOLUME = "+ ((4.0 / 3.0) * 3.14159 * Math.Pow(radius, 3)).ToString("F3"));
        }
    }
}