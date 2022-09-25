#include <iostream>

using namespace std;

int main()
{
    char str[101] = {0};
    char c;
    int i = 0, upper_counter = 0, lower_counter = 0;
    while (cin.get(c))
    {
        if (c == '\n')
            break;

        if (isupper(c))
            upper_counter++;
        else
            lower_counter++;

        str[i] = c;
        i++;
    }

    if (((upper_counter + lower_counter) == upper_counter) || (lower_counter == 1 && islower(str[0])))
    {
        for (i = 0; i < upper_counter + lower_counter; i++)
        {
            if (islower(str[i]))
                str[i] = toupper(str[i]);
            else
                str[i] = tolower(str[i]);
        }
    }

    cout << str << endl;

    return 0;
}
