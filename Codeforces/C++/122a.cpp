#include <iostream>

using namespace std;

static int is_a_lucky_number(int n);

int main()
{
    int n;
    cin >> n;

    if (is_a_lucky_number(n))
    {
        cout << "YES" << endl;
    }
    else
    {
        int divider = 4, almost_lucky = 0;
        while (n > divider)
        {
            if (n % divider == 0)
            {
                almost_lucky = 1;
                break;
            }
            else
            {
                divider++;
                while (!is_a_lucky_number(divider))
                    divider++;
            }
        }

        if (almost_lucky)
            cout << "YES";
        else
            cout << "NO";
        cout << endl;
    }

    return 0;
}

static int is_a_lucky_number(int n)
{
    int temp_n = n, n_sz = 0, lucky_sz = 0, divider = 10;
    while(temp_n > 0)
    {
        n_sz++;
        if (temp_n % divider == 4 || temp_n % divider == 7)
            lucky_sz++;

        temp_n /= divider;
    }

    if (n_sz == lucky_sz)
        return 1;
    else
        return 0;
}
