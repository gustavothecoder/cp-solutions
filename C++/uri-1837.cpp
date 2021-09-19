// URI 1837: https://www.urionlinejudge.com.br/judge/en/problems/view/1837

#include <iostream>

using namespace std;

int main() {
  int a, b, absB, newA, q, r;
  cin >> a >> b;
  if (a < 0) {
    absB = b;
    if (b < 0) absB = b * -1;
    for (r = 0; r < absB; r++) {
      newA = a - r;
      if (newA % b == 0) break;
    }
    q = newA / b;
  } else {
    q = a / b;
    r = a % b;
  }
  cout << q << ' ' << r << endl;

  return 0;
}
