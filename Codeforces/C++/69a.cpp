#include <iostream>

using namespace std;

int main()
{
    int n_of_vectors;
    cin >> n_of_vectors;
    int temp, x, y, z, i;
    x = 0, y = 0, z = 0;

    for (i = 0; i < n_of_vectors; i++)
    {
        cin >> temp;
        x += temp;
        cin >> temp;
        y += temp;
        cin >> temp;
        z += temp;
    }

    if (x == 0 && y == 0 && z == 0)
        cout << "YES";
    else
        cout << "NO";
    cout << endl;

    return 0;
}
