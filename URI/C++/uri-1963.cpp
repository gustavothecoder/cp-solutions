// URI 1963: https://www.urionlinejudge.com.br/judge/en/problems/view/1963

#include <iostream>
#include <iomanip>

using namespace std;

int main() {
  double a, b, increase;
  cin >> a >> b;
  increase = ((b - a) / a) * 100;
  cout.precision(2);
  cout << fixed << increase << '%' << endl;

  return 0;
}
