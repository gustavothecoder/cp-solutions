using System;

namespace uri_1024
{
    class Program
    {
        static void Main(string[] args)
        {
            int n = int.Parse(Console.ReadLine());
            for (int i = 0; i < n; i++)
            {
                string text = Console.ReadLine();
                string result = Encrypt(text, text.Length);
                Console.WriteLine(result);
            }
        }

        public static string Encrypt(string text, int n)
        {
            string[] crip = new string[n*2];
            string[] crip2 = new string[n*2];
            int[] ASC = new int[n*2];
            int[] ASCC = new int[n*2];

            // Layer #1
            for (int j = 0; j < text.Length; j++)
            {
                ASC[j] = (int)text[j];
                if (ASC[j] < 123 && ASC[j] > 64)
                {
                    ASCC[j] = ASC[j] + 3;
                }
                else
                {
                    ASCC[j] = ASC[j];
                }
                crip[j] = Char.ConvertFromUtf32(ASCC[j]);
            }

            //Layer #2
            int aux = 0;
            for (int j = 0; j < text.Length + 1; j++)
            {
                crip2[j] = crip[text.Length - aux];
                aux++;
            }

            //Layer #3
            aux = text.Length / 2;
            text = string.Concat(crip2);
            for (int j = 0; j <= aux; j++)
            {
                crip[j] = text[j].ToString();
            }
            for (int j = aux; j < text.Length; j++)
            {
                ASC[j] = (int)text[j];
                ASCC[j] = ASC[j] - 1;
                crip[j] = Char.ConvertFromUtf32(ASCC[j]);
            }

            string result = string.Concat(crip);
            return result;
        }
    }
}