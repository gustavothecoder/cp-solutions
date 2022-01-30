#include <iostream>

using namespace std;

int main()
{
    int rides_plan, special_cov, price_common, price_special, spent;
    cin >> rides_plan >> special_cov >> price_common >> price_special;

    int common_price_per_ride = price_common;
    int special_price_per_ride = price_special / special_cov;

    if (special_price_per_ride < common_price_per_ride)
    {
        spent = (rides_plan / special_cov) * price_special;
        spent += min((rides_plan % special_cov) * price_common, price_special);
    }
    else
    {
        spent = rides_plan * price_common;
    }

    cout << spent << endl;

    return 0;
}
