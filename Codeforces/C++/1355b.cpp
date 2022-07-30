#include <iostream>
#include <algorithm>

using namespace std;

int find_number_of_groups(int en[], int start, int end, int ans);

int main()
{
    int t;
    cin >> t;

    int n, i, ans, ce, gz;
    while (t--)
    {
        cin >> n;

        int en[n];
        for (i = 0; i < n; i++)
            cin >> en[i];

        sort(en, en+n);

        ans = 0;
        for (i = 0; i < n; i++)
        {
            ce = en[i];
            gz = 1;
            while (gz < ce)
            {
                i++;
                ce = en[i];
                gz++;
            }

            if (i < n)
                ans++;
            else
                break;
        }

        cout << ans << endl;
    }

    return 0;
}
