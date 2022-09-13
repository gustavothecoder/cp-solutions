#include <iostream>
#include <math.h>

using namespace std;

int main()
{
    double n, m, a;
    cin >> n >> m >> a;

    long long ans = (long long)(ceil(n/a) * ceil(m/a));
    cout << ans << endl;

    return 0;
}
