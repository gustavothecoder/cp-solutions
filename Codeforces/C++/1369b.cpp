#include <iostream>
#include <string>

using namespace std;

int main()
{
    int t;
    cin >> t;

    int n, z, o, i;
    string s;
    while (t--)
    {
        z = 0, o = z;

        cin >> n >> s;

        if (n < 2)
        {
            cout << s[0] << endl;
            continue;
        }

        i = 0;
        while (s[i] == '0')
            i++, z++;
        i = n - 1;
        while (s[i] == '1')
            i--, o++;
        if (z + o != n)
            z++;

        while (z--)
            cout << '0';
        while (o--)
            cout << '1';
        cout << endl;
    }

    return 0;
}
