#include <iostream>
#include <map>

using namespace std;

int main()
{
    int tests;
    cin >> tests;
    int map_sz, i, map_input, diff;
    long long ans = 0;
    map<int, int> map;
    while (tests-- > 0)
    {
        cin >> map_sz;
        for (i = 0; i < map_sz; i++)
        {
            cin >> map_input;
            diff = map_input - i;
            if (map.find(diff) == map.end())
            {
                map[diff] = 1;
            }
            else
            {
                ans += map[diff];
                map[diff]++;
            }
        }
        cout << ans << endl;
        map.clear();
        ans = 0;
    }

    return 0;
}
