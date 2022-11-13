#include <iostream>
#include <math.h>

using namespace std;

int main()
{
    int test_cases;
    cin >> test_cases;

    long long board_size, ans, i;
    while (test_cases--)
    {
        cin >> board_size;

        if (board_size == 1)
        {
            cout << 0 << endl;
            continue;
        }

        ans = 0;
        for (i = 3; i <= board_size; i++)
        {
            if (i % 2 == 0)
                continue;

            ans += pow((i - 1) / 2, 2);
        }
        ans *= 8;

        cout << ans << endl;
    }

    return 0;
}
