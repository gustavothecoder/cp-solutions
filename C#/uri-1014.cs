// URI - 1014

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            int totalDistanceTraveled = int.Parse(Console.ReadLine());
            double totalFuelSpent = double.Parse(Console.ReadLine());

            Console.WriteLine((totalDistanceTraveled / totalFuelSpent).ToString("F3") + " km/l");
        }
    }
}