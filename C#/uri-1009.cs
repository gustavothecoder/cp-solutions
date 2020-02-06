// URI - 1009

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            string sellerSame = Console.ReadLine();
            double fixedSalary = double.Parse(Console.ReadLine());
            double totalCashSales = double.Parse(Console.ReadLine());

            Console.WriteLine("TOTAL = R$ " + (fixedSalary + totalCashSales * 0.15).ToString("F2"));
        }
    }
}