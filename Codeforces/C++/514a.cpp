#include <iostream>

using namespace std;

int main()
{
    unsigned long long number, answer;
    cin >> number;
    answer = number;

    int digit, inverted;
    unsigned long long multiplier = 1;
    while (1)
    {
        if (number == 9)
            break;

        digit = number % 10;
        if (digit >= 5)
        {
            inverted = 9 - digit;
            answer -= (digit - inverted) * multiplier;
        }

        number /= 10;
        multiplier *= 10;
        if (number < 1)
            break;
    }

    cout << answer << endl;

    return 0;
}
