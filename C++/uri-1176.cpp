// URI 1176: https://www.urionlinejudge.com.br/judge/en/problems/view/1176

#include <iostream>
#include <algorithm>

using namespace std;

const int NUMBER_OF_ELEMENTS = 61;

void initializeFibonacciArray(unsigned long long fibonacci[]) {
  fill_n(fibonacci, NUMBER_OF_ELEMENTS, -1);
  fibonacci[0] = 0;
  fibonacci[1] = 1;
  fibonacci[2] = 1;
}

unsigned long long calculateFibonacciFor(int number, unsigned long long fibonacci[]) {
  if (fibonacci[number] != -1) return fibonacci[number];
  fibonacci[number] = calculateFibonacciFor(number - 1, fibonacci) + calculateFibonacciFor(number - 2, fibonacci);
  return fibonacci[number];
}

int main() {
  int t, input;
  unsigned long long fibonacci[NUMBER_OF_ELEMENTS];
  initializeFibonacciArray(fibonacci);
  cin >> t;
  for (int i = 0; i < t; i++) {
    cin >> input;
    cout << "Fib(" << input << ") = " << calculateFibonacciFor(input, fibonacci) << endl;
  }

  return 0;
}
