// URI 1827: https://www.urionlinejudge.com.br/judge/en/problems/view/1827

#include <iostream>

using namespace std;

int main() {
  int n, newBegin, newEnd;
  while (cin >> n) {
    int array[n][n] = {};
    for (int i = 0; i < n; i++) {
      array[i][i] = 2;
      array[i][n - (i + 1)] = 3;
    }
    newBegin = n / 3;
    newEnd = n - newBegin;
    for (int i = newBegin; i < newEnd; i++) {
      for (int j = newBegin; j < newEnd; j++) {
        if (i == n / 2 && j == n / 2)
          array[i][j] = 4;
        else
          array[i][j] = 1;
      }
    }
    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++)
          cout << array[i][j];
      cout << endl;
    }
    cout << endl;
  }

  return 0;
}
