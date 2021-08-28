// URI 1759: https://www.urionlinejudge.com.br/judge/en/problems/view/1759

#include <iostream>

using namespace std;

int main() {
  int n;
  cin >> n;
  for (int i = 0; i < n; i++) {
    if (i != n - 1)
      cout << "Ho ";
    else
      cout << "Ho!" << endl;
  }

  return 0;
}
