// URI - 1031: https://www.urionlinejudge.com.br/judge/pt/problems/view/1031

using System;
using System.Collections.Generic;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            List<int> regions = new List<int>();
            int numberOfRegions = 1, interval = 0;
            while (numberOfRegions != 0)
            {
                numberOfRegions = int.Parse(Console.ReadLine());
                if (numberOfRegions == 0)
                    break;
                do
                {
                    if (regions.Count > 0)
                        regions.RemoveAt(0);
                    for (int i = 1; i <= numberOfRegions; i++)
                        regions.Add(i);
                    interval++;
                } while (EnergyCut(regions, interval, 0) != 13);
                Console.WriteLine(interval);
                interval = 0;
            }
        }

        private static int EnergyCut(List<int> regions, int interval, int cut)
        {
            while (regions.Count > 1)
            {
                if (cut > regions.Count - 1)
                    cut -= regions.Count;
                if (cut == regions.Count)
                    cut = 0;
                if (cut <= regions.Count)
                {
                    regions.RemoveAt(cut);
                    cut += interval - 1;
                }
            }
            return regions[0];
        }
    }
}