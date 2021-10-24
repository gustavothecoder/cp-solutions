// URI 1864: https://www.urionlinejudge.com.br/judge/en/problems/view/1864

#include<iostream>

using namespace std;

const string QUOTE = "LIFE IS NOT A PROBLEM TO BE SOLVED";

int main() {
  int n;
  cin >> n;
  cout << QUOTE.substr(0, n) << endl;

  return 0;
}
