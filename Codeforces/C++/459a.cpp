#include <iostream>
#include <stdlib.h>

using namespace std;

int main()
{
    int tree1[2], tree2[2], tree3[2], tree4[2];
    cin >> tree1[0] >> tree1[1] >> tree2[0] >> tree2[1];
    int diffx = abs(tree1[0] - tree2[0]), diffy = abs(tree1[1] - tree2[1]);
    if (diffx != diffy && (tree1[0] != tree2[0] && tree1[1] != tree2[1]))
    {
        cout << -1 << endl;
        return 0;
    }
    else if (tree1[0] == tree2[0])
    {
        tree3[0] = tree1[0] + diffy, tree3[1] = tree1[1];
        tree4[0] = tree2[0] + diffy, tree4[1] = tree2[1];
    }
    else if (tree1[1] == tree2[1])
    {
        tree3[0] = tree1[0], tree3[1] = tree1[1] + diffx;
        tree4[0] = tree2[0], tree4[1] = tree2[1] + diffx;
    }
    else
    {
        tree3[0] = tree1[0], tree3[1] = tree2[1];
        tree4[0] = tree2[0], tree4[1] = tree1[1];
    }
    cout << tree3[0] << ' ' << tree3[1] << ' ' << tree4[0] << ' ' << tree4[1] << endl;
    return 0;
}
