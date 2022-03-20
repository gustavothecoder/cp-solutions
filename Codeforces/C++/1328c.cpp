#include <iostream>
#include <string>

using namespace std;

int main()
{
    int tests;
    cin >> tests;
    int sz, i, should_balance = 0;
    string number;
    char current;
    while (tests-- > 0)
    {
        cin >> sz >> number;
        string half1(sz, '0'), half2(sz, '0');
        for (i = 0; i < sz; i++)
        {
            current = number[i];
            if (current == '1')
            {
                if (!should_balance)
                {
                    half1[i] = '1';
                    should_balance = 1;
                }
                else
                {
                    half2[i] = '1';
                }
            }
            else if (current == '2')
            {
                if (!should_balance)
                {
                    half1[i] = '1';
                    half2[i] = '1';
                }
                else
                {
                    half2[i] = '2';
                }
            }
        }
        cout << half1 << endl << half2 << endl;
        should_balance = 0;
    }
    return 0;
}
