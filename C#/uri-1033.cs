// URI - 1033: https://www.urionlinejudge.com.br/judge/pt/problems/view/1033

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] testCase = new string[2];
            long number, result;
            int baseNumber;
            while (true)
            {
                testCase = Console.ReadLine().Split(' ');
                number = long.Parse(testCase[0]);
                baseNumber = int.Parse(testCase[1]);
                if (number == 0 && baseNumber == 0)
                    break;
                result = ((2 * BigMod(number + 1, baseNumber)) - 1 + baseNumber) % baseNumber;
                ShowResult(number, baseNumber, result);
                Counter.caseCounter++;
            }
        }

        private static long BigMod(long number, int baseNumber)
        {
            if (number <= 0)
                return 0;
            long a = 1, b = 0, c = 0, d = 1, r;
            --number;
            while (number > 0)
            {
                if (number % 2 == 1)
                {
                    r = ((d * b) + (c * a)) % baseNumber;
                    b = (d * (b + a) + (c * b)) % baseNumber;
                    a = r;
                }
                r = (c * c + d * d) % baseNumber;
                d = (d * (2 * c + d)) % baseNumber;
                c = r;
                number = number / 2;
            }
            return (a + b) % baseNumber;
        }

        private static void ShowResult(long number, int baseNumber, long result)
        {
            Console.WriteLine($"Case {Counter.caseCounter}: {number} {baseNumber} {result}");
        }
    }

    class Counter
    {
        public static int caseCounter = 1;
    }
}