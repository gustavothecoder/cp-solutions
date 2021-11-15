// URI 2533: https://www.urionlinejudge.com.br/judge/en/problems/view/2533

#include <iostream>
#include <iomanip>

using namespace std;

const int MAX = 40;

int main() {
  int m, n, c;
  double dividend, divisor;
  cout.precision(4);
  while (cin >> m) {
    for (int i = 0; i < m; i++) {
      cin >> n >> c;
      dividend += n * c;
      divisor += c * 100;
    }
    cout << fixed << dividend / divisor << endl;
    dividend = 0;
    divisor = 0;
  }

  return 0;
}
