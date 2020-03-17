// URI - 1026: https://www.urionlinejudge.com.br/judge/pt/problems/view/1026

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] numbers = new string[2];

            while (true)
            {
                try
                {
                    numbers = Console.ReadLine().Split(' ');

                    Console.WriteLine(uint.Parse(numbers[0]) ^ uint.Parse(numbers[1]));
                }
                catch (Exception)
                {
                    break;
                }
            }
        }
    }
}