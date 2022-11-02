#include <iostream>

using namespace std;

int main()
{
    int n_test;
    cin >> n_test;

    long long x, y, a, b, ans;
    while (n_test--)
    {
        cin >> x >> y >> a >> b;

        if (x < y)
            swap(x, y);

        if (2 * a <= b)
            ans = (x + y) * a;
        else
            ans = (y * b) + ((x - y) * a);

        cout << ans << endl;
    }

    return 0;
}
