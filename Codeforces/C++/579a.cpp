#include <iostream>

using namespace std;

int main()
{
    long long x;
    cin >> x;

    cout << __builtin_popcount(x) << endl;

    return 0;
}
