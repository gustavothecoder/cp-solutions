#include <iostream>
#include <string>

using namespace std;

int main()
{
    int n_goals;
    cin >> n_goals;

    int score_a = 0, score_b = 0;
    string temp, team_a, team_b;
    while (n_goals--)
    {
        cin >> temp;
        if (team_a.size() == 0)
        {
            team_a = temp;
            score_a++;
        }
        else if (team_a.compare(temp) != 0 && team_b.size() == 0)
        {
            team_b = temp;
            score_b++;
        }
        else
        {
            team_a.compare(temp) == 0 ? score_a++ : score_b++;
        }
    }

    if (score_a > score_b)
        cout << team_a << endl;
    else
        cout << team_b << endl;

    return 0;
}
