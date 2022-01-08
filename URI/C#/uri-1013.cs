// URI - 1013

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] values = Console.ReadLine().Split(' ');

            HighestValue(values);
        }

        private static void HighestValue(string[] values)
        {
            int aValue = int.Parse(values[0]);
            int bValue = int.Parse(values[1]);
            int cValue = int.Parse(values[2]);

            int greaterBetweenAandB = ((aValue + bValue + Math.Abs(aValue - bValue)) / 2);

            if (greaterBetweenAandB < cValue)
            {
                Console.WriteLine(cValue + " eh o maior");
            }
            else
            {
                Console.WriteLine(greaterBetweenAandB + " eh o maior");
            }
        }
    }
}