// URI 1173: https://www.urionlinejudge.com.br/judge/en/problems/view/1173

#include<iostream>

using namespace std;

const int NUMBER_OF_ELEMENTS = 10;

int main() {
  int N[NUMBER_OF_ELEMENTS], input;
  cin >> input;
  N[0] = input;
  cout << "N[" << 0 << "] = " << N[0] << endl;
  for (int i = 1; i < NUMBER_OF_ELEMENTS; i++) {
    N[i] = N[i - 1] * 2;
    cout << "N[" << i << "] = " << N[i] << endl;
  }

  return 0;
}
