#include <iostream>
#include <vector>

using namespace std;

int main()
{
    int tests;
    cin >> tests;

    int i, j;
    int n_ops, n_selec;
    int odd_counter, even_counter;
    int op, possible;
    for (i = 0; i < tests; i++)
    {
        odd_counter = 0;
        cin >> n_ops >> n_selec;
        for (j = 0; j < n_ops; j++)
        {
            cin >> op;
            if (op % 2 > 0)
                odd_counter++;
        }

        if (odd_counter == 0 ||
            (odd_counter == n_ops) && n_selec % 2 == 0)
        {
            cout << "No" << endl;
            continue;
        }

        even_counter = n_ops - odd_counter, possible = 0;
        for (j = 1; j <= odd_counter; j++)
        {
            if (j % 2 > 0)
            {
                if (n_selec - (j + even_counter) <= 0)
                {
                    possible = 1;
                    break;
                }
            }
        }

        if (possible)
            cout << "Yes";
        else
            cout << "No";
        cout << endl;
    }

    return 0;
}
