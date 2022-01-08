// URI - 1007

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            int aValue = int.Parse(Console.ReadLine());
            int bValue = int.Parse(Console.ReadLine());
            int cValue = int.Parse(Console.ReadLine());
            int dValue = int.Parse(Console.ReadLine());

            Console.WriteLine("DIFERENCA = " + (aValue * bValue - cValue * dValue));
        }
    }
}