// URI 1005: https://www.urionlinejudge.com.br/judge/en/problems/view/1005

#include<iostream>
#include <iomanip>

using namespace std;

const double A_WEIGHT = 3.5;
const double B_WEIGHT = 7.5;

int main() {
  double a, b;
  cin >> a;
  cin >> b;
  cout.precision(5);
  cout << "MEDIA = " << fixed << ((a * A_WEIGHT) + (b * B_WEIGHT)) / (A_WEIGHT + B_WEIGHT) << endl;
  return 0;
}
