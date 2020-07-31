// URI - 1035: https://www.urionlinejudge.com.br/judge/pt/problems/view/1035

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] values = Console.ReadLine().Split(' ');
            int valueA = int.Parse(values[0]);
            int valueB = int.Parse(values[1]);
            int valueC = int.Parse(values[2]);
            int valueD = int.Parse(values[3]);
            if (valueB > valueC
                && valueD > valueA
                && valueC + valueD > valueA + valueB
                && valueC >= 0
                && valueD >= 0
                && valueA % 2 == 0)
                Console.WriteLine("Valores aceitos");
            else
                Console.WriteLine("Valores nao aceitos");
        }
    }
}