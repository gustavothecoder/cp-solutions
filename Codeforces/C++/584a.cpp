#include <iostream>
#include <vector>

using namespace std;

int main()
{
    int n_dig, div;
    cin >> n_dig >> div;

    if (n_dig == 1 && div == 10)
    {
        cout << -1 << endl;
        return 0;
    }

    if (div == 10)
    {
        for (int i = 0; i < n_dig - 1; i++)
            cout << '1';
        cout << '0' << endl;;
    }
    else
    {
        char c_div = div + '0';
        for (int i = 0; i < n_dig; i++)
            cout << c_div;
        cout << endl;
    }

    return 0;
}
