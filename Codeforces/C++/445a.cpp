#include <iostream>

#define GOOD '.'
#define BAD '-'
#define BLACK 'B'
#define WHITE 'W'

using namespace std;

int main()
{
    int n, m;
    cin >> n >> m;
    char board[n][m];

    int i, j;
    for (i = 0; i < n; i++)
    {
        for (j = 0; j < m; j++)
        {
            cin >> board[i][j];
            if (board[i][j] == GOOD)
            {
                if ((i + j) % 2 == 0)
                    board[i][j] = BLACK;
                else
                    board[i][j] = WHITE;
            }
        }
    }

    for (i = 0; i < n; i++)
    {
        for (j = 0; j < m; j++)
            cout << board[i][j];
        cout << endl;
    }

    return 0;
}
