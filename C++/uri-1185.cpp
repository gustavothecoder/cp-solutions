// URI 1185: https://www.urionlinejudge.com.br/judge/en/problems/view/1185

#include <iostream>
#include <iomanip>

using namespace std;

const int ARRAY_SIZE = 12;
const int NUMBER_OF_ELEMENTS_ABOVE_THE_MAIN_DIAGONAL = 66;

int main() {
  float M[ARRAY_SIZE][ARRAY_SIZE], sumResult = 0;
  char O;
  cin >> O;
  for (int i = 0; i < ARRAY_SIZE; i++) {
    for (int j = 0; j < ARRAY_SIZE; j++) {
      cin >> M[i][j];
      if ((i + j) <= ARRAY_SIZE - 2) sumResult += M[i][j];
    }
  }
  cout.precision(1);
  if (O == 'S')
    cout << fixed << sumResult << endl;
  else
    cout << fixed << sumResult/NUMBER_OF_ELEMENTS_ABOVE_THE_MAIN_DIAGONAL << endl;

  return 0;
}
