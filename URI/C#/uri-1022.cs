// URI - 1022: https://www.urionlinejudge.com.br/judge/pt/problems/view/1022

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            int numberOfOperations;

            numberOfOperations = int.Parse(Console.ReadLine());

            Calculator(numberOfOperations);
        }

        private static void Calculator(int numberOfOperations)
        {
            for (int i = 0; i < numberOfOperations; i++)
            {
                string[] mathematicalExpression = Console.ReadLine().Split(' ');

                int numerator1 = int.Parse(mathematicalExpression[0]);
                int denominator1 = int.Parse(mathematicalExpression[2]);
                char mathematicalOperator = char.Parse(mathematicalExpression[3]);
                int numerator2 = int.Parse(mathematicalExpression[4]);
                int denominator2 = int.Parse(mathematicalExpression[6]);

                int operationPart1 = 0, operationPart2 = 0, gcdResult;

                if (mathematicalOperator == '+')
                {
                    operationPart1 = (numerator1 * denominator2 + numerator2 * denominator1);
                    operationPart2 = (denominator1 * denominator2);
                }
                else if (mathematicalOperator == '-')
                {
                    operationPart1 = (numerator1 * denominator2 - numerator2 * denominator1);
                    operationPart2 = (denominator1 * denominator2);
                }
                else if (mathematicalOperator == '*')
                {
                    operationPart1 = (numerator1 * numerator2);
                    operationPart2 = (denominator1 * denominator2);
                }
                else if (mathematicalOperator == '/')
                {
                    operationPart1 = (numerator1 * denominator2);
                    operationPart2 = (numerator2 * denominator1);
                }
                else
                {
                    Console.WriteLine("Invalid operator!");
                }

                gcdResult = GCD(operationPart1, operationPart2);
                int simplificationPart1 = operationPart1 / gcdResult;
                int simplificationPart2 = operationPart2 / gcdResult;

                if (simplificationPart1 > 0 && simplificationPart2 > 0)
                {
                    Console.WriteLine($"{operationPart1}/{operationPart2} = {simplificationPart1}/{simplificationPart2}");
                }
                else
                {
                    if (simplificationPart2 < 0)
                    {
                        simplificationPart1 = -simplificationPart1;
                        simplificationPart2 = -simplificationPart2;
                    }
                    Console.WriteLine($"{operationPart1}/{operationPart2} = {simplificationPart1}/{simplificationPart2}");
                }
            }
        }

        private static int GCD(int part1, int part2)
        {
            int divider, dividend, rest;

            if (part1 == 0)
            {
                return 1;
            }

            if (part2 > part1)
            {
                dividend = part2;
                divider = part1;
            }
            else
            {
                dividend = part1;
                divider = part2;
            }

            while (dividend % divider != 0)
            {
                rest = dividend % divider;
                dividend = divider;
                divider = rest;
            }

            return divider;
        }
    }
}