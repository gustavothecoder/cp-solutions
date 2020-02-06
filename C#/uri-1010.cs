// URI - 1010

using System;

namespace URI
{
    class Program
    {
        static void Main(string[] args)
        {
            string[] pieceA = Console.ReadLine().Split(' ');
            int pieceIDA = int.Parse(pieceA[0]);
            int numberOfPiecesA = int.Parse(pieceA[1]);
            double unitaryValueA = double.Parse(pieceA[2]);

            string[] pieceB = Console.ReadLine().Split(' ');
            int pieceIDB = int.Parse(pieceB[0]);
            int numberOfPiecesB = int.Parse(pieceB[1]);
            double unitaryValueB = double.Parse(pieceB[2]);

            Console.WriteLine("VALOR A PAGAR: R$ " + (numberOfPiecesA * unitaryValueA + numberOfPiecesB * unitaryValueB).ToString("F2"));
        }
    }
}