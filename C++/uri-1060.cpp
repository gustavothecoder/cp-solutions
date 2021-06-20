// URI 1060: https://www.urionlinejudge.com.br/judge/en/problems/view/1060

#include<iostream>

using namespace std;

const int NUMBER_OF_INPUTS = 6;

int main() {
  float input;
  int numberOfPositiveNumbers = 0;
  for(int i = 0; i < NUMBER_OF_INPUTS; i++) {
    cin >> input;
    if (input > 0) numberOfPositiveNumbers++;
  }
  cout << numberOfPositiveNumbers << " valores positivos" << endl;

  return 0;
}
