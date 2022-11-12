#include <iostream>
#include <math.h>

using namespace std;

int main()
{
    long long n;
    cin >> n;

    int ans;
    if (n == 0)
        ans = 1;
    else if (n % 4 == 0)
        ans = 6;
    else if (n % 4 == 1)
        ans = 8;
    else if (n % 4 == 2)
        ans = 4;
    else if (n % 4 == 3)
        ans = 2;

    cout << ans << endl;
}
