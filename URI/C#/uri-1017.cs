// URI - 1017: https://www.urionlinejudge.com.br/judge/pt/problems/view/1017

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            int timeOfTravel = int.Parse(Console.ReadLine());
            int averageSpeed = int.Parse(Console.ReadLine());

            Console.WriteLine(((averageSpeed / 12.0) * timeOfTravel).ToString("F3"));
        }
    }
}