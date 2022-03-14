#include <iostream>

using namespace std;

int main()
{
    int t;
    cin >> t;
    int i, j, n, k, div_r, mod_r, guide;
    for (i = 0; i < t; i++)
    {
        cin >> n >> k;
        div_r = n / k;
        mod_r = n % k;
        if (k > n)
        {
            cout << "NO" << endl;
        }
        else if (mod_r == 0)
        {
            cout << "YES" << endl;
            for (j = 0; j < k - 1; j++)
                cout << div_r << ' ';
            cout << div_r << endl;
        }
        else
        {
            guide = div_r + mod_r;
            if ((guide % 2 == 0 && div_r % 2 == 0) || (guide % 2 != 0 && div_r % 2 != 0))
            {
                cout << "YES" << endl;
                for (j = 0; j < k - 1; j++)
                    cout << div_r << ' ';
                cout << guide << endl;
            }
            else if (((k - 1) % 2 == 0) && div_r > 1)
            {
                cout << "YES" << endl;
                for (j = 0; j < k - 1; j++)
                {
                    if (j % 2 == 0)
                        cout << div_r - 1 << ' ';
                    else
                        cout << div_r + 1 << ' ';
                }
                cout << guide << endl;
            }
            else
            {
                cout << "NO" << endl;
            }
        }
    }
    return 0;
}
