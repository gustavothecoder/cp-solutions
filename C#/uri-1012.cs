// URI - 1012

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] values = Console.ReadLine().Split(' ');

            ShowAreas(values);
        }

        private static void ShowAreas(string[] values)
        {
            double aValue = double.Parse(values[0]);
            double bValue = double.Parse(values[1]);
            double cValue = double.Parse(values[2]);

            Console.WriteLine("TRIANGULO: " + ((aValue * cValue) / 2).ToString("F3"));
            Console.WriteLine("CIRCULO: " + (3.14159 * Math.Pow(cValue, 2)).ToString("F3"));
            Console.WriteLine("TRAPEZIO: " +((aValue + bValue) * cValue / 2).ToString("F3"));
            Console.WriteLine("QUADRADO: " + (Math.Pow(bValue, 2)).ToString("F3"));
            Console.WriteLine("RETANGULO: " + (aValue * bValue).ToString("F3"));
        }
    }
}