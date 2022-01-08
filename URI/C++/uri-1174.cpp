// URI 1174: https://www.urionlinejudge.com.br/judge/en/problems/view/1174

#include<iostream>
#include<iomanip>

using namespace std;

const int NUMBER_OF_ELEMENTS = 100;

int main() {
  float input;
  cout.precision(1);
  for (int i = 0; i < NUMBER_OF_ELEMENTS; i++) {
    cin >> input;
    if (input <= 10) cout << "A[" << i << "] = " << fixed << input << endl;
  }

  return 0;
}
