#include <iostream>

using namespace std;

int main()
{
    int sz;
    cin >> sz;

    int numbers[sz], input, i, ones_count = 0;
    for (i = 0; i < sz; i++)
    {
        cin >> input;
        if (input == 1)
            ones_count++;
        numbers[i] = input == 0 ? 1 : -1;
    }

    int current_max = numbers[0], final_max = numbers[0];
    for (i = 1; i < sz; i++)
    {
        current_max = max(current_max + numbers[i], numbers[i]);
        if (current_max > final_max)
            final_max = current_max;
    }

    cout << final_max + ones_count << endl;

    return 0;
}
