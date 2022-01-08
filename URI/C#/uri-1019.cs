// URI - 1019: https://www.urionlinejudge.com.br/judge/pt/problems/view/1019

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            int seconds = int.Parse(Console.ReadLine());

            ConvertSeconds(seconds);
        }

        private static void ConvertSeconds(int seconds)
        {
            int hours = seconds / 3600;
            seconds -= hours * 3600;
            int minutes = seconds / 60;
            seconds -= minutes * 60;

            Console.WriteLine(hours + ":" + minutes + ":" + seconds);
        }
    }
}