// URI 1182: https://www.urionlinejudge.com.br/judge/en/problems/view/1182

#include <iostream>
#include <iomanip>

using namespace std;

const int NUMBER_OF_ELEMENTS = 12;

int main() {
  float M[NUMBER_OF_ELEMENTS][NUMBER_OF_ELEMENTS], sumResult = 0;
  int c;
  cin >> c;
  char T;
  cin >> T;
  for (int i = 0; i < NUMBER_OF_ELEMENTS; i++) {
    for (int j = 0; j < NUMBER_OF_ELEMENTS; j++) {
      cin >> M[i][j];
      if (j == c) sumResult += M[i][j];
    }
  }
  cout.precision(1);
  if (T == 'S')
    cout << fixed << sumResult << endl;
  else
    cout << fixed << sumResult/NUMBER_OF_ELEMENTS << endl;

  return 0;
}
