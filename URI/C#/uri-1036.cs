// URI - 1036: https://www.urionlinejudge.com.br/judge/pt/problems/view/1036

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] values = Console.ReadLine().Split(' ');
            double[] result =  CalculateBhaskaraRoots(values);
            ShowBhaskaraRoots(result);
        }

        private static double[] CalculateBhaskaraRoots(string[] values)
        {
            double[] result = new double[2];
            double valueA = double.Parse(values[0]);
            double valueB = double.Parse(values[1]);
            double valueC = double.Parse(values[2]);
            double delta = Math.Pow(valueB, 2) - 4 * valueA * valueC;
            double divider = 2 * valueA;
            if (delta < 0 || divider == 0)
            {
                result[0] = -999;
                return result;
            }
            double rootA = (-valueB + Math.Sqrt(delta)) / divider;
            double rootB = (-valueB - Math.Sqrt(delta)) / divider;
            result[0] = rootA;
            result[1] = rootB;
            return result;
        }

        private static void ShowBhaskaraRoots(double[] roots)
        {
            if (roots[0] == -999)
                Console.WriteLine("Impossivel calcular");
            else
            {
                Console.WriteLine("R1 = " + Math.Round(roots[0], 5));
                Console.WriteLine("R2 = " + Math.Round(roots[1], 5));
            }
        }
    }
}