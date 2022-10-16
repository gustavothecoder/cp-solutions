#include <iostream>

using namespace std;

int main()
{
    int n_candles, n_recycle;
    cin >> n_candles >> n_recycle;

    int b_candles = 0, ans = 0;
    while (n_candles)
    {
        b_candles += n_candles;
        ans += n_candles;
        n_candles = b_candles / n_recycle;
        b_candles = b_candles % n_recycle;
    }

    cout << ans << endl;

    return 0;
}
