// URI - 1008

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            int employeeNumber = int.Parse(Console.ReadLine());
            int workedHours = int.Parse(Console.ReadLine());
            double hourlyValue = double.Parse(Console.ReadLine());

            Console.WriteLine("NUMBER = " + employeeNumber);
            Console.WriteLine("SALARY = U$ " + (workedHours * hourlyValue).ToString("F2"));
        }
    }
}