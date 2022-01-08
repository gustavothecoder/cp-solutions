// URI - 1030: https://www.urionlinejudge.com.br/judge/pt/problems/view/1030

using System;
using System.Collections.Generic;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            List<int> people = new List<int>();
            string[] input;
            int deathJump, thisDies, numberOfTests = int.Parse(Console.ReadLine());

            for (int i = 0; i < numberOfTests; i++)
            {
                input = Console.ReadLine().Split(' ');
                deathJump = int.Parse(input[1]);

                for (int j = 1; j <= int.Parse(input[0]); j++)
                    people.Add(j);

                thisDies = deathJump - 1;
                while (people.Count > 1)
                {
                    if (thisDies > people.Count - 1)
                        thisDies -= people.Count;

                    if (thisDies == people.Count)
                        thisDies = 0;

                    if (thisDies <= people.Count - 1)
                    {
                        people.RemoveAt(thisDies);
                        thisDies += deathJump - 1;
                    }
                }
                Console.WriteLine("Case " + (i + 1) + ": " + people[0]);
                people.RemoveAt(0);
            }
        }
    }
}