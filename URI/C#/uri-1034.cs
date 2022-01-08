// URI - 1034: https://www.urionlinejudge.com.br/judge/pt/problems/view/1034

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            int numberOfInstances = int.Parse(Console.ReadLine());
            string[] input = new string[2];
            int numberOfBlockTypes, desiredLength, minimumNumberOfBlocks;
            for (int i = 0; i < numberOfInstances; i++)
            {
                input = Console.ReadLine().Split(' ');
                numberOfBlockTypes = int.Parse(input[0]);
                desiredLength = int.Parse(input[1]);
                string[] blocksInput = Console.ReadLine().Split(' ');
                int[] blocks = Array.ConvertAll(blocksInput, new Converter<string, int>(StringBlocksToIntBlocks));
                minimumNumberOfBlocks = DefineTheMinimumNumberOfBlocks(blocks, desiredLength, numberOfBlockTypes - 1);
                Console.WriteLine(minimumNumberOfBlocks);
            }
        }

        private static int StringBlocksToIntBlocks(string block)
        {
            return int.Parse(block);
        }

        private static int DefineTheMinimumNumberOfBlocks(int[] blocks, int desiredLength, int numberOfBlockTypes) 
        {
            int infinite = 999999999, minimumNumberOfBlocks;
            int[] minimumNumberOfBlocksForEachSize = new int[desiredLength + 1];
            minimumNumberOfBlocksForEachSize[0] = 0;
            for (int j = 1; j <= desiredLength; j++)
            {
                minimumNumberOfBlocks = infinite;
                for (int i = 0; i <= numberOfBlockTypes; i++)
                {
                    if (j >= blocks[i])
                    {
                        minimumNumberOfBlocks = Math.Min(minimumNumberOfBlocks, 
                                                        1 + minimumNumberOfBlocksForEachSize[j - blocks[i]]);
                    }
                }
                minimumNumberOfBlocksForEachSize[j] = minimumNumberOfBlocks;
            }
            return minimumNumberOfBlocksForEachSize[desiredLength];
        }
    }
}