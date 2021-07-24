// URI 1172: https://www.urionlinejudge.com.br/judge/en/problems/view/1172

#include<iostream>

using namespace std;

const int NUMBER_OF_ELEMENTS = 10;

int main() {
  int input, x[NUMBER_OF_ELEMENTS];
  for(int i =0; i < NUMBER_OF_ELEMENTS; i++) {
    cin >> input;
    if (input == NULL || input < 0)
      x[i] = 1;
    else
      x[i] = input;
    cout << "X[" << i << "] = " << x[i] << endl;
  }

  return 0;
}
