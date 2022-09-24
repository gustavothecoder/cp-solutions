#include <iostream>

using namespace std;

int main()
{
    int a, b, c;
    cin >> a >> b >> c;

    int temp, ans = a + b + c;
    temp = a * b * c;
    if (temp > ans)
        ans = temp;
    temp = a + b * c;
    if (temp > ans)
        ans = temp;
    temp = (a + b) * c;
    if (temp > ans)
        ans = temp;
    temp = a * b + c;
    if (temp > ans)
        ans = temp;
    temp = a * (b + c);
    if (temp > ans)
        ans = temp;

    cout << ans << endl;

    return 0;
}
