#include <iostream>

using namespace std;

int b_search(int piles[][2], int label, int start, int end);

int main()
{
    int piles_n, i;
    cin >> piles_n;
    int piles[piles_n][2], worms_n;
    for (i = 0; i < piles_n; i++)
    {
        cin >> worms_n;
        if (i == 0)
        {
            piles[i][0] = 1;
            piles[i][1] = worms_n;
        }
        else
        {
            piles[i][0] = piles[i - 1][1] + 1;
            piles[i][1] = piles[i - 1][1] + worms_n;
        }
    }
    int juicy_n;
    cin >> juicy_n;
    int label;
    for (i = 0; i < juicy_n; i++)
    {
        cin >> label;
        cout << b_search(piles, label, 0, piles_n) << endl;
    }

    return 0;
}

int b_search(int piles[][2], int label, int start, int end)
{
    if (start >= end)
    {
        return start;
    }
    else
    {
        int mid = (start + end) / 2;
        if (piles[mid][0] > label)
            return b_search(piles, label, start, mid);
        else
            return b_search(piles, label, mid + 1, end);
    }
}
