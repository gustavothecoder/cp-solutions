#include <iostream>

using namespace std;

int main()
{
    char hello_example[] = "hello", ans[100] = { '\0' }, temp_input;
    int i = 0;
    while (cin.get(temp_input))
    {
        if (temp_input == '\n')
            break;

        if (temp_input == hello_example[i])
        {
            ans[i] = temp_input;
            i++;
        }
    }

    if (i == 5)
        cout << "YES";
    else
        cout << "NO";
    cout << endl;

    return 0;
}
