#include <iostream>

using namespace std;

int main()
{
    int n_cells, t_cell;
    cin >> n_cells >> t_cell;

    int i = 1;
    int cells[n_cells];
    for (i; i < n_cells; i++)
        cin >> cells[i];

    i = 1;
    int ans = 0;
    for (i; i < t_cell; i += cells[i])
        ;
    if (i == t_cell)
        ans = 1;

    cout << (ans ? "YES" : "NO") << endl;

    return 0;
}
