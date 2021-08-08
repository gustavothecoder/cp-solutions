// URI 1175: https://www.urionlinejudge.com.br/judge/en/problems/view/1175

#include<iostream>

using namespace std;

const int NUMBER_OF_ELEMENTS = 20;

int main() {
  int N[NUMBER_OF_ELEMENTS];
  for (int i = 1; i <= NUMBER_OF_ELEMENTS; i++)
    cin >> N[NUMBER_OF_ELEMENTS - i];
  for (int i = 0; i < NUMBER_OF_ELEMENTS; i++)
    cout << "N[" << i << "] = " << N[i] << endl;

  return 0;
}
