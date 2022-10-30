#include <iostream>

using namespace std;

int main()
{
    int steps, multiple_of;
    cin >> steps >> multiple_of;

    int lower_bould = (steps + 1) / 2;
    int ans = (lower_bould + multiple_of - 1) / multiple_of * multiple_of;
    if (ans > steps)
        ans = -1;

    cout << ans << endl;

    return 0;
}
