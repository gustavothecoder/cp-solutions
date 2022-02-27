#include <iostream>
#include <vector>

using namespace std;

int main()
{
    int cases_count, i;
    cin >> cases_count;
    int n_elements, j, current, last;
    vector<int> choices;
    for (i = 0; i < cases_count; i++)
    {
        cin >> n_elements;
        cin >> current;
        choices.push_back(current);
        for (j = 1; j < n_elements; j++)
        {
            cin >> current;
            last = choices.back();
            if (((last > 0 && current < 0) || (last < 0 && current > 0)))
            {
                choices.push_back(current);
            }
            else if (current > last)
            {
                choices.pop_back();
                choices.push_back(current);
            }
        }
        long long result = 0;
        for (j = choices.size(); j > 0; j--)
        {
            result += choices.back();
            choices.pop_back();
        }
        cout << result << endl;
        choices.clear();
    }
    return 0;
}
