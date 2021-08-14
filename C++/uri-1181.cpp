// URI 1181: https://www.urionlinejudge.com.br/judge/en/problems/view/1181

#include <iostream>
#include <iomanip>

using namespace std;

int main() {
  float M[12][12], sumResult = 0;
  int line;
  cin >> line;
  char operation;
  cin >> operation;
  for (int i = 0; i < 12; i++) {
    for (int j = 0; j < 12; j++) {
      cin >> M[i][j];
      if (i == line) sumResult += M[i][j];
    }
  }
  cout.precision(1);
  if (operation == 'S')
    cout << fixed << sumResult << endl;
  else
    cout << fixed << sumResult/12 << endl;

  return 0;
}
