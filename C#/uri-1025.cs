// URI - 1025: https://www.urionlinejudge.com.br/judge/pt/problems/view/1025

using System;

namespace uri_1025
{
    class Program
    {
        static void Main(string[] args)
        {
            int numberOfMarbles = 1, NumberOfConsultations = 1, writeLineQueryCounter = 1, queryCounter = 0,  marble = 0;
            string[] numberOfMarblesAndNumberOfConsultations = new string[] { };

            while (NumberOfConsultations != 0 && numberOfMarbles != 0)
            {
                numberOfMarblesAndNumberOfConsultations = Console.ReadLine().Split(' ');
                numberOfMarbles = int.Parse(numberOfMarblesAndNumberOfConsultations[0]);
                NumberOfConsultations = int.Parse(numberOfMarblesAndNumberOfConsultations[1]);

                int[] marbles = new int[numberOfMarbles];

                if (numberOfMarbles != 0 && NumberOfConsultations != 0)
                {
                    for (int i = 0; i < numberOfMarbles; i++)
                    {
                        marble = int.Parse(Console.ReadLine());
                        marbles[i] = marble;
                    }

                    queryCounter = 0;
                    int[] query = new int[NumberOfConsultations];

                    for (int i = 0; i < NumberOfConsultations; i++)
                    {
                        query[i] = int.Parse(Console.ReadLine());
                    }
                    Array.Sort(marbles);
                    Console.WriteLine("CASE# " + writeLineQueryCounter + ":");
                    while (queryCounter < NumberOfConsultations)
                    {
                        foundAtOrNotFound(query[queryCounter], marbles);
                        queryCounter++;
                    }
                    writeLineQueryCounter++;
                }
            }
        }

        private static void foundAtOrNotFound(int marble, int[] marbles)
        {
            int result = Array.IndexOf(marbles, marble);
            if (result < 0)
            {
                Console.WriteLine(marble + " not found");
            }
            else
            {
                result++;
                Console.WriteLine(marble + " found at " + result);
            }
        }
    }
}