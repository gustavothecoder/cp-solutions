#include <iostream>
#include <vector>

using namespace std;

int main()
{
    int t, n, x, cd, an, i, j, sum, ans, td;
    cin >> t;
    vector<int> a;
    while (t--)
    {
        cin >> n >> x;
        cd = sum = 0;
        a.clear();
        for (i = 0; i < n; i++)
        {
            cin >> an;
            if (an % x == 0)
                cd++;

            sum += an;
            a.push_back(an);
        }

        if (cd == n)
        {
            cout << -1 << endl;
            continue;
        }
        else if (sum % x != 0)
        {
            cout << n << endl;
            continue;
        }

        ans = 0, td = 0;
        for (i = 0, j = n - 1; i < j; i++, j--)
        {
            td++;
            if ((a[i] % x != 0 && a[i] > 0) || (a[j] % x != 0 && a[j] > 0))
            {
                ans = n - td;
                break;
            }
        }

        if (ans <= 0)
            ans = -1;
        cout << ans << endl;
    }

    return 0;
}
