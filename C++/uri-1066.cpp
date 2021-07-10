// URI 1066: https://www.urionlinejudge.com.br/judge/en/problems/view/1066

#include<iostream>

using namespace std;

const int NUMBER_OF_INPUTS = 5;

int main() {
  int input;
  int numberOfEven = 0, numberOfOdd = 0, numberOfPositive = 0, numberOfNegative = 0;
  for(int i = 0; i < NUMBER_OF_INPUTS; i++) {
    cin >> input;
    if (input % 2 == 0) 
      numberOfEven++;
    else
      numberOfOdd++;
    
    if (input > 0)
      numberOfPositive++;
    else if (input < 0)
      numberOfNegative++;
  } 
  cout << numberOfEven << " valor(es) par(es)" << endl;
  cout << numberOfOdd << " valor(es) impar(es)" << endl;
  cout << numberOfPositive << " valor(es) positivo(s)" << endl;
  cout << numberOfNegative << " valor(es) negativo(s)" << endl;

  return 0;
}
