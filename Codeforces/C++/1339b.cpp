#include <iostream>
#include <algorithm>

using namespace std;

int main()
{
    int test_cases;
    cin >> test_cases;

    int numbers_sz, i, j, k;
    while (test_cases--)
    {
        cin >> numbers_sz;
        int numbers[numbers_sz];
        for (i = 0; i < numbers_sz; i++)
            cin >> numbers[i];

        sort(numbers, numbers + numbers_sz);

        int ans[numbers_sz];
        for (i = 0, j = numbers_sz - 1, k = j; i < j; i++, j--, k -= 2)
        {
            ans[k] = numbers[j];
            ans[k - 1] = numbers[i];
        }
        if(i==j)
		 ans[0] = numbers[i];

        for (i = 0; i < numbers_sz - 1; i++)
            cout << ans[i] << ' ';
        cout << ans[numbers_sz - 1] << endl;
    }

    return 0;
}
