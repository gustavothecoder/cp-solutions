// URI - 1021: https://www.urionlinejudge.com.br/judge/pt/problems/view/1021 

using System;
using System.Globalization;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            double money;
            do
            {
                 money = double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);
            } while (money <= 0 || money >= 1000000.00);

            RequiredNotes(money);
        }

        private static void RequiredNotes(double money)
        {
            double[] banknotes = new double[] { 100.0, 50.0, 20.0, 10.0, 5.0, 2.0 };
            int result;

            Console.WriteLine("NOTAS:");
            for (int i = 0; i < banknotes.Length; i++)
            {
                result = (int)(money / banknotes[i]);
                Console.WriteLine(result + " nota(s) de R$ " + banknotes[i].ToString("F2", CultureInfo.InvariantCulture));
                money = Math.Round(money - result * banknotes[i], 2);
            }

            RequiredCurrencies(money);
        }

        private static void RequiredCurrencies(double money)
        {
            double[] coins = new double[] { 1.0, 0.50, 0.25, 0.10, 0.05, 0.01 };
            int result;

            Console.WriteLine("MOEDAS:");
            for (int i = 0; i < coins.Length; i++)
            {
                result = (int)(money / coins[i]);
                Console.WriteLine(result + " moeda(s) de R$ " + coins[i].ToString("F2", CultureInfo.InvariantCulture));
                money = Math.Round(money -  result * coins[i], 2);
            }
        }
    }
}