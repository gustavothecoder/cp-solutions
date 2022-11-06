#include <iostream>

typedef long long ll;

using namespace std;

int main()
{
    ll start = 1, limit, target;
    cin >> limit >> target;

    ll counter = 0, mult_col = start;
    for (ll row = limit, col = start; row >= start && col <= limit; row--, col++)
    {
        while (mult_col <= limit)
        {
            if (row * mult_col == target)
            {
                counter++;
                mult_col++;
                break;
            }
            else if (row * mult_col < target)
            {
                mult_col++;
            }
            else
            {
                break;
            }
        }
    }

    cout << counter << endl;

    return 0;
}
