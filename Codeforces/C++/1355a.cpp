#include <iostream>
#include <climits>

using namespace std;

long long min_digit_of(long long n);
long long max_digit_of(long long n);

int main()
{
    long long t;
    cin >> t;

    long long a1, k, i, ak, lak;
    while (t--)
    {
        cin >> a1 >> k;

        ak = a1, lak = -1;
        for (i = 1; i < k; i++)
        {
            ak += min_digit_of(ak) * max_digit_of(ak);
            if (ak == lak)
                break;
            lak = ak;
        }

        cout << ak << endl;
    }

    return 0;
}

long long min_digit_of(long long n)
{
    long long ans = INT_MAX, c;

    while (1)
    {
        c = n % 10;
        if (c < ans)
            ans = c;
        n /= 10;
        if (n <= 0)
            break;
    }

    return ans;
}

long long max_digit_of(long long n)
{
    long long ans = INT_MIN, c;

    while (1)
    {
        c = n % 10;
        if (c > ans)
            ans = c;
        n /= 10;
        if (n <= 0)
            break;
    }

    return ans;
}
