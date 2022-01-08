// URI - 1006

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            double noteA = double.Parse(Console.ReadLine());
            double noteB = double.Parse(Console.ReadLine());
            double noteC = double.Parse(Console.ReadLine());

            Console.WriteLine("MEDIA = " + ((noteA * 2.0 + noteB * 3.0 + noteC * 5.0) / 10).ToString("F1"));
        }
    }
}