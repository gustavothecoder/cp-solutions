#include <iostream>

using namespace std;

int sequence_was_formed(char start, char mid, char end);

int main()
{
    int test_count;
    cin >> test_count;

    string str;
    char current;
    int i, str_sz, repetition_counter, answer;
    while (test_count--)
    {
        cin >> str;
        str_sz = str.size(), repetition_counter = 0, answer = 200001;
        for (i = 1; i < str_sz; i++)
        {
            if (repetition_counter == 0)
            {
                current = str[i];
                repetition_counter++;
            }
            else if (str[i] == current)
            {
                repetition_counter++;
            }
            else
            {
                if (sequence_was_formed(str[i - (repetition_counter + 1)], current, str[i]))
                    answer = min(answer, repetition_counter + 2);
                repetition_counter = 0, i--;
            }
        }

        if (answer == 200001)
            answer = 0;
        cout << answer << endl;
    }

    return 0;
}

int sequence_was_formed(char start, char mid, char end)
{
    return start != mid && (end != start && end != mid) ? 1 : 0;
}
