// URI 1848: https://www.urionlinejudge.com.br/judge/en/problems/view/1848

#include <iostream>

using namespace std;

void printAndResetResult(int* result);
void sum(string input, int* result);

int main() {
  string input;
  int result = 0;
  while (getline(cin, input)) {
    if (input.compare("caw caw") == 0) 
      printAndResetResult(&result);
    else
      sum(input, &result);
  }

  return 0;
}

void printAndResetResult(int* result) {
  cout << *result << endl;
  *result = 0;
}

void sum(string input, int* result) {
  if (input.compare("---") == 0)
    return;
  else if (input.compare("--*") == 0)
    *result += 1;
  else if (input.compare("-*-") == 0)
    *result += 2;
  else if (input.compare("-**") == 0)
    *result += 3;
  else if (input.compare("*--") == 0)
    *result += 4;
  else if (input.compare("*-*") == 0)
    *result += 5;
  else if (input.compare("**-") == 0)
    *result += 6;
  else if (input.compare("***") == 0)
    *result += 7;
  else
    return;
}
