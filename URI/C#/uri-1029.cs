// URI - 1029: https://www.urionlinejudge.com.br/judge/pt/problems/view/1029

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            int testCase, result;
            int numberOfTestCases = int.Parse(Console.ReadLine());

            for (int i = 0; i < numberOfTestCases; i++)
            {
                testCase = int.Parse(Console.ReadLine());
                if (testCase > 1)
                {
                    result = FibonacciNumber(testCase);
                    Console.WriteLine($"fib({testCase}) = {Counter.counter} calls = {result}");
                }
                else
                {
                    Console.WriteLine($"fib({testCase}) = 0 calls = 1");
                }
                Counter.counter = -1;
            }
        }

        public class Counter
        {
            public static int counter = -1;
        }

        private static int FibonacciNumber(int number)
        {
            Counter.counter++;
            if (number < 2)
            {
                return number;
            }
            else
            {
                return FibonacciNumber(number - 1) + FibonacciNumber(number - 2);
            }
        }
    }
}