// URI 1065: https://www.urionlinejudge.com.br/judge/en/problems/view/1065

#include<iostream>

using namespace std;

const int NUMBER_OF_INPUTS = 5;

int main() {
  int input;
  int numberOfEvenNumbers = 0;
  for(int i = 0; i < NUMBER_OF_INPUTS; i++) {
    cin >> input;
    if (input % 2 == 0) numberOfEvenNumbers++;
  } 
  cout << numberOfEvenNumbers << " valores pares" << endl;

  return 0;
}
