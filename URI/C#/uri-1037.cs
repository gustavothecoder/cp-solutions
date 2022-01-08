// URI - 1037: https://www.urionlinejudge.com.br/judge/pt/problems/view/1037

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            double input = double.Parse(Console.ReadLine());
            if (input < 0 || input > 100)
                Console.WriteLine("Fora de intervalo"); 
            else if (input <= 25)
                Console.WriteLine("Intervalo [0,25]");
            else if (input <= 50)
                Console.WriteLine("Intervalo (25,50]");
            else if (input <= 75)
                Console.WriteLine("Intervalo (50,75]");
            else
                Console.WriteLine("Intervalo (75,100]");
        }
    }
}