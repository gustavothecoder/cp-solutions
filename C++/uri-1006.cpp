// URI 1006: https://www.urionlinejudge.com.br/judge/en/problems/view/1006

#include <iostream>
#include <iomanip>

using namespace std;

const int A_WEIGHT = 2;
const int B_WEIGHT = 3;
const int C_WEIGHT = 5;

int main() {
  float a, b, c;
  cin >> a;
  cin >> b;
  cin >> c;
  cout.precision(1);
  cout << "MEDIA = "  << fixed << ((a*A_WEIGHT) + (b*B_WEIGHT) + (c*C_WEIGHT)) / (A_WEIGHT + B_WEIGHT + C_WEIGHT) << endl;
  return 0;
}
