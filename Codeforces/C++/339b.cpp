#include <iostream>

using namespace std;

int main()
{
    long long n, m;
    cin >> n >> m;

    long long h, ch = 1, tm = m, ans = 0;
    while (tm > 0)
    {
        cin >> h;
        while (ch != h)
        {
            if (ch < h)
                ans += h - ch;
            else
                ans += n - (abs(h - ch));
            ch = h;
        }
        tm--;
    }

    cout << ans << endl;

    return 0;
}