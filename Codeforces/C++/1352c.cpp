#include <iostream>

using namespace std;

int main() {
    int test_count;
    cin >> test_count;
    int div, target, ans;
    for (int i = 0; i < test_count; i++)
    {
        cin >> div >> target;
        ans = ((target - 1)/(div - 1)) + target;
        cout << ans << endl;
    }

    return 0;
}
