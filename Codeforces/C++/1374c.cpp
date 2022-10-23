#include <iostream>

using namespace std;

int main()
{
    int n_tests;
    cin >> n_tests;

    int str_sz, i, lb_counter, m_counter;
    char c_char;
    while (n_tests--)
    {
        lb_counter = 0, m_counter = 0;

        cin >> str_sz;
        for (i = 0; i < str_sz; i++)
        {
            cin >> c_char;
            if (c_char == '(')
                lb_counter++;
            else if (lb_counter)
                lb_counter--;
            else
                m_counter++;
        }

        cout << m_counter << endl;
    }

    return 0;
}
