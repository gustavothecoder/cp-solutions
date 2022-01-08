// URI 1064: https://www.urionlinejudge.com.br/judge/en/problems/view/1064

#include<iostream>
#include<iomanip>

using namespace std;

const int NUMBER_OF_INPUTS = 6;

int main() {
  float input, positiveNumberSum = 0;
  int numberOfPositiveNumbers = 0;
  for(int i = 0; i < NUMBER_OF_INPUTS; i++) {
    cin >> input;
    if (input > 0) {
      numberOfPositiveNumbers++;
      positiveNumberSum += input;
    } 
  }
  cout << numberOfPositiveNumbers << " valores positivos" << endl;
  cout.precision(1);
  cout << fixed << positiveNumberSum / numberOfPositiveNumbers << endl;

  return 0;
}
