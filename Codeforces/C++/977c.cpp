#include <iostream>
#include <algorithm>

using namespace std;

int main()
{
    int sz, max, ans;
    cin >> sz >> max;

    int arr[sz];
    for (int i = 0; i < sz; i++)
        cin >> arr[i];

    sort(arr, arr + sz);

    if (max == 0 )
        ans = arr[0] - 1;
    else if (max == sz || arr[max - 1] != arr[max])
        ans = arr[max - 1];
    else
        ans = -1;

    if (ans < 1 || ans > 1000 * 1000 * 1000)
        ans = -1;

    cout << ans << endl;

    return 0;
}
