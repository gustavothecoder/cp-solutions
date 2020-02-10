// URI - 1020: https://www.urionlinejudge.com.br/judge/pt/problems/view/1020

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            int ageInDays = int.Parse(Console.ReadLine());

            RealAge(ageInDays);
        }

        private static void RealAge(int ageInDays)
        {
            int[] values = new int[] { 365, 30, 1 };
            string[] values2 = new string[] { " ano(s)", " mes(es)", " dia(s)" };
            int result; 

            for (int i = 0; i < values.Length; i++)
            {
                result = ageInDays / values[i];
                Console.WriteLine(result + values2[i]);
                ageInDays -= result * values[i];
            }
        }
    }
}