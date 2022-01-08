// URI - 1005

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            double noteA = double.Parse(Console.ReadLine());
            double noteB = double.Parse(Console.ReadLine());

            Console.WriteLine("MEDIA = " + ((noteA * 3.5 + noteB * 7.5) / 11).ToString("F5"));
        }
    }
}