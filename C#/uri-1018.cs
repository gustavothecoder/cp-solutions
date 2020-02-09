// URI - 1018: https://www.urionlinejudge.com.br/judge/pt/problems/view/1018

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            int money;
            do
            {
                money = int.Parse(Console.ReadLine());
            } while (money < 0 || money > 1000000);

            PossibleBallots(money);
        }

        private static void PossibleBallots(int money)
        {
            int[] ballots = new int[] { 100, 50, 20, 10, 5, 2, 1 };
            int result;
            Console.WriteLine(money);

            for (int i = 0; i < ballots.Length; i++)
            {
                result = money / ballots[i];
                Console.WriteLine(result + " nota(s) de R$ " + ballots[i] + ",00");
                money -= result * ballots[i];
            }
        }
    }
}