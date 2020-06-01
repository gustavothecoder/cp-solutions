// URI - 1028: https://www.urionlinejudge.com.br/judge/pt/problems/view/1028

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            int numberOfExchanges = int.Parse(Console.ReadLine());
            string[] numberOfStickers = new string[2];
            int ricardoStickers, vicenteStickers;

            for (int i = 0; i < numberOfExchanges; i++)
            {
                numberOfStickers = Console.ReadLine().Split(' ');

                ricardoStickers = int.Parse(numberOfStickers[0]);
                vicenteStickers = int.Parse(numberOfStickers[1]);

                Console.WriteLine(GreatestCommonDivisor(ricardoStickers, vicenteStickers));
            }
        }

        private static int GreatestCommonDivisor(int ricardoStickers, int vicenteStickers)
        {
            int remainder;

            while (vicenteStickers != 0)
            {
                remainder = ricardoStickers % vicenteStickers;
                ricardoStickers = vicenteStickers;
                vicenteStickers = remainder;
            }

            return ricardoStickers;
        }
    }
}
